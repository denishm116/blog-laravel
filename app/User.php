<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Article;
use Qirolab\Laravel\Reactions\Traits\Reacts;
use Qirolab\Laravel\Reactions\Contracts\ReactsInterface;

class User extends Authenticatable implements ReactsInterface
{
    use Reacts;
    use Notifiable;
    protected $guarded = [];
//    protected $fillable = [
//        'name', 'email', 'password', 'image',
//    ];

    protected $hidden = [
        'password', 'remember_token',
    ];

      protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function roles()
    {
        return $this->belongsToMany('App\Role');
    }

  public function articles()
    {
        return $this->hasMany('App\Article');
    }
  public function comments()
    {
        return $this->hasMany('App\Comment');
    }

    public function answers()
    {
        return $this->hasMany('App\Answer');
    }


}
