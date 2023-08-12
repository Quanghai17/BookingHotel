@extends('layouts.main')

@section('content')
<!-- breadcrumb area start here  -->
<section class="bd-breadcrumb-area p-relative">
    <div class="bd-breadcrumb__wrapper">
       <div class="container">
          <div class="row justify-content-center">
             <div class="col-xl-10">
                <div class="bd-breadcrumb d-flex align-items-center justify-content-center">
                   <div class="bd-breadcrumb__thumb">
                      <img src="assets/img/breadcrumb/breadcrumb-bg.png" alt="breadcrumb img">
                   </div>
                   <div class="bd-breadcrumb__content text-center">
                      <h1 class="bd-breadcrumb__title mb-20">Dining / Restaurant</h1>
                      <div class="bd-breadcrumb__list">
                         <span><a href="index.html">home</a></span>
                         <span>Dining</span>
                      </div>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </div>
 </section>
 <!-- breadcrumb area end here  -->

 <!-- opening time area start here -->
 <section class="bd-restaurant-opening-area p-relative">
    <div class="bd-restaurant-opening__bg" data-background="assets/img/bg/restaurant-bg.jpg"></div>
    <div class="container">
       <div class="row">
          <div class="col-lg-6">
             <div class="bd-restaurant-opening__content pt-150 pb-150 wow fadeInUp" data-wow-delay=".5s">
                <div class="bd-restaurant-opening__video-btn mb-40">
                   <a href="https://www.youtube.com/watch?v=4K6Sh1tsAW4" class="popup-video"><i
                         class="fa-sharp fa-solid fa-play"></i></a>
                </div>
                <div class="bd-section__title-wrapper is-white">
                   <p class="bd-section__subtitle mb-20">find desire foods</p>
                   <h2 class="bd-section__title mb-40">Fine Dining in royel palace
                   </h2>
                </div>
                <div class="bd-restaurant-opening__btn">
                   <a href="" class="bd-btn">book our hotel now<span><i
                            class="fa-regular fa-arrow-right-long"></i></span></a>
                </div>
             </div>
          </div>
          <div class="col-lg-6">
             <div class="bd-restaurant-opening theme-bg-2 pt-120 pb-120 wow fadeInUp" data-wow-delay=".5s">
                <div class="bd-restaurant-opening__content-2">
                   <h3 class="bd-restaurant-opening__title mb-30">opening Hours</h3>
                   <div class="bd-restaurant-opening__list">
                      <ul>
                         <li>
                            <span><i class="flaticon-check-circle"></i>Breakfast</span>
                            <span><i class="flaticon-check-circle"></i>7am - 11am</span>
                         </li>
                         <li>
                            <span><i class="flaticon-check-circle"></i>All day dining</span>
                            <span><i class="flaticon-check-circle"></i>12am - 12pm</span>
                         </li>
                         <li>
                            <span><i class="flaticon-check-circle"></i>Afternoon tea</span>
                            <span><i class="flaticon-check-circle"></i>2:30pm - 4:30pm</span>
                         </li>
                      </ul>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </div>
 </section>
 <!-- opening time area  end here -->



 <!-- facility slider area start here  -->
 {{-- <section class="bd-facility-slider-area pt-150 pb-75 p-relative fix">
    <div class="bd-facility-side__shape-wrap">
       <div class="bd-facility-side__shape-1">
          <img src="assets/img/shape/facility-slide-1.png" alt="image not found">
       </div>
       <div class="bd-facility-side__shape-2">
          <img src="assets/img/shape/facility-slide-2.png" alt="image not found">
       </div>
    </div>
    <div class="bd-facility-slider__wrap p-relative">
       <div class="container">
          <div class="row wow fadeInUp" data-wow-delay=".5s">
             <div class="col-12">
                <div class="bd-facility-slider__nav-wrap p-relative">
                   <div class="bd-facility-slider__nav">
                      <div class="bd-facility-slider__paginaton"></div>
                   </div>
                </div>
             </div>
          </div>
       </div>
       <div class="bd-facility-active swiper-container wow fadeInUp" data-wow-delay=".5s">
          <div class="swiper-wrapper">
             <div class="swiper-slide">
                <div class="container">
                   <div class="row align-items-center">
                      <div class="col-lg-6">
                         <div class="bd-facility-slider__thumb-wrap mb-60">
                            <div class="bd-facility-slider__thumb">
                               <img src="assets/img/facility/facility-slider-7.jpg" alt="image not found">
                            </div>
                            <div class="bd-facility-slider__thumb-2 text-end">
                               <img src="assets/img/facility/facility-slider-2.jpg" alt="image not found">
                            </div>
                         </div>
                      </div>
                      <div class="col-lg-6">
                         <div class="bd-facility-2__content mb-60">
                            <div class="bd-section__title-wrapper">
                               <span class="bd-section__subtitle mb-20">RESTAURANTS</span>
                               <h2 class="bd-section__title bd-facility-title mb-30"><a
                                     href="service-details.html">royel-Made
                                     Awesome food
                                     for Every Single Guest</a></h2>
                            </div>
                            <p><span>The three floors of the hotel contain 227 stylish and luxurious rooms
                                  made for an
                                  indulgent
                                  holiday, including 12 sumptuous suites with a sea view.</span></p>
                            <p>The Gage Hotel offers unforgettable food and drink options. A memorable stay
                               with
                               delicious
                               breakfast Join us in celebrating the new year with a little special surprise
                               from our
                               end.
                               Enjoy dinner at the award-winning</p>
                            <div class="bd-facility-2__list mb-65">
                               <ul>
                                  <li><i class="flaticon-check-circle"></i><span>Chinese Food</span></li>
                                  <li><i class="flaticon-check-circle"></i><span>Italian Food</span></li>
                                  <li><i class="flaticon-check-circle"></i><span>Japanese Food</span></li>
                                  <li><i class="flaticon-check-circle"></i><span>Indian Food</span></li>
                               </ul>
                            </div>
                            <div class="bd-facility-slider__btn">
                               <a href="dining.html" class="bd-btn-2">View food menu<i
                                     class="fa-regular fa-arrow-right-long"></i></a>
                               <div class="bd-facility-slider__btn-shape d-none d-lg-block">
                                  <img src="assets/img/shape/facility-btn.svg" alt="image not found">
                               </div>
                            </div>
                         </div>
                      </div>
                   </div>
                </div>
             </div>
             <div class="swiper-slide">
                <div class="container">
                   <div class="row align-items-center">
                      <div class="col-lg-6">
                         <div class="bd-facility-slider__thumb-wrap mb-60">
                            <div class="bd-facility-slider__thumb">
                               <img src="assets/img/facility/facility-slider-3.jpg" alt="image not found">
                            </div>
                            <div class="bd-facility-slider__thumb-2 text-end">
                               <img src="assets/img/facility/facility-slider-4.jpg" alt="image not found">
                            </div>
                         </div>
                      </div>
                      <div class="col-lg-6">
                         <div class="bd-facility-2__content">
                            <div class="bd-section__title-wrapper">
                               <span class="bd-section__subtitle mb-20">modern fitness center</span>
                               <h2 class="bd-section__title bd-facility-title mb-30"><a
                                     href="service-details.html">royel-fitness club for
                                     health freak guest</a></h2>
                            </div>
                            <p><span>Spa center inilla duiman at elit finibus viverra nec a lacus themo the
                                  drudea
                                  seneoice misuscipit non sagie the fermen. </span></p>
                            <p>The Gage Hotel offers unforgettable food and drink options. A memorable stay
                               with
                               delicious breakfast Join us in celebrating the new year with a little special
                               surprise
                               from our end.
                               Enjoy dinner at the award-winning</p>
                            <div class="bd-facility-2__list mb-65">
                               <ul>
                                  <li><i class="flaticon-check-circle"></i><span>smart gym centre</span></li>
                                  <li><i class="flaticon-check-circle"></i><span>women gym</span></li>
                                  <li><i class="flaticon-check-circle"></i><span>expert triner</span></li>
                                  <li><i class="flaticon-check-circle"></i><span>24/7</span></li>
                               </ul>
                            </div>
                            <div class="bd-facility-slider__btn">
                               <a href="service-details.html" class="bd-btn-2">View more<i
                                     class="fa-regular fa-arrow-right-long"></i></a>
                               <div class="bd-facility-slider__btn-shape d-none d-lg-block">
                                  <img src="assets/img/shape/facility-btn.svg" alt="image not found">
                               </div>
                            </div>
                         </div>
                      </div>
                   </div>
                </div>
             </div>
             <div class="swiper-slide">
                <div class="container">
                   <div class="row align-items-center">
                      <div class="col-lg-6">
                         <div class="bd-facility-slider__thumb-wrap mb-60">
                            <div class="bd-facility-slider__thumb">
                               <img src="assets/img/facility/facility-slider-5.jpg" alt="image not found">
                            </div>
                            <div class="bd-facility-slider__thumb-2 text-end">
                               <img src="assets/img/facility/facility-slider-6.jpg" alt="image not found">
                            </div>
                         </div>
                      </div>
                      <div class="col-lg-6">
                         <div class="bd-facility-2__content">
                            <div class="bd-section__title-wrapper">
                               <span class="bd-section__subtitle mb-20">club & pool</span>
                               <h2 class="bd-section__title bd-facility-title mb-30"><a
                                     href="service-details.html">royel-The Health Club &
                                     Pool for smart guest</a></h2>
                            </div>
                            <p><span>Spa center inilla duiman at elit finibus viverra nec a lacus themo the
                                  drudea
                                  seneoice misuscipit non sagie the fermen. </span></p>
                            <p>The Gage Hotel offers unforgettable food and drink options. A memorable stay
                               with
                               delicious breakfast Join us in celebrating the new year with a little special
                               surprise
                               from our end.
                               Enjoy dinner at the award-winning</p>
                            <div class="bd-facility-2__list mb-65">
                               <ul>
                                  <li><i class="flaticon-check-circle"></i><span>swimming pool</span></li>
                                  <li><i class="flaticon-check-circle"></i><span>Entertaiment</span></li>
                                  <li><i class="flaticon-check-circle"></i><span>party Club</span></li>
                                  <li><i class="flaticon-check-circle"></i><span>Health Checkup</span></li>
                               </ul>
                            </div>
                            <div class="bd-facility-slider__btn">
                               <a href="service-details.html" class="bd-btn-2">read more<i
                                     class="fa-regular fa-arrow-right-long"></i></a>
                               <div class="bd-facility-slider__btn-shape d-none d-lg-block">
                                  <img src="assets/img/shape/facility-btn.svg" alt="image not found">
                               </div>
                            </div>
                         </div>
                      </div>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </div>
 </section> --}}
 <!-- facility slider area end here  -->

  <!-- foodmenu area start here  -->
  <section class="bd-foodmenu-area p-relative pt-150 pb-150">
    <div class="bd-foodmenu__bg" data-background="assets/img/bg/foodmenu-bg.jpg"></div>
    <div class="container">
        <div class="row justify-content-center wow fadeInUp" data-wow-delay=".5s">
            <div class="col-lg-8">
                <div class="bd-section__title-wrapper is-white text-center">
                    <p class="bd-section__subtitle mb-20">food menus</p>
                    <h2 class="bd-section__title mb-35">Delicious Food Forever</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="bd-foodmenu__tab">
        
        <div class="tab-content wow fadeInUp" data-wow-delay=".5s" id="myTabContent">
            <div class="tab-pane fade show active" id="foodtab-one" role="tabpanel"
                aria-labelledby="foodtab-one-tab">
                <div class="bd-foodmenu">
                    <div class="swiper-container bd-foodmenu-active">
                        <div class="swiper-wrapper">
                            @foreach ($foods as $item)
                              <div class="swiper-slide">
                                <div class="bd-foodmenu__item">
                                    <div class="bd-foodmenu__item-thumb mb-30">
                                        <a href="service-details.html"><img
                                                src="{{ Voyager::image($item->image) }}"
                                                alt="foodmenu image"></a>
                                    </div>
                                    <div class="bd-foodmenu__item-content">
                                        <h3 class="bd-foodmenu__item-title mb-10"><a
                                                href="service-details.html">{{$item->title}}</a></h3>
                                        <p style="display: -webkit-box;
                                        -webkit-line-clamp: 3;
                                        -webkit-box-orient: vertical;  
                                        overflow: hidden;">{{$item->desc}}</p>
                                        <div class="bd-foodmenu__item-price mt-35">
                                            <span>{{$item->price}}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>  
                            @endforeach
                            
                           
                        </div>
                    </div>
                </div>
            </div>
           
        </div>
    </div>
</section>
<!-- foodmenu area end here  -->

@stop
