<?php

namespace App\Models;
use App\Models\CommentsPost;
use App\Models\Post;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LikePost extends Model
{
    use HasFactory;
    protected $table = "like_post";
    public function like_status()
    {
        return $this->belongsTo(Post::class,'post_id','id');
    }
}
