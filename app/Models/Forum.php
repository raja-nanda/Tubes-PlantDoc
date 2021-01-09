<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Forum extends Model
{
    use HasFactory;
    protected $table = "forums";

    public function forums_comment(){
        return $this->hasMany(CommentForums::class);
    }

    public function forums_like(){
        return $this->hasMany(LikeForums::class);
    }
    public function user_has_forum(){
        return $this->hasOne(User::class,'id','user_id');
    }
    public function forum_detail(){
        return $this->hasManyThrough(CommentForums::class,User::class,'forum_id','user_id','id','id');
    }

}
