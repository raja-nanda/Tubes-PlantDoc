<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LikeForums extends Model
{
    use HasFactory;
    protected $table = "like_forums";

    public function like_forums(){
        return $this->belongsTo(Forum::class);
    }


}
