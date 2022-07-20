<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

/**
 * Class Student
 * 
 * @property int $id
 * @property string|null $user_name
 * @property string|null $name
 * @property string|null $nick_name
 * @property string|null $phone
 * @property string|null $email
 * @property string|null $password
 * @property Carbon|null $birth_date
 * @property int|null $gender
 * @property int|null $study_type
 * @property string|null $study_place
 * @property string|null $study_start_date
 * @property string|null $study_end_date
 * @property string|null $cv_url
 *
 * @package App\Models
 */
class Student extends Authenticatable
{
	protected $table = 'students';
	public $timestamps = false;

	protected $casts = [
		'gender' => 'int'
	];

	protected $dates = [
		'birth_date'
	];

	protected $hidden = [
		'password'
	];

	protected $appends = ['cv'];

	function getCvAttribute(){
	    $url = json_decode($this->cv_url);
	    if(is_array($url) && sizeof($url)>0){
            $url = 'storage\\'.$url[0]->download_link;
            return $url;
        }else{
	        return $url;
        }

    }

}
