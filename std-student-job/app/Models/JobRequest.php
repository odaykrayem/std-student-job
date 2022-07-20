<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class JobRequest
 *
 * @property int $id
 * @property int|null $job_id
 * @property int|null $student_id
 * @property Carbon|null $created_at
 * @property int|null $status
 *
 * @package App\Models
 */
class JobRequest extends Model
{
    protected $table = 'job_requests';
    public $timestamps = false;

    protected $casts = [
        'job_id' => 'int',
        'student_id' => 'int',
        'status' => 'int'
    ];

    protected $fillable = [
        'job_id',
        'student_id',
        'status'
    ];


    protected $appends = ['job', 'student'];


    public function getJobAttribute()
    {
        return $this->belongsTo(JobOpportunity::class, 'job_id')->first();
    }


    public function getStudentAttribute()
    {
        return $this->belongsTo(Student::class, 'student_id')->first();
    }
}
