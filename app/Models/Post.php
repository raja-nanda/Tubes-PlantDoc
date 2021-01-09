<?php

namespace App\Models;
use App\Models\CommentsPost;
use App\Models\LikePost;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Post extends Model
{
    use HasFactory;
    protected $table = "posts";

    public function Comments_Post()
    {

        return $this->hasMany(CommentsPost::class,'post_id','id');
    }
    
    public function likes_post()
    {

        return $this->hasMany(LikePost::class,'like_id','id');
    }
    


}
