@extends('layouts.main')

@section('content')
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
                         <img src="assets/img/breadcrumb/breadcrumb-bg.png" alt="breadcrumb img">
                      </div>
                      <div class="bd-breadcrumb__content text-center">
                         <h1 class="bd-breadcrumb__title mb-20">Blog</h1>
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

    <!-- blog area start here  -->
    <section class="bd-blog-3-area pb-150">
       <div class="container">
          <div class="bd-blog-3-menu-wrapper">
             <div class="row align-items-end">
                <div class="col-xxl-6 col-xl-5 col-lg-4">
                   <div class="bd-blog-3-search mb-60">
                      <form action="#">
                         <label for="bd-blog-3-search-input-label">Search by Keyword</label>
                         <div class="bd-blog-3-search-input">
                            <input type="text" placeholder="Type here..." id="bd-blog-3-search-input-label">
                            <div class="bd-blog-3-search-submit">
                               <button type="submit"><i class="fa-regular fa-magnifying-glass"></i></button>
                            </div>
                         </div>
                      </form>
                   </div>
                </div>
             </div>
          </div>
          <div class="row">
            @foreach ($posts as $item)
               <div class="col-xl-4 col-lg-6 col-md-6">
                <div class="bd-blog-2 d-flex align-items-end mb-30">
                   <div class="bd-blog-2__thumb">
                      <img src="{{ Voyager::image($item->image) }}" alt="image not found">
                   </div>
                   <div class="bd-blog-2__content">
                      <div class="bd-blog-2__meta">
                         <a href="{{ route('posts.show', $item->slug) }}">
                           {{ date('d', strtotime($item->from_date)) }}<br>{{ date('y', strtotime($item->from_date)) }}
                         </a>
                      </div>
                      <h4 class="bd-blog-2__title"><a href="{{ route('posts.show', $item->slug) }}">
                            {{$item->title}}
                         </a></h4>
                   </div>
                </div>
             </div>  
            @endforeach
            
             
          </div>
          <div class="row">
             <div class="col-12">
                <div class="bd-blog-pagination pt-20">
                   <ul class="justify-content-center">
                      <li><span aria-current="page" class="page-numbers current">01</span></li>
                      <li><a class="page-numbers" href="#">02</a></li>
                      <li><a class="next page-numbers" href="#">
                            <i class="fa-sharp fa-solid fa-angle-right"></i>
                         </a>
                      </li>
                   </ul>
                </div>
             </div>
          </div>
       </div>
    </section>
    <!-- blog area end here  -->

    <!-- brand area start here  -->
    <div class="bd-brand-area pt-100 pb-100 theme-bg-2 mpt-80 mpb-80">
       <div class="container">
          <div class="row">
             <div class="col-12">
                <div class="d-flex justify-content-between bd-brand__thumb-wrap">
                   <div class="bd-brand__thumb text-center">
                      <img src="assets/img/brand/1.png" alt="brand image">
                   </div>
                   <div class="bd-brand__thumb text-center">
                      <img src="assets/img/brand/2.png" alt="brand image">
                   </div>
                   <div class="bd-brand__thumb text-center">
                      <img src="assets/img/brand/3.png" alt="brand image">
                   </div>
                   <div class="bd-brand__thumb text-center">
                      <img src="assets/img/brand/4.png" alt="brand image">
                   </div>
                   <div class="bd-brand__thumb text-center">
                      <img src="assets/img/brand/5.png" alt="brand image">
                   </div>
                   <div class="bd-brand__thumb text-center">
                      <img src="assets/img/brand/6.png" alt="brand image">
                   </div>
                </div>
             </div>
          </div>
       </div>
    </div>
    <!-- brand area end here  -->

 </main>
 <!-- main area end here  -->

@stop