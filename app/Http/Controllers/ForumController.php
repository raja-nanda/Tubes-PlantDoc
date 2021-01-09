<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Models\Forum;
use App\Models\CommentForums;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use DB;
class ForumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        // forum punya user 
        $GetForums= Forum::with('user_has_forum')->orderBy('created_at','desc')->get();
        // $GetForums= Forum::with('forums_comment')->get();
        $userforum = CommentForums::with('user_forums')->get();
  

        return view ('users.Show.forum_index',compact('GetForums','userforum'));
     

    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        DB::table('forums')->insert([

            'tittle_forum' => $request->tittle_forum,
            'forumtext' => $request->forumtext,
            'user_id' => $request->id_user,
            "created_at" =>  date('Y-m-d H:i:s'),
            "updated_at" => date('Y-m-d H:i:s'),
        ]);
        return back();
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function show(Forum $forum)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function edit_forum(Request $request ){
        // $userid=Auth::user()->id;
        // $user_role=Auth::user()->role_id;
        $test=DB::table('forums')
            ->where('id',$request->id_forum)
            ->where('user_id',$request->id_user)
            ->update(array('forumtext' => $request->forum_text,
            'tittle_forum'=>$request->tittle_forum,
        ));
        return back();
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Forum $forum)
    {
        //
    }

    public function delete_forum(Request $request){
        $test=DB::table('forums')->where('id', $request->id_forum)->delete();
        $test2=DB::table('comment_forums')->where('forum_id',$request->id_forum)->delete();
        return back();
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Forum  $forum
     * @return \Illuminate\Http\Response
     */
    public function destroy(Forum $forum)
    {
        
    }

}
