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
                         <img src="{{ asset('assets/img/breadcrumb/breadcrumb-bg.png')}}" alt="breadcrumb img">
                      </div>
                      <div class="bd-breadcrumb__content text-center">
                         <h1 class="bd-breadcrumb__title mb-20">Blog Details</h1>
                         <div class="bd-breadcrumb__list">
                            <span><a href="index.html">home</a></span>
                            <span>Blog</span>
                         </div>
                      </div>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </section>
    <!-- breadcrumb area end here  -->

    <!-- blog details area start here  -->
    <section class="bd-blog-3-details-area x-clip pb-60">
       <div class="container">
          <div class="row">
             <div class="col-lg-8">
                <div class="bd-blog-3-details-wrapper mb-60">
                   <div class="row">
                      <div class="col-12">
                         <div class="bd-blog-3-details mb-50">
                            <div class="bd-blog-3-details-thumb">
                               <img src="{{ Voyager::image($post->image) }}" alt="blog image">
                            </div>
                            <div class="bd-blog-3-details-meta">
                               <span><i class="fas fa-user"></i> by <a href="blog.html">Jhon</a></span>
                               <span><i class="fas fa-calendar-days"></i> 27 Oct 2022</span>
                               <span><i class="fa-solid fa-comment-dots"></i><a href="blog-details.html">0
                                     Comments</a></span>
                            </div>
                            <div class="bd-blog-3-details-content">
                               <h3 class="bd-blog-3-details-title mt-5 mb-15">{{$post->title}}
                               </h3>
                               <p>
                                  {!!$post->body!!}
                               </p>
                              
                            </div>
                            
                         </div>
                         
                      </div>
                   </div>
                </div>
             </div>
             <div class="col-lg-4">
                <div class="bd-blog-3-sidebar-wrapper mb-60">
                   <div class="bd-blog-3-sidebar mb-50">
                      <h5 class="bd-blog-3-sidebar-title">Search</h5>
                      <div class="bd-blog-3-sidebar-content">
                         <div class="bd-blog-3-search">
                            <form action="#">
                               <div class="bd-blog-3-search-input-2">
                                  <input type="text" placeholder="Type here..." id="bd-blog-3-search-input-label">
                                  <div class="bd-blog-3-search-submit">
                                     <button type="submit"><i class="fa-regular fa-magnifying-glass"></i></button>
                                  </div>
                               </div>
                            </form>
                         </div>
                      </div>
                   </div>
                   <div class="bd-blog-3-sidebar mb-50">
                      <h5 class="bd-blog-3-sidebar-title">Latest Blog</h5>
                      <div class="bd-blog-3-latest">
                         <ul>
                            @foreach($posts as $item)
                            <li>
                               <div class="bd-blog-3-latest-content">
                                  <div class="bd-blog-3-latest-thumb">
                                     <a href="{{ route('posts.show', $item->slug) }}"> <img src="{{ Voyager::image($item->image) }}"
                                           alt="img not found!"></a>
                                  </div>
                                  <div class="bd-blog-3-latest-title-wrap">
                                     <h6 class="bd-blog-3-latest-title"><a href="{{ route('posts.show', $item->slug) }}"> {{$item->title}}</a></h6>
                                     <div class="bd-blog-3-latest-meta">
                                        <i class="fa-solid fa-calendar-days"></i><span>{{ date('d-m-y', strtotime($item->from_date)) }}</span>
                                     </div>
                                  </div>
                               </div>
                            </li>
                           @endforeach
                         </ul>
                      </div>
                   </div>
                  
                   <div class="bd-blog-3-sidebar mb-50">
                      <h5 class="bd-blog-3-sidebar-title">Tags</h5>
                      <div class="bd-blog-3-sidebar-content">
                         <div class="bd-blog-3-sidebar-tag">
                            <ul>
                               <li><a href="blog.html">luxury</a></li>
                               <li> <a href="blog.html">deals</a></li>
                               <li><a href="blog.html">booking</a></li>
                               <li><a href="blog.html">motel</a></li>
                               <li><a href="blog.html">cheap</a></li>
                               <li><a href="blog.html">Restaurant</a></li>
                               <li><a href="blog.html">Popular</a></li>
                            </ul>
                         </div>
                      </div>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </section>
    <!-- blog details area end here  -->


 </main>
 <!-- main area end here  -->

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
