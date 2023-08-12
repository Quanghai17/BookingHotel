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
                                <h1 class="bd-breadcrumb__title mb-20">{{__('Rooms & Suites')}}</h1>
                                <div class="bd-breadcrumb__list">
                                    <span><a href="{{route('home')}}">{{__('Home')}}</a></span>
                                    <span>{{__('Rooms & Suites')}}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb area end here  -->

    <!-- room area end here  -->
    <section class="bd-room-area p-relative pt-150 pb-120">
        <div class="bd-room__bg" data-background="assets/img/bg/bd-room.jpg"></div>
        <div class="container">
            <div class="row align-items-end wow fadeInUp" data-wow-delay=".5s">
                <div class="col-xl-12 col-lg-12">
                    <div class="bd-section__title-wrapper text-center is-white">
                        <p class="bd-section__subtitle mb-20">Rooms</p>
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
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    <!-- room area end here  -->

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
                                    <p>{{ $item->title }}</p>
                                </div>
                            @endforeach

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- feature area end here  -->

     <!-- booking area start here  -->
     {{-- <section class="bd-booking-area p-relative pt-150 pb-150">
        <div class="bd-booking__bg" data-background="assets/img/bg/booking-bg.jpg"></div>
        <div class="bd-booking-form-area-2">
           <div class="container">
              <div class="row wow fadeInUp" data-wow-delay=".5s">
                 <div class="col-12">
                    <div class="bd-section__title-wrapper text-center is-white">
                       <p class="bd-section__subtitle mb-20">find desire rooms</p>
                       <h2 class="bd-section__title mb-55">search your rooms</h2>
                    </div>
                 </div>
              </div>
              <div class="row wow fadeInUp" data-wow-delay=".5s">
                 <div class="col-12">
                    <div class="bd-booking__form-wrap-2">
                       <div class="bd-booking__form-2 is-dark p-relative">
                          <form action="#">
                             <div class="bd-booking__input-wrap-2">
                                <div class="bd-booking__input location">
                                   <label>LOCATION</label>
                                   <div class="bd-booking__input-inner bd-booking__select location">
                                      <select class="bd-nice-select">
                                         <option>ATLANTIS, THE PALM</option>
                                         <option>ATLANTIS, THE PALM</option>
                                         <option>ATLANTIS, THE PALM</option>
                                      </select>
                                   </div>
                                </div>
                                <div class="bd-booking__input">
                                   <label>Check in / out</label>
                                   <div class="bd-booking__input-inner">
                                      <div class="bd-booking__input-date">
                                         <input type="text" class="bd-date-picker" placeholder="check in">
                                      </div>
                                      <div class="bd-booking__input-date text-xl-end">
                                         <input type="text" class="bd-date-picker bd-booking__input-date"
                                            placeholder="check out">
                                      </div>
                                   </div>
                                </div>
                                <div class="bd-booking__input">
                                   <label>GUESTS</label>
                                   <div class="bd-booking__input-inner bd-booking__select">
                                      <select class="bd-nice-select">
                                         <option>ADULTS</option>
                                         <option>01 ADULTS</option>
                                         <option>02 ADULTS</option>
                                         <option>03 ADULTS</option>
                                         <option>04 ADULTS</option>
                                         <option>05 ADULTS</option>
                                      </select>
                                      <select class="bd-nice-select">
                                         <option>CHILDREN</option>
                                         <option>01 CHILDREN</option>
                                         <option>02 CHILDREN</option>
                                         <option>03 CHILDREN</option>
                                         <option>04 CHILDREN</option>
                                         <option>05 CHILDREN</option>
                                      </select>
                                   </div>
                                </div>
                                <div class="bd-booking__input-single room-input">
                                   <label>Rooms</label>
                                   <select class="bd-nice-select">
                                      <option>1</option>
                                      <option>2</option>
                                      <option>3</option>
                                      <option>4</option>
                                   </select>
                                </div>
                             </div>
                             <div class="bd-booking__submit bd-booking__submit-2 is-dark">
                                <button type="submit"><i class="fa-regular fa-arrow-right-long"></i></button>
                             </div>
                          </form>
                       </div>
                    </div>
                 </div>
              </div>
           </div>
        </div>
     </section> --}}
     <!-- booking area end here  -->

@stop
