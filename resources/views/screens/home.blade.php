@extends('layouts.main')

@section('content')
    <!-- main area start here  -->
    <main>
       
        <section class="bd-hero-area p-relative fix">
            <div class="swiper-container bd-hero-active">
                <div class="swiper-wrapper">
                    @foreach ($homeBanners as $item)
                        <div class="swiper-slide">
                            <div class="bd-hero-wrap-2 p-relative">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="bd-hero">
                                                <!-- hero area bg  -->
                                                <div class="bd-hero__bg bd-hero__bg-3"
                                                    data-background="{{ Voyager::image($item->image) }}">
                                                </div>
                                                <div class="bd-hero__content bd-hero__content-3 is-white">
                                                    <div class="bd-hero__subtitle animate__animated"
                                                        data-animation="fadeInUp" data-delay=".3s">
                                                        <span>{{__('Luxury Hotel')}}</span>
                                                    </div>
                                                    <div class="bd-hero__title-wrap p-relative">
                                                        <h5 class="bd-hero__title mb-70 animate__animated"
                                                            data-animation="fadeInUp" data-delay=".5s">{{__('The Ultimate Luxury Experience')}}:
                                                            <br>
                                                            {{ $item->translate()->description }}
                                                        </h5>
                                                    </div>
                                                    <div class="bd-hero__btn d-inline-flex animate__animated"
                                                        data-animation="fadeInUp" data-delay=".7s">
                                                        <a href="rooms.html" class="bd-btn">
                                                            {{__('Check Availability')}}<span><i
                                                                    class="fa-regular fa-arrow-right-long"></i></span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="bd-hero__slider-number d-none d-lg-inline-flex p-absolute">
                                                <span class="current">{{ $item->index }}</span>
                                                <span class="divider">/</span>
                                                <span class="total">3</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="bd-hero__slider-nav p-relative d-none d-sm-block">
                            <div class="bd-hero-pagination bd-swiper-pagination"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
       

        <!-- feature area start here  -->
        <div class="bd-feature theme-bg-2 pt-145 p-relative pb-90 mpt-80">
            <div class="container">
                <div class="bd-feature__list pt-0">
                    <div class="row wow fadeInUp" data-wow-delay=".5s">
                        <div class="col-12">
                            <div class="bd-feature__list-content">

                                @foreach ($services as $item)
                                    <div class="bd-feature__list-item ryl-up-down-anim mb-40">
                                        <i class="{{ $item->icon }}"></i>
                                        <p>{{ $item->translate()->title }}</p>
                                    </div>
                                @endforeach

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- feature area end here  -->

        <!-- about area start  -->
        <section class="bd-about__area pt-150 pb-150 bg-theme-2">
            <div class="container">
                <div class="row align-items-center g-4 g-lg-0 mb-5 mb-lg-0 wow fadeInUp" data-wow-delay=".5s">
                    <div class="col-lg-6">
                        <div class="section-image about-4__img">
                            <img class="img-full" src="{{ Voyager::image($about->image) }}" alt="image not found">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="section-content p-lg-5">
                            <div class="bd-section__title-wrapper">
                                <p class="bd-section__subtitle mb-20">{{__('About Us')}}</p>
                                <h2 class="bd-section__title bd-facility-title mb-30">{{$about->translate()->title}}</h2>
                                <p class="mb-30">{{$about->translate()->excerpt}}</p>
                                <div class="section-btn">
                                    <a href="{{route('about')}}" class="bd-btn theme-btn">
                                        {{__('About Us')}} <span><i class="fa-regular fa-arrow-right-long"></i></span>
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row align-items-center g-4 g-lg-0 mb-0 mb-lg-0 wow fadeInUp" data-wow-delay=".5s">
                    <div class="col-lg-6 order-lg-2">
                        <div class="section-image about-4__img">
                            <img class="img-full" src="{{ Voyager::image($about_room->image) }}" alt="image not found">
                        </div>
                    </div>
                    <div class="col-lg-6 order-lg-1">
                        <div class="section-content p-lg-5">
                            <div class="bd-section__title-wrapper">
                                <p class="bd-section__subtitle mb-20">{{__('Rooms & Suites')}}</p>
                                <h2 class="bd-section__title bd-facility-title mb-30">{{$about_room->translate()->title}}</h2>
                                <p class="mb-30">{{$about_room->translate()->excerpt}}</p>
                                <div class="section-btn">
                                    <a href="{{route('rooms')}}" class="bd-btn theme-btn">
                                        {{__('Choose room')}} <span><i class="fa-regular fa-arrow-right-long"></i></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- about area end  -->

        <!-- room area end here  -->
        <section class="bd-room-area p-relative pt-150 pb-120">
            <div class="bd-room__bg" data-background="assets/img/bg/bd-room.jpg"></div>
            <div class="container">
                <div class="row align-items-end wow fadeInUp" data-wow-delay=".5s">
                    <div class="col-xl-12 col-lg-12">
                        <div class="bd-section__title-wrapper text-center is-white">
                            <p class="bd-section__subtitle mb-20"></p>
                            <h2 class=" bd-section__title mb-55 mmb-30">{{__('Rooms & Suites')}}
                            </h2>
                        </div>
                    </div>
                </div>
                <div class="row wow fadeInUp" data-wow-delay=".5s">
                    @foreach($rooms as $item) 
                    <div class="col-xxl-4 col-xl-6 col-lg-6">
                        <div class="bd-room mb-30">
                            <div class="bd-room__content">
                                <h4 class="bd-room__title mb-20"><a href="{{ route('room.show', $item->slug) }}">{{$item->translate()->title}}</a></h4>
                                <div class="bd-room__price mb-30">
                                    <p>{{ number_format($item->price) }} <span>/{{__('Night')}}</span></p>
                                </div>
                                <div class="bd-room__thumb-wrap mb-30">
                                    <div class="bd-room__thumb">
                                        <img src="{{ Voyager::image($item->image) }}" alt="room image">
                                    </div>
                                    <div class="bd-room__details">
                                        <p>{{$item->translate()->description}}.</p>
                                        <div class="bd-room__list">
                                            <div class="bd-room__list-item">
                                                <i class="flaticon-taxi"></i>
                                                <p>Pick Up & Drop</p>
                                            </div>
                                            <div class="bd-room__list-item">
                                                <i class="flaticon-garage"></i>
                                                <p>Parking Space</p>
                                            </div>
                                            <div class="bd-room__list-item">
                                                <i class="flaticon-breakfast"></i>
                                                <p>Breakfast</p>
                                            </div>
                                            <div class="bd-room__list-item">
                                                <i class="flaticon-swimming-pool"></i>
                                                <p>Swimming Pool</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @if (Auth::check())
                                <div class="bd-room__btn">
                                 <a href="{{ route('booking') }}"><button type="submit">{{ __('Book Now') }} <i
                                             class="fa-regular fa-arrow-right-long"></i></button></a>
                                 </div>
                                @else
                                <div class="bd-room__btn">
                                 <a href="{{ route('login') }}"><button type="submit">{{ __('Book Now') }} <i
                                             class="fa-regular fa-arrow-right-long"></i></button></a>
                                 </div>
                                @endif
                                {{-- <div class="bd-room__btn">
                                    <a href="{{route('booking')}}"><span>{{__('Book Now')}}</span> <i
                                            class="fa-regular fa-arrow-right-long"></i></a>
                                </div> --}}
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </section>
        <!-- room area end here  -->

        <!-- amenities area start  -->
        <section class="amenities-area pt-150 pb-150">
            <div class="container">
                <div class="row justify-content-center wow fadeInUp" data-wow-delay=".5s"
                    style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">
                    <div class="col-lg-8">
                        <div class="bd-section__title-wrapper text-center">
                            <p class="bd-section__subtitle mb-20">{{__('Book Now')}}</p>
                            <h2 class=" bd-section__title mb-75 mbs-30">{{__('Welcome To TheKing Hotel')}}
                                <br> {{__('Book Your Stay Today')}}.
                            </h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="">
                <div class="swiper-container bd-amenities-slider wow fadeInUp" data-wow-delay=".5s">
                    <div class="swiper-wrapper amenities-slider-wrapper">
                        @foreach($utilities as $item)
                        <div class="swiper-slide">
                            <div class="amenities__box">
                                <div class="amenities__img">
                                    <a href="#"><img src="{{ Voyager::image($item->image) }}"
                                            alt="image not found"></a>
                                </div>
                                <div class="amenities__desc">
                                    <h4 class="amenities__title"><a href="#">{{$item->translate()->title}}</a></h4>
                                    <p class="amenities__meta-desc">{{$item->translate()->desc}}</p>
                                    <div class="amenities__btn mt-35">
                                        <a href="{{route('contact')}}" class="bd-btn-2">{{__('Get the service')}}<i
                                                class="fa-regular fa-arrow-right-long"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>

                </div>
                <div class="bd-amenities-slider-nav mt-50 wow fadeInUp" data-wow-delay=".5s">
                    <div class="bd-amenities-slider-prev square-nav"><i class="fa-light fa-angle-left"></i></div>
                    <div class="bd-amenities-slider-next square-nav"><i class="fa-light fa-angle-right"></i></div>
                </div>
            </div>
        </section>
        <!-- amenities area end  -->

        <!-- foodmenu area start here  -->
        <section class="bd-foodmenu-area p-relative pt-150 pb-150">
            <div class="bd-foodmenu__bg" data-background="assets/img/bg/foodmenu-bg.jpg"></div>
            <div class="container">
                <div class="row justify-content-center wow fadeInUp" data-wow-delay=".5s">
                    <div class="col-lg-8">
                        <div class="bd-section__title-wrapper is-white text-center">
                            <p class="bd-section__subtitle mb-20">Menu</p>
                            <h2 class="bd-section__title mb-35">{{__('Delicious Food Forever')}}</h2>
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
                                                        href="service-details.html">{{$item->translate()->title}}</a></h3>
                                                <p style="display: -webkit-box;
                                                -webkit-line-clamp: 3;
                                                -webkit-box-orient: vertical;  
                                                overflow: hidden;">{{$item->translate()->desc}}</p>
                                                <div class="bd-foodmenu__item-price mt-35">
                                                    <span>{{ number_format($item->price) }}đ</span>
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

        <!-- gallery area start  -->
        <section class="gallery-area pt-150 pb-130">
            <div class="container">
                <div class="row align-items-end wow fadeInUp" data-wow-delay=".5s">
                    <div class="col-xl-12 col-lg-12">
                        <div class="bd-section__title-wrapper text-center">
                            <p class="bd-section__subtitle mb-20">{{__('Gallery')}}</p>
                            <h2 class=" bd-section__title mb-55 mmb-30">{{__('Our Gallery')}}
                            </h2>
                        </div>
                    </div>
                </div>
                <div class="row wow fadeInUp" data-wow-delay=".5s">
                    <div class="col-xl-12">
                        <div class="gallery__img-wrapper">
                            @foreach ($galleties as $item)
                               <div class="gallery__img">
                                <a href="{{ Voyager::image($item->image) }}" class="popup-image"><img
                                        src="{{ Voyager::image($item->image) }}" alt="gallery-img"></a>
                            </div> 
                            @endforeach
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- gallery area end  -->

        <!-- offer area start here -->
        <section class="bd-offer-area pt-150 pb-150 theme-bg-2">
            <div class="container">
                <div class="row align-items-center wow fadeInUp" data-wow-delay=".5s">
                    <div class="col-md-8">
                        <div class="bd-section__title-wrapper">
                            <p class="bd-section__subtitle mb-20">Offers</p>
                            <h2 class="bd-section__title mb-55  mmb-30">{{__('The King Limited Period Offer')}}</h2>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="bd-offer-slider-nav mb-50 d-flex justify-content-md-end">
                            <div class="bd-offer-slider-prev square-nav"><i class="fa-light fa-angle-left"></i></div>
                            <div class="bd-offer-slider-next square-nav"><i class="fa-light fa-angle-right"></i></div>
                        </div>
                    </div>
                </div>
                <div class="row wow fadeInUp" data-wow-delay=".5s">
                    <div class="col-12">
                        <div class="swiper-container bd-offer-active mmt-20">
                            <div class="swiper-wrapper">
                                @foreach ($offers as $offer)
                                    <div class="swiper-slide">
                                    <div class="bd-offer">
                                        <div class="bd-offer__thumb p-relative">
                                            <img src="{{ Voyager::image($offer->image) }}" alt="image not found">
                                            <div class="bd-offer__meta">
                                                <span>{{$offer->discount}}% off</span>
                                            </div>
                                            <div class="bd-offer__content-visble">
                                                <h4 class="bd-offer__title-2"><a href="offer-details.html">{{$offer->translate()->title}}</a></h4>
                                            </div>
                                            <div class="bd-offer__content">
                                                <h4 class="bd-offer__title"><a href="offer-details.html">{{$offer->translate()->title}}</a>
                                                </h4>
                                                <p>{{$offer->translate()->desc}}</p>
                                                {{-- <div class="bd-offer__btn">
                                                    <a href="{{route('book')}}">{{__('Book Now')}}<i
                                                            class="fa-regular fa-angle-right"></i></a>
                                                </div> --}}
                                                @if (Auth::check())
                                                <div class="bd-offer__btn">
                                                 <a href="{{ route('booking') }}"><button type="submit">{{ __('Book Now') }} <i
                                                             class="fa-regular fa-arrow-right-long"></i></button></a>
                                                 </div>
                                                @else
                                                <div class="bd-offer__btn">
                                                 <a href="{{ route('login') }}"><button type="submit">{{ __('Book Now') }} <i
                                                             class="fa-regular fa-arrow-right-long"></i></button></a>
                                                 </div>
                                                @endif
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
        </section>
        <!-- offer area end here -->

    </main>
    <!-- main area end here  -->
@stop
