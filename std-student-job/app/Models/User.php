<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

/**
 * Class User
 *
 * @property int $id
 * @property string|null $first_name
 * @property string|null $last_name
 * @property string|null $email
 * @property string|null $phone
 * @property int|null $type
 * @property string|null $password
 * @property string|null $license_photo
 * @property string|null $bio
 * @property string|null $profile_photo_url
 * @property string|null $job_career
 *
 * @package App\Models
 */
class User extends \TCG\Voyager\Models\User
{
    protected $table = 'users';
    public $timestamps = false;

    protected $casts = [
        'type' => 'int'
    ];

    protected $hidden = [
        'password'
    ];

}
