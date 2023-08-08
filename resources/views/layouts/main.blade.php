<!DOCTYPE html>
<html lang="{{ App::getLocale() }}">

<head>
  <!--------------------DEFAULT--------------------->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="canonical" href="{{ request()->url() }}" />
  <meta name="description" content="{{ $description ?? setting('site.description') }}">

  <title>{{ $pageMeta['title'] ?? setting('site.title') }}</title>

  <link rel="icon" href="{{ Voyager::image(setting('site.logo')) }}" type="image/png" sizes="16x16">
  <meta property="og:image" content="{{ !empty($og_image) ? Voyager::image($og_image) : Voyager::image(setting('site.logo')) }}" />
  <meta property="og:url" content="{{ \Request::fullUrl() }}" />
  <meta property="og:type" content="Website" />
  <meta property="og:title" content="{{ $pageMeta['title'] ?? setting('site.title') }}" />
  <meta property="og:description" content="{{ $description ?? setting('site.description') }}" />
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <!-- Place favicon.ico in the root directory -->

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
    function gtag(){dataLayer.push(arguments);}
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
   <div id="loading">
      <div id="preloader">
         <div class="preloader-thumb-wrap">
            <div class="preloader-thumb">
               <div class="preloader-border"></div>
               <img src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}" alt="img not found!">
            </div>
         </div>
      </div>
   </div>
   <!-- pre loader area end -->

   <!-- back to top start -->
   <div class="progress-wrap">
      <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
         <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
      </svg>
   </div>
   <!-- back to top end -->

  @include('components.header')

  @yield('content')

  @include('components.footer')

  <!-- JS here -->
  <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/js/vendor/jquery.js"></script>
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
