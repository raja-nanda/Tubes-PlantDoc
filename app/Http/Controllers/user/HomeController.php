<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Post;
use App\Models\LikePost;
use DB;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function tanaman_obat(){
        $posts = Post::where('category_id','=',1)->Orderby('created_at','desc')->paginate(6);
        
        return view('users.pages.home', compact('posts'));
    }

    public function tanaman_hias(){
        $posts = Post::where('category_id','=',2)->Orderby('created_at','desc')->paginate(6);
        
        return view('users.pages.home', compact('posts'));
    }
    
    public function index()
    {
        $posts = Post::orderBy('created_at','desc')->paginate(6);
        
        
        return view('users.pages.home',compact('posts'));
    }
    
    // sudah benar
    public function PostLike(Request $request ){
    
            $like_posts=LikePost::where('post_id','=',$request->idpost)->where('user_id','=',$request->iduser)->get();

                    if ($like_posts->isEmpty()){
                            DB::table('like_post')->insert([

                                        'post_id' => $request->idpost,
                                        'user_id' => $request->iduser,
                                        'like_status' => 1,
                                        "created_at" =>  date('Y-m-d H:i:s'),
                                        "updated_at" => date('Y-m-d H:i:s'),
                                    ]);
                            return back();
                            // var_dump($test);
                    }
                    else{
                        foreach ($like_posts as $like_post)
                        {
                           
                            if($like_post->like_status == 1 && $like_post->post_id == $request->idpost){
                                DB::table('like_post')
                                        ->where('id', $like_post->id)
                                        ->where('post_id',$request->idpost)
                                        ->where('user_id',$request->iduser)
                                        ->update(array('like_status' => 0,
                                        ));
                                return back();    
                            }elseif($like_post->like_status == 0 && $like_post->post_id == $request->idpost){
                                $test2=DB::table('like_post')
                                ->where('id', $like_post->id)
                                ->where('post_id',$request->idpost)
                                ->where('user_id',$request->iduser)
                                ->update(array('like_status' => 1,));
                                 return back();   
                            }else{
                                DB::table('like_post')->insert([

                                    'post_id' => $request->idpost,
                                    'user_id' => $request->iduser,
                                    'like_status' => 1,
                                    "created_at" =>  date('Y-m-d H:i:s'),
                                    "updated_at" => date('Y-m-d H:i:s'),
                                    // 'like_post'=>1
                                ]);
                                return back();

                            }
                            // dd($tets2->like_status);
                            return back();
                         }
                         return back();
                    }
        //  dd($like_posts);
            // alert("success");
            // return back();

    }            
    // menampikan postingan dengan komentar
    public function show($slug){

        $page= Post::where('slug',$slug)->first();
        $like_posts=  DB::table('like_post')
        ->select('like_post.id as id_like','like_post.like_status','like_post.post_id')
        ->where('like_post.post_id','=',$page->id)
        ->get();
        // $like_posts= LikePost::with('like_post')->where('post_id','=', $page->id)->get();
        $like = DB::table('like_post')
        ->join('users', 'users.id', '=', 'like_post.user_id')
        ->join('posts', 'posts.id', '=', 'like_post.post_id')
        ->select('like_post.id as id_like','like_post.like_status','users.id as id_user','users.*','posts.*')
        ->where('like_post.post_id','=',$page->id)
        ->where('like_post.like_status','=',1)
        ->get();
        $likes=$like->count();
        $comment = DB::table('comments_post')
        ->join('users', 'users.id', '=', 'comments_post.user_id')
        ->join('posts', 'posts.id', '=', 'comments_post.post_id')
        ->select('comments_post.id as id_comment','comments_post.comment_text','users.id as id_user','users.*','posts.*')
        ->where('comments_post.post_id','=',$page->id)
        ->get();
        return view ('users.Show.index',compact('page','comment','likes','like','like_posts'));
     }

    public function DeleteComment(Request $request){
        $test=DB::table('comments_post')->where('id', $request->id_comment)->delete();
        return back();
    }

    public function PostComment(Request $request ){
        $userid=Auth::user()->id;   
        DB::table('comments_post')->insert([
            'post_id' => $request->idpost,
            'user_id' => $userid,
            'comment_text' => $request->comment,
            "created_at" =>  date('Y-m-d H:i:s'),
            "updated_at" => date('Y-m-d H:i:s'),
        ]);
        return back();
    }

    public function UpdateComment(Request $request ){
        $userid=Auth::user()->id;
        $user_role=Auth::user()->role_id;
        $test=DB::table('comments_post')
            ->where('id',$request->idcomment)
            ->where('post_id',$request->idpost)
            ->update(array('comment_text' => $request->comment,
        ));
        return back();
    }   
    public function registrasi(Request $request){
    
        $registrasi=DB::table('users')->insert([
            'name' => $request->name,
            'role_id' => $request->role_id,
            'email' => $request->email,
            'password'=>bcrypt($request->password),
            'settings'=>'{"locale":"id"}',
            "created_at" =>  date('Y-m-d H:i:s'),
            "updated_at" => date('Y-m-d H:i:s')
        ]);
            return redirect('/admin');
        
            
       
    }
    public function logout(){
        Auth::logout();
        return redirect('/admin');
    }
}
