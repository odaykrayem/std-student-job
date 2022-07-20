<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class StudentInterest
 * 
 * @property int $id
 * @property int|null $user_id
 * @property string|null $interest_name
 *
 * @package App\Models
 */
class StudentInterest extends Model
{
	protected $table = 'student_interests';
	public $timestamps = false;

	protected $casts = [
		'user_id' => 'int'
	];

	protected $fillable = [
		'user_id',
		'interest_name'
	];

    protected $appends = ['student'];

    public function getStudentAttribute()
    {
        return $this->belongsTo(Student::class, 'user_id')->first();
    }
}
