<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class StudentCourse
 * 
 * @property int $id
 * @property int|null $student_id
 * @property string|null $course_name
 * @property string|null $institution
 * @property Carbon|null $start_date
 * @property Carbon|null $end_date
 *
 * @package App\Models
 */
class StudentCourse extends Model
{
	protected $table = 'student_courses';
	public $timestamps = false;

	protected $casts = [
		'student_id' => 'int'
	];

	protected $dates = [
		'start_date',
		'end_date'
	];

	protected $fillable = [
		'student_id',
		'course_name',
		'institution',
		'start_date',
		'end_date'
	];

    protected $appends = ['student'];

    public function getStudentAttribute()
    {
        return $this->belongsTo(Student::class, 'student_id')->first();
    }
}
