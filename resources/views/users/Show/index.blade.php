@extends('users.components.app1')

@section('content')
    <!-- ======= Post Section Untuk contoh pemanggilan post data ======= -->
    <section id="services" class="services section-bg">
    <div class="container">

        <div class="row">
        
            <div class="col-lg-12 col-sm-6 mb-5">
                <div class="post-index">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="mt-5">
                                    <div class="text-center">
                                    <img src="{{Voyager::image($page->image)}}" class="img-fluid" style="max-height:300px;  border-radius: 2%; "alt="...">        
                                    </div>
                                    <h4 class="card-title mt-3" style="position:center">{{$page->title}}</h4>
                                    <a><strong> posted-on {{$page->created_at->format('d M Y')}}</strong></a><hr>
                                    <div class="col-md-12" style="align-content: justify;"><h6>Deskripsi :</h6>  
                                        
                                        {!!$page->body!!}     
                                        @auth
                                        <form action="{{route('PostLike')}}" method="post">
                                            @csrf
                                            <input type="hidden" name="idpost" value="{{$page->id}}">
                                            @csrf
                                            <input type="hidden" name="iduser" value="{{Auth::user()->id }}">                                    
                                            <button type="submit"class="btn btn-info" id="tombol-like"><i class="icofont-like"></i>{{ $likes }}</button>
                                        </form>
                                        @endauth

                                        @guest
                                            <button class="btn btn-info" id="tombol-like"><i class="icofont-like"></i>{{ $likes }}</button> 
                                        @endguest
                                    </div>
                                    <hr>

                                {{-- untuk load komen                                 --}}
                                @foreach($comment as $value_user)
                                {{-- @php
                                echo '<pre>';
                                    print_r($value_user);
                                    echo '</pre>';
                                @endphp --}}
                                <div class="card mb-3" style="min-width: 540px; max-width:82%;">
                                    <div class="row no-gutters">
                                      <div class="card-header">
                                        <img  src="{{asset('storage/' .$value_user->avatar)}}"  height="100" width="100" alt="...">
                                      </div>
                                      <div class="col-8">
                                        <div class="card-body">
                                            @if ( $value_user->id_user==1 || $value_user->id_user==3 )
                                            <h5 class="mt-0">{{$value_user->name}} <i class="icofont-check-circled" style="color:green;"></i></h5>
                                            <span >{{$value_user->email}}</span>  
                                                
                                            @elseif( $value_user->id_user==2 )
                                            <h5 class="mt-0">{{$value_user->name}}</h5>
                                            <span >{{$value_user->email}}</span>  
                                                
                                            @endif
                                            @auth
                                            
                                            <form class="form-inline"action="{{route('deleteComment')}}" method="GET"> 
                                                @if (Auth::user()->id == $value_user->id_user)
                                                <a class="inline"  data-toggle="modal" data-target="#Modal{{$value_user->id_comment}}" href="#"disabled>edit</a>
                                                {{ method_field('get') }}
                                                
                                                <button type="submit" value="{{$value_user->id_comment}}" name="id_comment" class="btn btn-sm-inline borderless" ><span style="color:red;">delete</span></button>
                                                @endif
                                                
                                                @csrf
                                            </form>
                                            @endauth
                                            <div class="mt-2">

                                                <p class="card-text">{!!$value_user->comment_text!!}</p>
                                            </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>

                                        <!-- Modal -->
                                        <div class="modal fade" id="Modal{{$value_user->id_comment}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <form action="{{route('updateComment')}}" method="post">
                                            {{ method_field('PUT') }}
                                            @csrf
                                            <div class="modal-dialog">
                                            <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Ubah Komentar</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            
                                            <div class="modal-body">
                                            <input type="hidden" name="idpost" value="{{$page->id}}">
                                            <input type="hidden" name="iduser" value="{{$value_user->id_user}}">
                                            <input type="hidden" name="idcomment" value="{{$value_user->id_comment}}">
                                            <textarea class="form-control" id="Modal{{$value_user->id_comment}}" name="comment" rows="3">{{$value_user->comment_text}}</textarea>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                                                <button type="submit" class="btn btn-success">Simpan</button>
                                            </div>
                                            </div>
                                            </form>
                                        </div>
                                        </div>
                                        <!-- tutup Modal -->
                                    
                                        
                                @endforeach
                                
                                @guest
                                <a class="btn btn-success"href="{{ route('voyager.login') }}">Login</a>
                                @endguest
                                @auth
                                <form  action="{{route('saveComment')}}" method="POST">
                                    @csrf
                                    <input type="hidden" name="idpost" value="{{$page->id}}">
                                    <div class="col-md-10 mb-3 ">
                                    <h4>KOMENTAR</h4>
                                    <label for="exampleFormControlTextarea1" class="form-label">Masukkan Komentar</label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" name="comment" rows="3"></textarea>
                                    <button type="submit" class="btn btn-success mt-2">Submit</button>
                                </div>
                                @endauth
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
      <!-- Projects -->
</section>
<div class="container">
<div class="row justify-content-center">
</div>
</div>
    </section><!-- End Services Section -->



</main><!-- End #main -->
<script>
$(document).ready(function() {

  $('#editbutton').hide();
});
</script>

@endsection
