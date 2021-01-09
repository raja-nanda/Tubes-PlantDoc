<?php

namespace App\Models;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommentForums extends Model
{
    use HasFactory;

    protected $table = "comment_forums";
    public function comment_forums(){
        return $this->belongsTo(Forum::class);
    }   
    public function user_forums(){
        return $this->belongsTo(User::class,'user_id','id');
    }
    
}
