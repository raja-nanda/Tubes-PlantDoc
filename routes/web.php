<?php
use App\Http\Controllers\ForumController;
use App\Http\Controllers\CommentForumsController;
use App\Http\Controllers\user\HomeController;
use App\Http\Controllers\LogoutController;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/registrasi', function () {
    return view('registrasi');
});


Route::get('/',[HomeController::class, 'index']);
// Route::get('/post/{slug}',[HomeController::class,'show']);
Route::get('/post/{slug}',[HomeController::class,'show']);
Route::post('/post-comment',[HomeController::class,'PostComment'])->name("saveComment");
Route::post('/post-like',[HomeController::class,'PostLike'])->name("PostLike");
Route::put('/put-comment',[HomeController::class,'UpdateComment'])->name("updateComment");
Route::get('/del-comment',[HomeController::class,'DeleteComment'])->name("deleteComment");

// tanaman
Route::get('/tanaman-obat',[HomeController::class,'tanaman_obat']);
Route::get('/tanaman-hias',[HomeController::class,'tanaman_hias']);

//forum
Route::post('/forum-post',[ForumController::class,'store'])->name("forum_post");
Route::get('/forum',[ForumController::class,'index']);
Route::post('/forum-edit',[ForumController::class,'edit_forum'])->name("forum_edit");
Route::get('/forum-delete',[ForumController::class,'delete_forum'])->name("forum_delete");



// comment untuk forum
Route::post('/forum-post-comment',[CommentForumsController::class,'store'])->name("forum_post_comment");
Route::post('/forum-edit-comment',[CommentForumsController::class,'edit_comment'])->name("forum_edit_comment");
Route::get('/forum-delete-comment',[CommentForumsController::class,'delete_comment'])->name("forum_delete_comment");

// Route::get('/forum', function () {
//     return view('users.Show.forum_index');
// });

// registrasi
Route::post('/registrasi/post',[HomeController::class,'registrasi'])->name("registrasi");

Route::get('/logout',[HomeController::class,'logout'])->name('logout-user');





Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
