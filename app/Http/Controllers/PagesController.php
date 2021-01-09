<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Models\Post;

class PagesController extends Controller
{
    public function show($slug){
        $page= Post::where('slug',$slug)->first();
        var_dump($page);
        // return view ('page.show',['page'=> $page]);
        
    }
}
