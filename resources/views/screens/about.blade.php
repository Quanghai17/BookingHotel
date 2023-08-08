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
                      <h1 class="bd-breadcrumb__title mb-20">{{__('About Us')}}</h1>
                      <div class="bd-breadcrumb__list">
                         <span><a href="{{route('home')}}">{{__('Home')}}</a></span>
                         <span>{{__('About Us')}}</span>
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
          <div class="col-lg-12">
             <div class="bd-blog-3-details-wrapper mb-60">
                <div class="row">
                   <div class="col-12">
                      <div class="bd-blog-3-details mb-50">
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
                                        
                                    </div>
        
                                </div>
                            </div>
                        </div>
                         
                         <div class="bd-blog-3-details-content">     
                            <p>{!!$about->translate()->body!!}</p>
                         </div>
                      </div>  
                   </div>
                </div>
             </div>
          </div>
       </div>
    </div>
 </section>
 <!-- blog details area end here  -->

   
@endsection