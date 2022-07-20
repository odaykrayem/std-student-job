<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

/**
 * Class Advertiser
 * 
 * @property int $id
 * @property string|null $name
 * @property string|null $phone
 * @property string|null $email
 * @property string|null $password
 * @property string|null $website
 * @property string|null $description
 * @property string|null $address
 * @property string|null $professional_field
 * @property int|null $years_of_incorporation
 *
 * @package App\Models
 */
class Advertiser extends Authenticatable
{
	protected $table = 'advertiser';
	public $timestamps = false;

	protected $casts = [
		'years_of_incorporation' => 'int'
	];

	protected $hidden = [
		'password'
	];

}
