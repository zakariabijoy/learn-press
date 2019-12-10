<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\Comment;


class Course extends Model
{
    protected $fillable = [
        'name', 'description', 'price', 'author_id', 'image'
    ];

    public  function users(){
      return $this->belongsToMany(User::class, 'user_course');
    }

    public function comments(){
      return $this->hasMany(Comment::class);
    }
}
