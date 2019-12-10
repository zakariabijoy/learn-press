<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;

class Course extends Model
{
    protected $fillable = [
        'name', 'description', 'price', 'author_id', 'image'
    ];

    public  function users(){
      return $this->belongsToMany(User::class, 'user_course');
    }
}
