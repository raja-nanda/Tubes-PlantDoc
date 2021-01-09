<?php

namespace App\Http\Controllers;

use App\Models\CommentForums;
use Illuminate\Http\Request;
use DB; 
use Illuminate\Support\Facades\Auth;
class CommentForumsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
    public function edit_comment(Request $request ){
        $test=DB::table('comment_forums')
            ->where('id',$request->id_comment)
            ->where('user_id',$request->id_user)
            ->where('forum_id',$request->id_forum)
            ->update(array('comment_forum' => $request->forum_text_comment,
        ));
        return back();
    }
    public function delete_comment(Request $request){
        $test=DB::table('comment_forums')->where('id', $request->id_comment)->delete();
        return back();
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

            DB::table('comment_forums')->insert([
                    'user_id'=>$request->user_id,
                    'forum_id'=>$request->forum_id,
                    'comment_forum'=>$request->commenttext,
                    'created_at'=>date('Y-m-d H:i:s'),
                    "updated_at" => date('Y-m-d H:i:s'),                
            ]);
            return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CommentForums  $commentForums
     * @return \Illuminate\Http\Response
     */
    public function show(CommentForums $commentForums)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CommentForums  $commentForums
     * @return \Illuminate\Http\Response
     */
    public function edit(CommentForums $commentForums)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CommentForums  $commentForums
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CommentForums $commentForums)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CommentForums  $commentForums
     * @return \Illuminate\Http\Response
     */
    public function destroy(CommentForums $commentForums)
    {
        //
    }
}
