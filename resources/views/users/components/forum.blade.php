<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>PlantDoc - Forum</title>
    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href='{{asset("assets/vendor/bootstrap/css/bootstrap.min.css")}}' rel="stylesheet">
    <link href='{{asset("assets/vendor/icofont/icofont.min.css")}}' rel="stylesheet">
    <link href='{{asset("assets/vendor/boxicons/css/boxicons.min.css")}}' rel="stylesheet">
    <link href='{{asset("assets/vendor/animate.css/animate.min.css")}}' rel="stylesheet">
    <link href='{{asset("assets/vendor/venobox/venobox.css")}}' rel="stylesheet">
    <link href='{{asset("assets/vendor/owl.carousel/assets/owl.carousel.min.css")}}' rel="stylesheet">
    <link href='{{asset("assets/vendor/aos/aos.css")}}' rel="stylesheet">
    <link href='{{asset("assets/vendor/remixicon/remixicon.css")}}' rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href='{{asset("assets/css/style.css")}}' rel="stylesheet">

    <!-- =======================================================
  * Template Name: Company - v2.1.0
  * Template URL: https://bootstrapmade.com/company-free-html-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body style="zoom: 90%" >

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
        <div class="container d-flex align-items-center">

            <h1 style="font:Rock Salt;"class="logo mr-auto"><a href="/"><span>Plant</span>Doc</a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

            <nav class="nav-menu d-none d-lg-block">
                {!!menu('public','bootstrap') !!}
                
            </nav><!-- .nav-menu -->

            <div class="header-social-links">
                @auth
                <a href="/admin" style="color:green;">PROFIL</a>
                <a href="{{ route('logout-user') }} "style="color:red;">KELUAR</a>                      
                    @endauth
                    @guest
                    <a href="{{ route('voyager.login') }}">Masuk</a>
                    <a href="/registrasi">Daftar</a>
                    @endguest
                
            </div>

        </div>
    </header><!-- End Header -->


    @yield('content')

    <!-- ======= Footer ======= -->
    <footer id="footer">

<div class="footer-top">
    <div class="container">
        <div class="row">

            <div class="col-lg-3 col-md-6 footer-contact">
                <h3>Alamat Kantor</h3>
                <p>
                    Jl. Sukabirus C55 <br>
                    Bandung, Bojongsoang<br>
                    Indonesia <br><br>
                    <strong>Telp:</strong> +62 81261680323<br>
                    <strong>Email:</strong> plantdoc@gmail.com<br>
                </p>
            </div>

            <!-- <div class="col-lg-2 col-md-6 footer-links">
                <h4>Useful Links</h4>
                <ul>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
                </ul>
            </div>

            <div class="col-lg-3 col-md-6 footer-links">
                <h4>Our Services</h4>
                <ul>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
                </ul>
            </div> -->
<!-- 
            <div class="col-lg-4 col-md-6 footer-newsletter">
                <h4>Join Our Newsletter</h4>
                <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
                <form action="" method="post">
                    <input type="email" name="email"><input type="submit" value="Subscribe">
                </form>
            </div> -->

        </div>
    </div>
</div>

<div class="container d-md-flex py-4">

    <div class="mr-md-auto text-center text-md-left">
        <div class="copyright">
            &copy; Copyright <strong><span>Company</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/company-free-html-bootstrap-template/ -->
            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
    </div>
    <!-- <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
    </div> -->
</div>
</footer><!-- End Footer -->

    <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

    <!-- Vendor JS Files -->
    <script src='{{asset("assets/vendor/jquery/jquery.min.js")}}'></script>
    <script src='{{asset("assets/vendor/bootstrap/js/bootstrap.bundle.min.js")}}'></script>
    <script src='{{asset("assets/vendor/jquery.easing/jquery.easing.min.js")}}'></script>
    <script src='{{asset("assets/vendor/php-email-form/validate.js")}}'></script>
    <script src='{{asset("assets/vendor/jquery-sticky/jquery.sticky.js")}}'></script>
    <script src='{{asset("assets/vendor/isotope-layout/isotope.pkgd.min.js")}}'></script>
    <script src='{{asset("assets/vendor/venobox/venobox.min.js")}}'></script>
    <script src='{{asset("assets/vendor/waypoints/jquery.waypoints.min.js")}}'></script>
    <script src='{{asset("assets/vendor/owl.carousel/owl.carousel.min.js")}}'></script>
    <script src='{{asset("assets/vendor/aos/aos.js")}}'></script>

    <!-- Template Main JS File -->
    <script src='{{asset("assets/js/main.js")}}'></script>

</body>

</html>
