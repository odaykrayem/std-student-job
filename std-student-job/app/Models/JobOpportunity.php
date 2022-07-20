<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class JobOpportunity
 * 
 * @property int $id
 * @property int|null $advertiser_id
 * @property string|null $title
 * @property string|null $company_name
 * @property string|null $job_location
 * @property string|null $position
 * @property string|null $required_skills
 * @property string|null $details
 * @property Carbon|null $created_at
 *
 * @package App\Models
 */
class JobOpportunity extends Model
{
	protected $table = 'job_opportunities';
	public $timestamps = false;

	protected $casts = [
		'advertiser_id' => 'int'
	];

	protected $fillable = [
		'advertiser_id',
		'title',
		'company_name',
		'job_location',
		'position',
		'required_skills',
		'details'
	];


    protected $appends = ['advertiser'];

    public function getAdvertiserAttribute()
    {
        return $this->belongsTo(Advertiser::class, 'advertiser_id')->first();
    }
}
