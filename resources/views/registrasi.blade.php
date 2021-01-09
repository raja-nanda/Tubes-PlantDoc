<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>PlantDoc - Registrasi Akun</title>
        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>


    <style>
        body {
            font-family: 'Nunito';
            background-color:rgba(120, 255, 214, 1);
          
        }
        .karakter{
            background-image: url('{{asset("assets/img/karakter.svg")}}');
            /* background-position: left; */
            margin-left: 50px;
            background-repeat: no-repeat;
            background-size: 500px;
            height: 500px;
            display:flex;
            margin-top: 5%;
        }
      
    </style>
</head>

<body>
    <div class="karakter ">
        
        <div class="container  mt-5 mb-5" >
                <div class="row justify-content-md-center">
                
                <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                    <div class="card-header">Registrasi</div>
                    <div class="card-body">
                        <form action="{{route('registrasi') }}" method="post" enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <div class="form-group">
                                <label for="name">Nama</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" name="name" >
                                <input type="hidden" class="form-control" id="role_id" value="2" name="role_id" >                                
                              </div>
                            <div class="form-group">
                              <label for="exampleInputEmail1">Email </label>
                              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
                              <small id="emailHelp" class="form-text text-muted">Masukan Email Yang Unik</small>
                            </div>
                            <div class="form-group">
                                @csrf
                              <label for="exampleInputPassword1">Password</label>
                              <input type="password" class="form-control" id="exampleInputPassword1" name="password" autocomplete="new-password">
                            </div>
                            
                            <button type="submit" class="btn btn-success">Daftar</button>
                            <a href="{{ route('voyager.login') }}">Masuk</a>
                          </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
