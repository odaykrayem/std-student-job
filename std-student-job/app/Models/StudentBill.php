<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class StudentBill
 *
 * @property int $id
 * @property int|null $student_id
 * @property float|null $amount
 * @property int|null $is_paid
 * @property Carbon|null $created_at
 *
 * @package App\Models
 */
class StudentBill extends Model
{
    protected $table = 'student_bills';
    public $timestamps = false;

    protected $casts = [
        'student_id' => 'int',
        'amount' => 'float',
        'is_paid' => 'int'
    ];

    protected $fillable = [
        'student_id',
        'amount',
        'is_paid'
    ];

    protected $appends = ['has_bill', 'student'];

    public function getHasBillAttribute()
    {
        if ($this->is_paid) {
            return true;
        } else {
            return false;
        }
    }


    public function getStudentAttribute()
    {
        return $this->belongsTo(Student::class, 'student_id')->first();
    }

}
