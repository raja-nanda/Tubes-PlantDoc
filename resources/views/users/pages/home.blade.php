@extends('users.components.app')

@section('content')
<!-- ======= Hero Section ======= -->
<section id="hero">
    <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

        <div class="carousel-inner" role="listbox">

            <!-- Slide 1 -->
            <div class="carousel-item active" style="background-image: url(assets/img/slide/slide-1.jpg);">
                <div class="carousel-container">
                    <div class="carousel-content animate__animated animate__fadeInUp">
                        <h2>Welcome to <span>PlantDoc</span></h2>
                        <p>Dapatkan informasi terbaru mengenai dunia flora serta solusi terkait tanaman anda.</p>
                    </div>
                </div>
            </div>

            <!-- Slide 2 -->
            <div class="carousel-item" style="background-image: url(assets/img/slide/slide-2.webp);">
                <div class="carousel-container">
                    <div class="carousel-content animate__animated animate__fadeInUp">
                        <h2>Pakar Tanaman Terakreditasi</h2>
                        <p>Dengan adanya pakar dari berbagai macam jenis tanaman yang terpercaya membuat anda dapat berkonsultasi dan
                            dan mendapatkan jawaban yang tentunya dapat menyelesaikan permasalahan yang sedang dihadapi oleh tanaman anda.
                        </p>
                    </div>
                </div>
            </div>

            <!-- Slide 3 -->
            <div class="carousel-item" style="background-image: url(assets/img/slide/slide-3.jpg);">
                <div class="carousel-container">
                    <div class="carousel-content animate__animated animate__fadeInUp">
                        <h2>Tips and Trick</h2>
                        <p>Dapatkan tips and trick merawat tanaman anda agar tanaman anda tumbuh dengan maksimal dan subur.</p>
                        <!-- <div class="text-center"><a href="" class="btn-get-started">Read More</a></div> -->
                    </div>
                </div>
            </div>

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon icofont-simple-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon icofont-simple-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

    </div>
</section>
<!-- End Hero -->


    <!-- ======= Post Section Untuk contoh pemanggilan post data ======= -->
    <section id="services" class="services section-bg">
    <div class="container">

<div class="row">

@foreach($posts as $post)

      <!-- Projects -->
  <div class="col-lg-4 col-sm-6 mb-4">
  
    <div class="card h-100">
      <a href="/post/{{$post->slug}}">
          <img class="card-img-top" src="{{Voyager::image($post->image)}}" style="background-size:700px 400px; alt="post.jpg">
        </a>
        <div class="card-body">
            <h4 class="card-title mb-3" style="position:center">{{$post->title}}</h4>
            @if ($post->category_id==2)
                
            <i class="icofont-tag" style="color: orange">Tanaman Hias</i>
            @else
            <i class="icofont-tag" style="color: green;">Tanaman obat</i>
            @endif
            <div class="card-text mt-2" style="allign:justify;">
                <strong>
                    <a> posted-on {{$post->created_at->format('d M Y')}}</a><br>
                </strong>
                {{ $post->excerpt }}
            </div>
            <br>   
        </div>
        <div class="card-footer text-right">
            <a class="btn btn-success" style="float:bottom;" href="/post/{{$post->slug}}">Selanjutnya</a>
        </div>
    </div>
  </div>
   
    <!-- /.row -->

@endforeach
</div>
</div>
        <div class="container">
            <div class="row justify-content-center">
            {{$posts->links()}}
            </div>
        </div>
  
</section>
<div class="container">
<div class="row justify-content-center">
</div>
</div>
</section>
    <!-- ======= About Us Section ======= -->
<section id="about-us" class="about-us">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Tentang Kita</strong></h2>
            </div>

            <div class="row content">
                <div class="col-lg-6" data-aos="fade-right">
                    <h2>PlantDoc</h2>
                    <h3>Merupakan sebuah platform dimana para pecinta tanaman dapat mengetahui info terbaru seputar dunia tanaman 
                        serta dimana para pecinta tanaman dapat saling berdiskusi dengan ahli ataupun sesama pecinta tanaman.
                    </h3>
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0" data-aos="fade-left">
                    <p>
                        Dengan adanya PlantDoc ini diharapkan dapat memudahkan para pecinta tanaman dalam merawat tanaman mereka.
                    
                    <p class="font-italic">
                        "When evironment changes, theres must be corresponding change in life"
                    </p>
                </div>
            </div>
        </div>
</section><!-- End About Us Section -->

</main><!-- End #main -->


@endsection
