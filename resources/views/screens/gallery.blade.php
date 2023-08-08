@extends('layouts.main')

@section('content')
   
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
                        @foreach ($galleries as $item)
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
@stop
