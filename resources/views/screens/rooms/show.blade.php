<!DOCTYPE html>
<html lang="{{ App::getLocale() }}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="{{ $pageMeta['meta_description'] ?? setting('site.description') }}" />
    <meta name="content" content="{{ $pageMeta['meta_content'] ?? setting('site.content') }}" />
    <meta name="keywords" content="{{ $pageMeta['title'] ?? setting('site.title') }}">

    <title>{{ $pageMeta['title'] ?? setting('site.title') }}</title>

    <link rel="shortcut icon" href="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}" type="image/png">

    <meta property="og:image"
        content="{{ \TCG\Voyager\Facades\Voyager::image($pageMeta['image'] ?? setting('site.logo')) }}" />
    <meta property="og:url" content="{{ \Request::fullUrl() }}" />
    <meta property="og:type" content="Website" />
    <meta property="og:title" content="{{ $pageMeta['title'] ?? setting('site.title') }}" />
    <meta property="og:description" content="{{ $pageMeta['meta_description'] ?? setting('site.description') }}" />
    <meta property="og:content" content="{{ $pageMeta['meta_content'] ?? setting('site.content') }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Place favicon.ico in the root directory -->
    {{-- <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo/favicon.png"> --}}

    <!-- CSS here -->
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/meanmenu.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/animate.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/swiper-bundle.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/slick.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/nouislider.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/jquery-ui.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/backtotop.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/magnific-popup.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/nice-select.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/flaticon_royel.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/font-awesome-pro.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/spacing.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/main.css') }}">

    @yield('style')
    @stack('style')

    <script type="application/ld+json">
    {
      "@context": "http://schema.org",
      "@type": "Website",
      "title": "{{ $pageMeta['title'] ?? setting('site.title') }}",
      "description": "{{ $pageMeta['meta_description'] ?? setting('site.description') }}",
      "address": {
        "@type": "PostalAddress",
        "addressLocality": "{{ setting('site.address') }}"
      },
      "telephone": "{{ setting('site.phone') }}",
      "email": "{{ setting('site.email') }}"
    }
  </script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id={{ setting('site.google_analytics_id') }}"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', '{{ setting('site.google_analytics_id') }}');
    </script>

    @yield('head')
    @stack('head')

</head>

<body>
    @include('components.alert')

    <div class="mouseCursor cursor-outer"></div>
    <div class="mouseCursor cursor-inner"><span>Drag</span></div>
    <!-- pre loader area start -->
    {{-- <div id="loading">
      <div id="preloader">
         <div class="preloader-thumb-wrap">
            <div class="preloader-thumb">
               <div class="preloader-border"></div>
               <img src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}" alt="img not found!">
            </div>
         </div>
      </div>
   </div> --}}
    <!-- pre loader area end -->

    <!-- back to top start -->
    <div class="progress-wrap">
        <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
        </svg>
    </div>
    <!-- back to top end -->

    @include('components.header')

    <!-- main area start here  -->
    <main>
        <!-- breadcrumb area start here  -->
        <section class="bd-breadcrumb-area p-relative">
            <div class="bd-breadcrumb__wrapper">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-10">
                            <div class="bd-breadcrumb d-flex align-items-center justify-content-center">
                                <div class="bd-breadcrumb__thumb">
                                    <img src="{{ asset('assets/img/breadcrumb/breadcrumb-bg.png') }}"
                                        alt="breadcrumb img">
                                </div>
                                <div class="bd-breadcrumb__content text-center">
                                    <h1 class="bd-breadcrumb__title mb-20">{{ $room->translate()->title }}</h1>
                                    <div class="bd-breadcrumb__list">
                                        <span><a href="{{ route('home') }}">{{ __('Home') }}</a></span>
                                        <span>{{ $room->translate()->title }}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb area end here  -->

        <section class="bd-room-details-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <div class="bd-room-details__wrap mb-60">
                            <div class="bd-room-details__thumb-wrap mb-10">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="bd-room-details__thumb mb-30 is-lg">
                                            <img src="{{ Voyager::image($room->image) }}" alt="image not found">
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="bd-room-details__content mb-75">
                                <h3 class="bd-room-details__title  mb-30">{{ $room->translate()->title }}</h3>
                                <p class="bdFadeUp">{!! $room->translate()->body !!}
                                </p>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="bd-sidebar__wrap mb-60">
                            <div class="bd-booking-3 mb-40 ">
                                <div class="bd-booking-3__content">
                                    <h3 class="bd-booking-3__title mb-15">{{ $room->translate()->title }}...</h3>
                                    <div class="bd-booking-3__price">
                                        <p>
                                            <i class="flaticon-group"></i>
                                            <span> 2 {{__('Adults')}}</span>
                                        </p>
                                        <p>
                                            <span>{{ number_format($room->price) }}</span>/ {{ __('Night') }}
                                        </p>
                                    </div>

                                </div>
                                <div class="bd-booking-3__list">
                                    <ul>
                                        <li><i class="flaticon-check-circle"></i>1 King bed or 2 Twin Bed(s)</li>
                                        {{-- <li><i class="flaticon-check-circle"></i>538 sq.ft</li>
                                        <li><i class="flaticon-check-circle"></i>Garden View</li> --}}
                                    </ul>
                                </div>
                                @if (Auth::check())
                                <div class="bd-booking-3__submit mt-15">
                                 <a href="{{ route('booking') }}"><button type="submit">{{ __('Book Now') }} <i
                                             class="fa-regular fa-arrow-right-long"></i></button></a>
                                 </div>
                                @else
                                <div class="bd-booking-3__submit mt-15">
                                 <a href="{{ route('login') }}"><button type="submit">{{ __('Book Now') }} <i
                                             class="fa-regular fa-arrow-right-long"></i></button></a>
                                 </div>
                                @endif
                                
                            </div>
                            {{-- <div class="bd-booking-3-info ">
                                <h3 class="bd-booking-3__title">Extra Services</h3>
                                <div class="bd-booking-3__list">
                                    <ul>
                                        <li><i class="flaticon-check-circle"></i>Room Cleaning</li>
                                        <li><i class="flaticon-check-circle"></i>Evening Party Manage</li>
                                        <li><i class="flaticon-check-circle"></i>Iron & loundry</li>
                                        <li><i class="flaticon-check-circle"></i>Spa & Message</li>
                                    </ul>
                                </div>
                            </div> --}}
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- room area start here  -->
        <section class="bd-room-area p-relative theme-bg-2 pt-150 pb-120">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-8">
                        <div class="bd-section__title-wrapper ">

                            <h2 class="bd-section__title mb-55 ">{{ __('Similar Rooms') }}
                            </h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    @foreach ($recentRoom as $item)
                        <div class="col-xxl-4 col-xl-6 col-lg-6">
                            <div class="bd-room mb-30">
                                <div class="bd-room__content">
                                    <h4 class="bd-room__title mb-20"><a
                                            href="{{ route('room.show', $item->slug) }}">{{ $item->translate()->title }}</a>
                                    </h4>
                                    <div class="bd-room__price mb-30">
                                        <p>{{ number_format($item->price) }} <span>/{{ __('Night') }}</span></p>
                                    </div>
                                    <div class="bd-room__thumb-wrap mb-30">
                                        <div class="bd-room__thumb">
                                            <img src="{{ Voyager::image($item->image) }}" alt="room image">
                                        </div>
                                        <div class="bd-room__details">
                                            <p>{{ $item->desc }}</p>
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
                                    <div class="bd-room__btn">
                                        <a href="{{ route('booking') }}"><span>{{ __('Book Now') }}</span> <i
                                                class="fa-regular fa-arrow-right-long"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
        <!-- room area end here  -->



    </main>
    <!-- main area end here  -->

    @include('components.footer')

    <!-- JS here -->
    <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="assets/js/vendor/jquery.js"></script>
    <script src="{{ asset('assets/js/bootstrap-bundle.js') }}"></script>
    <script src="{{ asset('assets/js/meanmenu.js') }}"></script>
    <script src="{{ asset('assets/js/swiper-bundle.js') }}"></script>
    <script src="{{ asset('assets/js/slick.js') }}"></script>
    <script src="{{ asset('assets/js/magnific-popup.js') }}"></script>
    <script src="{{ asset('assets/js/backtotop.js') }}"></script>
    <script src="{{ asset('assets/js/nice-select.js') }}"></script>
    <script src="{{ asset('assets/js/sidebar.js') }}"></script>
    <script src="{{ asset('assets/js/isotope-pkgd.js') }}"></script>
    <script src="{{ asset('assets/js/imagesloaded-pkgd.js') }}"></script>
    <script src="{{ asset('assets/js/ajax-form.js') }}"></script>
    <script src="{{ asset('assets/js/jquery-ui.min.js') }}"></script>
    <script src="{{ asset('assets/js/settings.js') }}"></script>
    <script src="{{ asset('assets/js/wow.min.js') }}"></script>
    <script src="{{ asset('assets/js/main.js') }}"></script>
    <script src="{{ asset('assets/js/custom.js') }}"></script>

    @yield('js')
    @stack('js')
</body>

</html>
