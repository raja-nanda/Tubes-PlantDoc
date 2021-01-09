@extends('users.components.forum')

@section('content')
<section id="services" class="services section-bg">

<div class="container-sm mt-5" >
    <h3>Forum Tanaman PlantDoc 2021</h3>
    <hr>
        <div class="row">
            <div class="col mx-auto" style="max-width: 540px;" >
                
                    <form action="{{route ('forum_post') }}" method="POST" >
                        @csrf
                            @auth
                            <input type="hidden" value="{{ Auth::user()->id }}" name="id_user">
                            <div class="mb-3">
                                <label for="judul" class="form-label">Judul</label>
                                <input type="text" class="form-control" id="judul" name="tittle_forum">
                            </div>
                            <div class="form-floating mb-3">
                                <label for="floatingTextarea2">Pos Forum</label>
                                <textarea class="form-control" placeholder="Apa yang ingin di diskusikan" id="floatingTextarea2" style="height: 100px" name="forumtext"></textarea>
                            </div>
                            <button type="submit" class="btn btn-success">Submit</button>   
                    </form>
                            @endauth
                
                        <hr>
                        {{--  load data yg sudah posting status untuk forum  --}}

                        
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="col" style="float: center">

                    {{-- batas input forum --}}
                    
                    @foreach ($GetForums as $itemforum)
                    
                    <div class="card mt-3 mb-3">
                        @if ($itemforum->user_has_forum->role_id==1 || $itemforum->user_has_forum->role_id==3)
                        <div class="card-header" style="background-color:rgb(134, 255, 134);">
                            <img src="{{Voyager::image($itemforum->user_has_forum->avatar)}}" alt=""  width="30" height="30">
                            
                                    <div class="btn-group">{{ $itemforum->user_has_forum->name }}<i class="icofont-check-circled" style="color:green;"></i> 
                                        @auth
                                        @if (Auth::user()->id==$itemforum->user_has_forum->id )
                                        
                                        <a type="button" data-toggle="modal" data-target="#exampleModal{{ $itemforum->id }}">
                                            <i class="icofont-ui-edit"></i>
                                        </a>
                                        <form action="{{ route('forum_delete') }}" action="GET">
                                            @csrf
                                            <input type="hidden"value="{{ $itemforum->id }}" name="id_forum">                                          
                                            <a type="submit" style="color:red">
                                                delete
                                            </a>
                                        </form>  
                                            @endif
                                            @endauth
                                        </div> 
                                        
                                        <a>{{ $itemforum->created_at->diffForHumans() }}</a>
                                        <h6 class="mt-3"><strong>judul forum : {{ $itemforum->tittle_forum }}</strong></h6>
                                        
                                    </div>
                                    
                        @else
                        
                        <div class="card-header" style="background-color:rgb(134, 255, 134);">
                            <img src="{{Voyager::image($itemforum->user_has_forum->avatar)}}" alt=""  width="30" height="30">
                            @auth
                            <div class="btn-group">{{ $itemforum->user_has_forum->name }}
                                    @if (Auth::user()->id==$itemforum->user_has_forum->id )
                                    
                                    <a type="button" data-toggle="modal" data-target="#exampleModal{{ $itemforum->id }}">
                                        <i class="icofont-ui-edit"></i>
                                    </a>
                                    <form action="{{ route('forum_delete') }}" action="GET">
                                        @csrf
                                        <input type="hidden"value="{{ $itemforum->id}}" name="id_forum">
                                                                                    
                                        <a type="submit" style="color:red">
                                            delete
                                        </a>
                                    </form>  
                                    @endif
                                </div> 
                                @endauth
                                <a>{{ $itemforum->created_at->diffForHumans() }}</a>
                                <h6 class="mt-3"><strong>judul forum : {{ $itemforum->tittle_forum }}</strong></h6>
                            </div> 
                            @endif 
                            
                            {{-- modal edit forum post --}}
                        <div class="modal" tabindex="-1"  id="exampleModal{{ $itemforum->id }}"  aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                  <div class="modal-header">
                                      <h5 class="modal-title">Ubah Unggahan Forum</h5>
                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form action="{{ route('forum_edit') }}" method="POST">
                                @csrf
                                <div class="modal-body">
                                    <label for="tittle">Judul</label>
                                    <input type="text"class="form-control"value="{{ $itemforum->tittle_forum}}" id="title"name="tittle_forum">
                                    <input type="hidden"value="{{ $itemforum->id }}" name="id_forum">
                                    <input type="hidden"value="{{ $itemforum->user_has_forum->id }}" name="id_user">
                                    <label for="forum_text">Deskripsi</label>
                                    <input type="text" class="form-control"value="{{ $itemforum->forumtext}}" id="forum_text"name="forum_text">   
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                  <button type="submit" class="btn btn-primary">Save changes</button>
                                </div>
                            </form>
                        </div>
                            </div>
                        </div>
                        {{-- modal tutup edit forum post --}}
                        
                {{-- @endforeach --}}
                <div class="card-body">
                    <p class="card-text">{{ $itemforum->forumtext }}</p>
                    {{--  COLLAPSE FORUM COMMENT     --}}
                    
                    @guest
                    <div class="text-inline mt-3">
                        
                        <a href="{{ route('voyager.login') }}"><i class="icofont-login"></i>Login</a>
                        @endguest
                        @auth    
                        {{--  toggle untuk komentar input  --}}
                        <a  class="text-inline"type="button" data-toggle="collapse" href="#multiCollapseExample{{$itemforum->id }}" role="button" aria-expanded="false" aria-controls="multiCollapseExample{{ $itemforum->id }}">
                            <i class="icofont-comment">Komentar</i>
                        </a>
                        @endauth
                        <a class="text-inline mt-2 mb-1" type="button" data-toggle="collapse" href="#komen{{ $itemforum->id }}" role="button" aria-expanded="false" aria-controls="multiCollapseExample{{ $itemforum->id }}">
                            <i class="icofont-speech-comments"> </i> lihat Komentar 
                        </a>
                        
                    </div>

                      {{--  untuk komentar input --}}
                      @auth
                      <div class="mt2 mb-3">

                          <div class="collapse multi-collapse" id="multiCollapseExample{{ $itemforum->id }}">
                              <div class="card card-body">
                                  <form action="{{route ('forum_post_comment') }}" method="POST">
                                      @csrf
                                      <div class="form-floating mb-3">
                                          <input type="hidden" value="{{ $itemforum->id }}" name="forum_id">
                                          <input type="hidden" name="user_id" value="{{ Auth::user()->id }}">
                                          <label for="floatingTextarea2">Pos Forum</label>
                                          <textarea class="form-control" placeholder="Isi komentar disini.." id="floatingTextarea2" style="height: 100px" name="commenttext"></textarea>
                                      </div>
                                      <button type="submit" class="btn btn-success">Submit</button>   
                                    </form>
                                  </div>
                              </div>
                          @endauth
                          </div>
                          {{-- tutup komentar input --}}
                    {{-- perulangan forum yang memiliki komen --}}
                    <div class="mt-2 mb-3">
                        <div class="collapse multi-collapse" id="komen{{ $itemforum->id }}">{{-- idnya forum --}}
                            @foreach ($userforum as $comment)
                            @if ( $itemforum->id  == $comment->forum_id  )
                            
                            <div class="card-header" style="background-color: rgb(113, 255, 113)">
                                <img src="{{Voyager::image($comment->user_forums->avatar)}}" alt=""  width="30" height="30">
                                {{ $comment->user_forums->name }}
                                @auth
                                <div class="btn-group">
                                        @if (Auth::user()->id==$comment->user_forums->id )
                                        
                                        <a class="inline" type="button" data-toggle="modal" data-target="#komentar{{ $comment->id }}">
                                            <i class="icofont-ui-edit"></i>
                                        </a>
                                        <form action="{{ route('forum_delete_comment') }}" action="GET">
                                            @csrf
                                            <input type="hidden"value="{{ $comment->id}}" name="id_comment">                                            
                                            <button class="inline"type="submit" style="color:red; border: none; background: none;">
                                                delete
                                            </button>
                                        </form>  
                                        @endif
                                </div> 
                                @endauth
                                
                            </div>
                            <div class="card card-body">
                                <div class="form-floating mb-3">
                                    <input type="hidden"value="{{ $comment->id }}"name="forum_id">{{-- idnya komen --}}
                                    <textarea class="form-control" id="floatingTextarea2" style="height: 100px" name="forumtext" disabled>{{ $comment->comment_forum }}</textarea>
                                </div>
                                {{--  <button type="submit" class="btn btn-success">Submit</button>     --}}
                                
                            </div>

                            {{-- modal komen untuk edit komen dari forum yang ada --}}
                            <div class="modal" tabindex="-1"  id="komentar{{ $comment->id }}"  aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                      <div class="modal-header">
                                          <h5 class="modal-title">Ubah Unggahan Forum</h5>
                                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form action="{{ route('forum_edit_comment') }}" method="POST">
                                    @csrf
                                    <div class="modal-body">
                                        <input type="hidden"value="{{ $comment->forum_id }}" name="id_forum">
                                        <input type="hidden"value="{{ $comment->id }}" name="id_comment">
                                        <input type="hidden"value="{{ $comment->user_forums->id }}" name="id_user">
                                        <label for="forum_text_comment">Deskripsi</label>
                                        <input type="text" class="form-control"value="{{ $comment->comment_forum}}" id="forum_text_comment"name="forum_text_comment">   
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                      <button type="submit" class="btn btn-primary">Save changes</button>
                                    </div>
                                </form>
                            </div>
                                </div>
                            </div>
                            {{-- modal tutup edit forum post --}}

                            @endif
                            @endforeach
                        </div>
                    </div>
                    {{-- tutup perulangan yang forum yang sudah atau memiliki komen --}}
                                                    
                    
                </div> {{--tutup bungkus mxauto--}}
                @endforeach
            </div>
        </section>
@endsection