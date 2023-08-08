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
                      <h1 class="bd-breadcrumb__title mb-20">{{__('Book Now')}}</h1>
                      <div class="bd-breadcrumb__list">
                         <span><a href="{{route('home')}}">{{__('Home')}}</a></span>
                         <span>{{__('Book Now')}}</span>
                      </div>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </div>
 </section>
 <!-- breadcrumb area end here  -->



 <!-- booking form area starts here -->
 <section class="bd-booking-area x-clip pb-85 mpb-15">
   <div class="container">
      <div class="row">
         <div class="col-lg-8">
            <div class="bd-booking-4 mb-65">
               <form action="book" method="POST">
                @csrf
                <input type="hidden" value="dat-phong" name="status">
                  <div class="bd-booking-4__form">
                     <div class="bd-booking-4__input mb-15">
                        <input type="text" placeholder="{{__('Name')}}" name="name">
                     </div>
                     
                     <div class="bd-booking-4__input mb-15">
                        <input type="email" placeholder="Email" name="email">
                     </div>
                     <div class="bd-booking-4__input mb-15">
                        <input type="text" placeholder="{{__('Phone')}}" name="phone">
                     </div>
                     <div class="bd-booking-4__input p-relative mb-15">
                        <select name="adult" class="bd-nice-select">
                           <option value="">{{__('Adults')}}</option>
                           <option value="1">1 {{__('Adults')}}</option>
                           <option value="2">2 {{__('Adults')}}</option>
                           <option value="3">3 {{__('Adults')}}</option>
                           <option value="4">4 {{__('Adults')}}</option>
                           <option value="5">5 {{__('Adults')}}</option>
                        </select>
                     </div>
                     <div class="bd-booking-4__input p-relative mb-15">
                        <select name="children" class="bd-nice-select">
                           <option value="">{{__('Children')}}</option>
                           <option value="1">0 {{__('Children')}}</option>
                           <option value="2">1 {{__('Children')}}</option>
                           <option value="3">2 {{__('Children')}}</option>
                           <option value="4">3 {{__('Children')}}</option>
                           <option value="5">4 {{__('Children')}}</option>
                        </select>
                     </div>
                     
                     <div class="bd-booking-4__input p-relative mb-15">
                        <select name="room" class="bd-nice-select">
                           <option value="">{{__('Room Type')}}</option>
                           @foreach ($rooms as $item)
                            <option value="{{ $item->title}}">{{ $item->translate()->title}}</option>
                           @endforeach
                           
                           
                        </select>
                     </div>
                     <div class="bd-booking-4__input mb-15">
                        <input type="text" class="bd-date-picker" placeholder="{{__('Check in')}}" name="fromDate">
                     </div>
                     <div class="bd-booking-4__input mb-15">
                        <input type="text" class="bd-date-picker bd-booking__input-date" placeholder="{{__('Check out')}}" name="toDate">
                     </div>
                     <div class="bd-booking-4__input message mb-30">
                        <textarea placeholder="{{__('Special Requirements')}}" name="content"></textarea>
                     </div>
                     <div class="glo-booking-btn">
                        <button class="bd-btn dark-btn" type="submit">
                           {{__('Book Now')}} <span><i class="fa-regular fa-arrow-right-long"></i></span>
                        </button>
                     </div>
                  </div>
               </form>
            </div>
         </div>
         <div class="col-lg-4">
            <div class="bd-booking-sidebar-wrap fix mb-35">
               <div class="bd-booking-sidebar mb-45">
                  <div class="bd-booking-sidebar__content">
                     <h3 class="bd-booking-sidebar__title">Booking Details</h3>
                     <p>
                        A Luxury Hotel is considered a hotel that provides a luxurious accommodation
                        experience
                        to
                        the
                        guest. There are no set with standards (such as stars) for luxury hotels.
                     </p>
                  </div>
               </div>
               <div class="bd-booking-sidebar mb-30">
                  <div class="bd-booking-sidebar__content">
                     <h3 class="bd-booking-sidebar__title">Need Any Help</h3>
                     <p>
                        If you need any help to book your room. Our support team is ready for you 24/7 days.
                     </p>
                     <div class="bd-booking-sidebar__contact">
                        <span><i class="fa-solid fa-phone"></i> Call Us:</span>
                        <a href="tel:99411123456"> 994 1112 3456</a>
                     </div>
                  </div>
               </div>
               <div class="bd-booking-sidebar mb-30">
                  <div class="bd-booking-sidebar__content">
                     <h3 class="bd-booking-sidebar__title">Visit Free Tour</h3>
                     <p>
                        We are here for you, visit us for free. We have the best hotel in town. Royel hotel
                        is
                        not only a hotel it's a kingdom.
                     </p>
                     <div class="bd-booking-side-btn mt-20">
                        <a href="{{route('contact')}}" class="bd-btn dark-btn">
                           Contact us<span><i class="fa-regular fa-arrow-right-long"></i></span>
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<!-- booking form area ends here -->
   
@endsection