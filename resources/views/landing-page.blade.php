@extends('layout')

@section('title', 'Menu')

@section('extra-css')
    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
@endsection

@section('content')

<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }
      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      .carousel-item-next, .carousel-item-prev, .carousel-item.active {
    display: block;
}
.carousel-item {
    height: 32rem;
}
.carousel-item {
    position: relative;
    display: none;
    float: left;
    width: 100%;
    height: 600px;
    margin-right: -100%;
    -webkit-backface-visibility: hidden;
    backface-visibility: hidden;
    transition: -webkit-transform .6s ease-in-out;
    transition: transform .6s ease-in-out;
    transition: transform .6s ease-in-out,-webkit-transform .6s ease-in-out;
}
/*addias*/
.color-theme-white___3NDJn h2, .color-theme-white___3NDJn p {
    color: #fff;
}
.title___DZ13z {
    margin-bottom: 15px;
    font-size: 16px;
}
.gl-heading--s, h5 {
    font-size: 18px;
    line-height: 16px;
}
.gl-heading, h1, h2, h3, h4, h5, h6 {
    letter-
    spacing: 1.5px;
}
h2{
    font-style: normal;
    font-weight: 600;
    font-family: 'Abel', sans-serif;
}
h2 a{
    color: #fff;
}
h2 a:hover{
    color: #fff;
}
/*online shop*/
.add2_text{
    color: #000;
}
.img_feature{
    margin-right: 100px;
    margin-bottom: 10px;
}
.feature_cat{
    font-size: 24px;
}
h5{
    font-weight: bold;
    font-size: 20px;
    text-transform: uppercase;
}
.home_con{
    height: 170px;
    background-color: #ede734;
    color: #000;
}
h4{
    font-weight: bold;
    font-size: 22px;
    text-transform: uppercase;
    font-family: 'adiBlack',Arial,Helvetica,Verdana,sans-serif;
}

.caro3_3{
  margin-right: 70px;
  margin-left: 30px;
}
.caro3{
  margin: 10px;

}
.caro3_img{
  width: 470px;

}
    </style>
    <!-- Custom styles for this template -->
   <main role="main">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner">
       <div class="carousel-item active">

        <img src="https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/enUS/Images/running-fw19-rfto-educate-hp-lf-mh-medium-d_tcm221-356981.jpg" alt="" width="100%" height="100%" fill="#777">
        <div class="container">
          <div class="carousel-caption text-left">
            <h1 style="color: #000; font-weight: 600;">RUN FOR THE OCEANS</h1>
            <p style="color: #000;">It's time to take action against marine plastic pollution. Rally your <br>friends to join the movement.</p>
            <p><a class="btn btn-lg btn-dark" href="{{route('shop.index')}}" role="button" style="margin-bottom: 160px">LEARN MORE <i class="fa fa-arrow-right"></i></a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">

        <img src="https://image.adidas.co.kr/upload/banner/bbf2598bfc7c4a2ba1f8aad25b494123_0429163854.jpg" alt="" width="100%" height="100%" fill="#777">
        <div class="container">
          <div class="carousel-caption text-left">
            <h1 style="color: #000; font-weight: 600;">For Women,<br>Give Love & Thanks</h1>
                
            <p style="color: #000;">Light up the night in new Nite Jogger colorways. Photo by Cole Younger.</p>
            <p><a class="btn btn-lg btn-dark" href="{{route('shop.index')}}" role="button">SHOP NOW <i class="fa fa-arrow-right"></i></a></p>
            <p><a class="btn btn-lg btn-dark" href="{{route('shop.index')}}" role="button" style="margin-bottom: 120px">VIEW MEMBER BENEFITS <i class="fa fa-arrow-right"></i></a></p>
        
          </div>
        </div>
      </div>


      <div class="carousel-item">
        <img src="https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/enUS/Images/training-aSMC-ss20-mh-earthday-image2-d_tcm221-485018.jpg" alt="" width="100%" height="100%" fill="#777">

      <div class="carousel-caption text-left">
            <h1>HEY WORLD!</h1>
            <p>Earth Day is Every Day, the new collection that respects and celebrates our planet.</p>
            <p><a class="btn btn-lg btn-light" href="{{route('shop.index')}}" role="button">SHOP COLLECTION <i class="fa fa-arrow-right"></i></a></p>
          </div>
      </div>
      <div class="carousel-item">
        <img src="https://content.nike.com/content/dam/one-nike/en_lu/SU19/Mens/W_20190516_EMEA_NSW_MLP_P3A_SHOX/W_20190516_EMEA_NSW_MLP_P3A_SHOX_DT_1600x600_visual.jpg.transform/full-screen/W_20190516_EMEA_NSW_MLP_P3A_SHOX_DT_1600x600_visual.jpg" alt="" width="100%" height="100%" fill="#777">

        <div class="container">
          <div class="carousel-caption text-left">
            <h1>KICK UP A STORM IN SHOX</h1>
            <p>The subversive Nike Shox R4 is making<br>
waves in clean monochrome colourways.</p>
            <p><a class="btn btn-lg btn-light" href="{{route('shop.index')}}" role="button" style="margin-bottom: 130px">SHOP NOW <i class="fa fa-arrow-right"></i></a></p>
          </div>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

<br><br>
  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->
  {{-- ======================= start of addias ==================== --}}
<div class="row">
        <div class="col-md-6 col-xs-12 col-sm-12">
            <img src="https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/enUS/Images/MOVED_OVER_tcm221-363900.jpg" width="700px" height="500px" style="margin-left: 50px">

              <div class="container">
          <div class="carousel-caption">
            <h2>ULTRABOOST 19</h2>
            <p>Reboosted</p>
            <p><a class="btn btn-lg btn-light" href="#" role="button">SHOP NOW <i class="fa fa-arrow-right"></i></a></p>
          </div>
        </div>

        </div>
        <div class="col-md-6 col-xs-12 col-sm-12">
            <img src="https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/enUS/Images/originals-fw19-hoc-drop1-tease-hp-teaser-large-2up-ee5790-m-t_v2_tcm221-364940.jpg" width="700px" height="500px">

              <div class="container">
          <div class="carousel-caption"">
            <h2>HOME OF CLASSICS</h2>

            <p><a class="btn btn-lg btn-light" href="#" role="button">PREVIEW NOW <i class="fa fa-arrow-right"></i></a></p>
          </div>
        </div>
        </div>
    </div>
    <br><br>
    {{-- ======================= end of addias ==================== --}}
    {{-- ======================= start of FEATURED CATEGORIES ==================== --}}
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="feature_cat">FEATURED CATEGORIES</h2><br>
                <div class="row">
                    <div class="col-lg-3 col-xs-6 col-sm-6">
                        <img src="https://uniqlo.scene7.com/is/image/UNIQLO/us_cat_pg_m_05?$jpgMQ$&wid=319" width="280" height="380" class="img_feature">
                          <div class="container">
                          <div class="carousel-caption">
                            <h2 style="margin-bottom: 130px;"><a href="">Casual Shirts</a></h2>

                          </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-xs-6 col-sm-6">
                        <img src="https://uniqlo.scene7.com/is/image/UNIQLO/us_cat_042419_j09_polo?$jpgMQ$&wid=319" width="280" height="380" class="img_feature">
                          <div class="container">
                          <div class="carousel-caption">
                            <h2 style="margin-bottom: 130px;"><a href="">Polo Shirts</a></h2>

                          </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-xs-6 col-sm-6">
                        <img src="https://uniqlo.scene7.com/is/image/UNIQLO/us_cat_042419_j10_shirt_m?$jpgMQ$&wid=319" width="280" height="380" class="img_feature">
                          <div class="container">
                          <div class="carousel-caption">
                            <h2 style="margin-bottom: 130px;"><a href="">T-Shirts</a></h2>

                          </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-xs-6 col-sm-6">
                        <img src="https://uniqlo.scene7.com/is/image/UNIQLO/us_cat_042419_j11_Chino?$jpgMQ$&wid=319" width="280" height="380" class="img_feature">
                          <div class="container">
                          <div class="carousel-caption">
                            <h2 style="margin-bottom: 130px;"><a href="">Pants</a></h2>

                          </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-xs-6 col-sm-6">
                        <img src="https://uniqlo.scene7.com/is/image/UNIQLO/us_cat_042419_j12_ezy?$jpgMQ$&wid=319" width="280" height="380" class="img_feature">
                          <div class="container">
                          <div class="carousel-caption">
                            <h2 style="margin-bottom: 130px;"><a href="">Jeans</a></h2>

                          </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-xs-6 col-sm-6">
                        <img src="https://uniqlo.scene7.com/is/image/UNIQLO/us_cat_042419_j13_active?$jpgMQ$&wid=319" width="280" height="380" class="img_feature">
                          <div class="container">
                          <div class="carousel-caption">
                            <h2 style="margin-bottom: 130px;"><a href="">Activewear</a></h2>

                          </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-xs-6 col-sm-6">
                        <img src="https://uniqlo.scene7.com/is/image/UNIQLO/us_cat_042419_j14_shorts_m?$jpgMQ$&wid=319" width="280" height="380" class="img_feature">
                          <div class="container">
                          <div class="carousel-caption">
                            <h2 style="margin-bottom: 130px;"><a href="">Shorts</a></h2>

                          </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-xs-6 col-sm-6">
                        <img src="https://uniqlo.scene7.com/is/image/UNIQLO/us_sp_ar_030719_v2_01?$jpgMQ$&wid=319" width="280" height="380" class="img_feature">
                          <div class="container">
                          <div class="carousel-caption">
                            <h2 style="margin-bottom: 130px;"><a href="">AIRism Innerwear</a></h2>

                          </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <br>
    {{-- ======================= end of FEATURED CATEGORIES ==================== --}}
    {{-- ======================= start of addias 2 ==================== --}}
    <div class="row">
        <div class="col-md-6 col-xs-12 col-sm-12">
            <img src="https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/enGB/Images/teaser-c-Adidas_Swim_Amphi-mobile_background_image_tcm143-341615.jpg" width="700px" height="500px" style="margin-left: 50px">
              <div class="container">
          <div class="carousel-caption">
            <h2>MAXIMUM VERSATILITY</h2>
            <p>Three support levels, for any activity in and around the water.</p>
            <p><a class="btn btn-lg btn-dark" href="#" role="button">SHOP NOW <i class="fa fa-arrow-right"></i></a></p>
          </div>
        </div>
        </div>
        <div class="col-md-6 col-xs-12 col-sm-12">
            <img src="https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/enGB/Images/HP_Teaser_Tights_Small_tcm143-315446.jpg" width="700px" height="500px">
              <div class="container">
          <div class="carousel-caption"">
            <h2>WORK IT OUTSIDE</h2>
            <p>Get inspired to bootcamp equipment-free in high support tights.</p>

            <p><a class="btn btn-lg btn-dark" href="#" role="button">PREVIEW NOW <i class="fa fa-arrow-right"></i></a></p>
          </div>
        </div>
        </div>
    </div>


    <br><br>
    {{-- ======================= end of addias 2 ==================== --}}

    {{-- ======================= start of caro ==================== --}}
    <div class="carousel-inner">
      <div class="carousel-item active">

        <img src="https://brand.assets.adidas.com/image/upload/f_auto,q_auto,fl_lossy/ptBR/Images/HEADER2-GLP_Nemeziz_Desktop_Masthead-Small_tcm194-347942.jpg" alt="" width="100%" height="100%" fill="#777">
        <div class="container">
          <div class="carousel-caption text-left" style="margin-bottom: 140px;">
            <h1>UNLOCK AGILITY</h1>
            <p>New Nemeziz 19 is exclusively available through adidas and selected retailers.</p>
            <p><a class="btn btn-lg btn-dark" href="#" role="button">EXCLUSIVELY HERE <i class="fa fa-arrow-right"></i></a></p>
             <p><a class="btn btn-lg btn-dark" href="#" role="button">EXPLORE <i class="fa fa-arrow-right"></i></a></p>
          </div>
        </div>
      </div>

    </div>
    <br><br>
  {{-- ======================= end of caro ==================== --}}

  {{-- ======================= start of caro2 ==================== --}}
    <div class="carousel-inner">
      <div class="carousel-item active">

        <img src="https://content.nike.com/content/dam/one-nike/en_lu/SU19/Mens/W_20190606_EMEA_RUN_MLP_P3A_PEG36/MLP_P3_desktop.png.transform/full-screen/MLP_P3_desktop.png" alt="" width="100%" height="100%" fill="#777">
        <div class="container">
          <div class="carousel-caption text-left" style="margin-bottom: 140px; color: #000;">
            <h1 style="font-weight: bold;">DREAM FAST: THE NEW PEGASUS 36</h1>
            <p>Our most runner-approved shoe goes a step further to help you achieve your goals.<br>
Lace up some all new innovations for everyday speed.</p>
            <p><a class="btn btn-lg btn-link" href="#" role="button" style="color: #000;">SHOP NOW <i class="fa fa-arrow-right"></i></a></p>

          </div>
        </div>
      </div>

    </div>
    <br><br>
  {{-- ======================= end of caro2 ==================== --}}

  {{-- ======================= start of caro3 ==================== --}}

   <div class="caro3_3">
    <div class="row">
      <div class="col-lg-4 mb-3">
         <div class="caro3">
           <img src="https://c.static-nike.com/a/images/f_auto/w_1536,c_limit/ebni4cssccl4rvr0fgeb/homepage-apla-xa.jpg" class="caro3_img">
           <div class="container">
          <div class="carousel-caption">

            <p><a class="btn btn-lg btn-light" href="#" role="button" style="border-radius: 20px; margin-right: 40px; margin-bottom: 25px;">Men's </a></p>
          </div>
        </div>
         </div>
      </div>

       <div class="col-lg-4 mb-3">
         <div class="caro3">
           <img src="https://c.static-nike.com/a/images/f_auto/w_1536,c_limit/xkh1zz53gxufllifu6yd/homepage-apla-xa.jpg" class="caro3_img">
             <div class="container">
          <div class="carousel-caption">

            <p><a class="btn btn-lg btn-light" href="#" role="button" style="border-radius: 20px; margin-right: 40px; margin-bottom: 25px;">Women's </a></p>
          </div>
        </div>
         </div>
      </div>

       <div class="col-lg-4 mb-3">
         <div class="caro3">
           <img src="https://c.static-nike.com/a/images/f_auto/w_1536,c_limit/rl9h6expvyvrv6gwbzr2/homepage-apla-xa.jpg" class="caro3_img">
             <div class="container">
          <div class="carousel-caption">

            <p><a class="btn btn-lg btn-light" href="#" role="button" style="border-radius: 20px; margin-right: 40px; margin-bottom: 25px;">Kids' </a></p>
          </div>
        </div>
         </div>
      </div>

    </div>
    </div>

    {{-- ======================= end of caro3 ==================== --}}

    {{-- ======================= start of bestseller ==================== --}}
        
    {{-- Bestseller code here --}}
    @include('best-seller');

    {{-- ======================= end of bestseller ==================== --}}

 {{--    <div class="container">
                home page
        <ul>
        @foreach($products as $product)
            <li><a href="{{ route('shop.show', $product->slug) }}">{{$product->name}}<br>
            ${{$product->price}}</a></li>
        @endforeach
        </ul>


    </div> --}}{{--  container end --}}

     

  </div><!-- /.container -->

    </main>{{--  main end --}}







       
            

                  



            <blog-posts></blog-posts>

          

        

        
@endsection

@section('extra-js')
    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection
