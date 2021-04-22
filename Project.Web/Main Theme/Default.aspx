<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project.Web.Default" %>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Pamuk İnşaat-Ana Sayfa</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.config">
    <link rel="shortcut icon" type="image/x-icon" href="Resources/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="Resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="Resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="Resources/css/slicknav.css">
    <link rel="stylesheet" href="Resources/css/flaticon.css">
    <link rel="stylesheet" href="Resources/css/animate.min.css">
    <link rel="stylesheet" href="Resources/css/magnific-popup.css">
    <link rel="stylesheet" href="Resources/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="Resources/css/themify-icons.css">
    <link rel="stylesheet" href="Resources/css/slick.css">
    <link rel="stylesheet" href="Resources/css/nice-select.css">
    <link rel="stylesheet" href="Resources/css/style.css">
</head>
<body>
<!-- Preloader Start -->
<div id="preloader-active">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
                <img src="Resources/img/logo/loder.jpg" alt="">
            </div>
        </div>
    </div>
</div>
<!-- Preloader Start -->
<header>
    <!-- Header Start -->
    <div class="header-area">
        <div class="main-header ">
            <div class="header-top d-none d-lg-block">
                <div class="container">
                    <div class="col-xl-12">
                        <div class="row d-flex justify-content-between align-items-center">
                            <div class="header-info-left">
                                <ul>     
                                    <li>Telefon: +9 (0) 256 313 9154</li>
                                    <li>Email: noreply@pamukinsaat.com</li>
                                </ul>
                            </div>
                            <div class="header-info-right">
                                <ul class="header-social">    
                                    <li><a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="https://www.facebook.com"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="https://www.linked.in"><i class="fab fa-linkedin-in"></i></a></li>
                                    <li> <a href="https://www.google.com"><i class="fab fa-google-plus-g"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom  header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <!-- Logo -->
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo">
                                <a href="Default.aspx"><img src="Resources/img/logo/logo.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-xl-10 col-lg-10">
                            <div class="menu-wrapper  d-flex align-items-center justify-content-end">
                                <!-- Main-menu -->
                                <div class="main-menu d-none d-lg-block">
                                    <nav> 
                                        <ul id="navigation">                                                                                          
                                            <li><a href="Default.aspx">Ana Sayfa</a></li>
                                            <li><a href="About.aspx">Hakkında</a></li>
                                            <li><a href="Services.aspx">Hizmetler</a></li>
                                            <li><a href="Contact.aspx">İletişim</a></li>
                                        </ul>
                                    </nav>
                                </div>
                                <!-- Header-btn -->
                                <div class="header-right-btn d-none d-lg-block ml-20">
                                    <a href="../Dashboard/Anasayfa.aspx" target="_blank" class="btn header-btn">Online İşlemler</a>
                                </div>
                            </div>
                        </div> 
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->
</header>
<main>
    <!--? slider Area Start-->
    <div class="slider-area ">
        <div class="slider-active">
            <!-- Single Slider -->
            <div class="single-slider slider-height d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-9 col-lg-9">
                            <div class="hero__caption">
                                <h1 >Pamuk <span>Yapı Tasarım</span>İnşaat </h1>
                            </div>
                            <!--Hero form -->
                            <form action="#" class="search-box">
                                <div class="input-form">
                                    <input type="text" placeholder="Takip Numarası">
                                </div>
                                <div class="search-form">
                                    <a href="https://www.google.com" target="_blank">Takip Et </a>
                                </div>	
                            </form>	
                            <!-- Hero Pera -->
                            <div class="hero-pera">
                                <p>Takip için.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->
    <!--? our info Start -->
    <div class="our-info-area pt-70 pb-40">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="single-info mb-30">
                        <div class="info-icon">
                            <span class="flaticon-support"></span>
                        </div>
                        <div class="info-caption">
                            <p>Bizi her zaman arayabilirsiniz.</p>
                            <span>+9 (0) 256 313 9154</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="single-info mb-30">
                        <div class="info-icon">
                            <span class="flaticon-clock"></span>
                        </div>
                        <div class="info-caption">
                            <p>Pazar KAPALI</p>
                            <span>Pzt-Cmt 8.00 - 18.00</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="single-info mb-30">
                        <div class="info-icon">
                            <span class="flaticon-place"></span>
                        </div>
                        <div class="info-caption">
                            <p>Türkiye</p>
                            <span>Aydın Nazilli - 09800</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- our info End -->
    <!--? Categories Area Start -->
    <div class="categories-area section-padding30">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- Section Tittle -->
                    <div class="section-tittle text-center mb-80">
                        <span>Hizmetlerimiz</span>
                        <h2>Sizler İçin Neler Yapabiliriz</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="single-cat text-center mb-50">
                        <div class="cat-icon">
                            <span class="flaticon-shipped"></span>
                        </div>
                        <div class="cat-cap">
                            <h5><a href="Services.aspx">İnşaat</a></h5>
                            <p>Becerikli ustalarımız ile birlikte her türlü inşaat işinde sizlerin hizmetindeyiz.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="single-cat text-center mb-50">
                        <div class="cat-icon">
                            <span class="flaticon-ship"></span>
                        </div>
                        <div class="cat-cap">
                            <h5><a href="Services.aspx">Proje Çizimi</a></h5>
                            <p>Tecrübeli mimar kadromuz ile her türlü yapı için çizimlerinizi gerçekleştirebiliriz.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="single-cat text-center mb-50">
                        <div class="cat-icon">
                            <span class="flaticon-plane"></span>
                        </div>
                        <div class="cat-cap">
                            <h5><a href="Services.aspx">Yapı ve Dekorasyon</a></h5>
                            <p>İç Mimar ve Peyzaj Mimarı kadromuz ile dekorasyonda Ege Bölgesinin bir numarasıyız.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Categories Area End -->
    <!--? About Area Start -->
    <div class="about-low-area padding-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="about-caption mb-50">
                        <!-- Section Tittle -->
                        <div class="section-tittle mb-35">
                            <span>Hakkımızda</span>
                            <h2>İnşaat sektöründe Ege Bölgesinin bir numaralı firması olmakla gurur duyuyoruz.</h2>
                        </div>
                        <a href="About.aspx" class="btn" id="btn1">Daha Fazla Göster</a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <!-- about-img -->
                    <div class="about-img ">
                        <div class="about-font-img">
                            <img src="Resources/img/gallery/about2.png" alt="">
                        </div>
                        <div class="about-back-img d-none d-lg-block">
                            <img src="Resources/img/gallery/about2.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About Area End -->
    
    <!--Team Ara Start -->
    <div class="team-area section-padding30">
        <div class="container">
            <div class="row justify-content-center">
                <div class="cl-xl-7 col-lg-8 col-md-10">
                    <!-- Section Tittle -->
                    <div class="section-tittle text-center mb-70">
                        <span>Takım Arkadaşlarımız</span>
                        <h2>Sizin İçin Ne Yapabiliriz</h2>
                    </div> 
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="single-team mb-30 text-center">
                        <div class="team-img">
                            <img src="Resources/img/gallery/team1.png" alt="">
                            <div class="team-caption">
                                <h3><a href="#">Galip Derviş</a></h3>
                                <p>Ustabaşı</p>
                                <!-- Blog Social -->
                                <div class="team-social">
                                    <ul>
                                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fas fa-globe"></i></a></li>
                                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="single-team mb-30 text-center">
                        <div class="team-img">
                            <img src="Resources/img/gallery/team2.png" alt="">
                            <div class="team-caption">
                                <h3><a href="#">Berk Kaymaz</a></h3>
                                <p>Mimar</p>
                                <!-- Blog Social -->
                                <div class="team-social">
                                    <ul>
                                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fas fa-globe"></i></a></li>
                                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="single-team mb-30 text-center">
                        <div class="team-img">
                            <img src="Resources/img/gallery/team3.png" alt="">
                            <div class="team-caption">
                                <h3><a href="#">Yağız Şahin</a></h3>
                                <p>İnşaat Mühendisi</p>
                                <!-- Blog Social -->
                                <div class="team-social">
                                    <ul>
                                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fas fa-globe"></i></a></li>
                                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team Ara End -->
    <!--? Testimonial Start -->
    <div class="testimonial-area testimonial-padding section-bg" data-background="Resources/img/gallery/section_bg04.jpg">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-xl-7 col-lg-7">
                    <!-- Section Tittle -->
                    <div class="section-tittle section-tittle2 mb-25">
                        <h2>Müşterilerimiz ne diyor?</h2>
                    </div> 
                    <div class="h1-testimonial-active mb-70">
                        <!-- Single Testimonial -->
                        <div class="single-testimonial ">
                            <!-- Testimonial Content -->
                            <div class="testimonial-caption ">
                                <div class="testimonial-top-cap">
                                    <p>Bu şirketin yaptıkları inanılmaz, herkese tavsiye ediyorum, her isteğimi tam olarak istediğim şekilde yerine getirdiler, harika!</p>
                                </div>
                                <!-- founder -->
                                <div class="testimonial-founder d-flex align-items-center">
                                    <div class="founder-img">
                                        <img src="Resources/img/gallery/Homepage_testi.png" alt="">
                                    </div>
                                    <div class="founder-text">
                                        <span>Kuveyt Erim</span>
                                        <p>Doktor</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Single Testimonial -->
                        <div class="single-testimonial ">
                            <!-- Testimonial Content -->
                            <div class="testimonial-caption ">
                                <div class="testimonial-top-cap">
                                    <p>Bu şirketin yaptıkları inanılmaz, herkese tavsiye ediyorum, her isteğimi tam olarak istediğim şekilde yerine getirdiler, harika!</p>
                                </div>
                                <!-- founder -->
                                <div class="testimonial-founder d-flex align-items-center">
                                    <div class="founder-img">
                                        <img src="Resources/img/gallery/Homepage_testi.png" alt="">
                                    </div>
                                    <div class="founder-text">
                                        <span>Kuveyt Erim</span>
                                        <p>Doktor</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->

</main>
<footer>
    <!--? Footer Start-->
    <div class="footer-area footer-bg">
        <div class="container">
            <div class="footer-top footer-padding">
                <!-- footer Heading -->
                <div class="footer-heading">
                    <div class="row justify-content-between">
                        <div class="col-xl-6 col-lg-8 col-md-8">
                            <div class="wantToWork-caption wantToWork-caption2">
                                <h2>Kaliteli binalarda yaşamanız gerektiğini savunuyoruz.</h2>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4">
                            <span class="contact-number f-right">+90 256 313 9154</span>
                        </div>
                    </div>
                </div>
                <!-- Footer Menu -->
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-2 col-lg-2 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Pamuk İnşaat</h4>
                                <ul>
                                    <li><a href="About.aspx">Hakkımızda</a></li>
                                    <li><a href="#">Şirket</a></li>
                                    <li><a href="#"> Güvenlik Sözleşmesi</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Open hour</h4>
                                <ul>
                                    <li><a href="#">Pazartesi 11.00-19.00</a></li>
                                    <li><a href="#"> Salı-Cuma 11.00-20.00</a></li>
                                    <li><a href="#"> Cumartesi 10.00-18.00</a></li>
                                    <li><a href="#"> Pazar 11.00-18.00</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-5 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <!-- logo -->
                            <div class="footer-logo">
                                <a href="Default.aspx"><img src="Resources/img/logo/logo2_footer.png" alt=""></a>
                            </div>
                            <div class="footer-tittle">
                                <div class="footer-pera">
                                    <p class="info1">PAMUK İNŞAAT VE YAPI TASARIM</p>
                                </div>
                            </div>
                            <!-- Footer Social -->
                            <div class="footer-social ">
                                <a href="https://www.facebook.com"><i class="fab fa-facebook-f"></i></a>
                                <a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a>
                                <a href="https://www.linked.in"><i class="fas fa-globe"></i></a>
                                <a href="https://www.instagram.com"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer Bottom -->
            <div class="footer-bottom">
                <div class="row d-flex align-items-center">
                    <div class="col-lg-12">
                        <div class="footer-copy-right text-center">
                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved.
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End-->
</footer>
<!-- Scroll Up -->
<div id="back-top" >
    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
</div>

    <!-- JS here -->

    <script src="./Resources/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="./Resources/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="./Resources/js/popper.min.js"></script>
    <script src="./Resources/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="./Resources/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="./Resources/js/owl.carousel.min.js"></script>
    <script src="./Resources/js/slick.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="./Resources/js/wow.min.js"></script>
    <script src="./Resources/js/animated.headline.js"></script>
    <script src="./Resources/js/jquery.magnific-popup.js"></script>

    <!-- Nice-select, sticky -->
    <script src="./Resources/js/jquery.nice-select.min.js"></script>
    <script src="./Resources/js/jquery.sticky.js"></script>
    
    <!-- contact js -->
    <script src="./Resources/js/contact.js"></script>
    <script src="./Resources/js/jquery.form.js"></script>
    <script src="./Resources/js/jquery.validate.min.js"></script>
    <script src="./Resources/js/mail-script.js"></script>
    <script src="./Resources/js/jquery.ajaxchimp.min.js"></script>
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="./Resources/js/plugins.js"></script>
    <script src="./Resources/js/main.js"></script>
    
</body>
</html>
