<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class AdvertiserBill
 *
 * @property int $id
 * @property int|null $advertiser_id
 * @property float|null $amount
 * @property int|null $is_paid
 * @property Carbon|null $created_at
 *
 * @package App\Models
 */
class AdvertiserBill extends Model
{
    protected $table = 'advertiser_bills';
    public $timestamps = false;

    protected $casts = [
        'advertiser_id' => 'int',
        'amount' => 'float',
        'is_paid' => 'int'
    ];

    protected $fillable = [
        'advertiser_id',
        'amount',
        'is_paid'
    ];

    protected $appends = ['has_bill', 'advertiser'];

    public function getHasBillAttribute()
    {
        if ($this->is_paid) {
            return true;
        } else {
            return false;
        }
    }

    public function getAdvertiserAttribute()
    {
        return $this->belongsTo(Advertiser::class, 'advertiser_id')->first();
    }
}
