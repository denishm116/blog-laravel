<?php

namespace App;



use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use Qirolab\Laravel\Reactions\Traits\Reactable;
use Qirolab\Laravel\Reactions\Contracts\ReactableInterface;

class Article extends Model implements ReactableInterface
{
        use Reactable;

    protected $guarded = [];

    public function setSlugAttribute($value) {
        $this->attributes['slug'] = Str::slug( mb_substr($this->title, 0, 40) . "-" . \Carbon\Carbon::now()->format('dmyHi'), '-');
    }

   public function categories()
   {
      return $this->morphToMany('App\Category', 'categoryable');
   }


    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function comments()
    {
        return $this->hasMany('App\Comment');
    }

    public function scopeLastArticles ($query, $count) {
        return $query->orderBy('created_at', 'desc')->take($count)->get();
    }
    public function scopePopularArticles ($query, $count) {
        return $query->orderBy('viewed', 'desc')->take($count)->get();
    }

}
