<?php

namespace App\Models;
use App\Models\Post;
use App\Models\LikePost;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommentsPost extends Model
{
    use HasFactory;
    protected $table = "comments_post";
    // public function comments_id(){

    //     return $this->hasMany(Post::class,'id','post_id');
    // }

    public function post()
    {
        return $this->belongsTo(Post::class);
    }
}
