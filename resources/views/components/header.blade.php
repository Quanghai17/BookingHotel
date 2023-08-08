@php
    $menu = menu('home_menu', '_json');
    // dd($menu);
@endphp
<!-- header area start -->
<header>
    <div class="bd-header transparent-header">
        <!-- header bottom area start -->
        <div id="header-sticky" class="bd-header-3 is-transparent" style="background-color: #254a5d;">
            <div class="container">
                <div class="mega-menu-wrapper p-relative">
                    <div class="d-flex align-items-center justify-content-between">
                        <div class="bd-header__bottom-left">
                            <div class="bd-header__logo">
                                <a href="{{ route('home') }}"><img
                                        src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}"
                                        alt="image not found"></a>
                            </div>
                        </div>
                        <div class="bd-main-menu d-lg-flex align-items-center is-white">
                            <nav id="mobile-menu">
                                <ul>
                                    @foreach ($menu as $item)
                                        <li class=" @if (count($item->children) > 0) has-dropdown @endif">
                                            <a href="{{ url($item->url) }}"
                                                class="@if ($item->url == '/' . request()->segment(1)) active @endif">
                                                {{ $item->translate()->title }}
                                                @if (count($item->children) > 0)
                                                    <i class="ti-angle-down"></i>
                                                @endif
                                            </a>

                                            @if (count($item->children) > 0)
                                                <ul class="submenu">
                                                    @foreach ($item->children as $child)
                                                        <li class=" @if (url($child->url) == url()->current()) active @endif">
                                                            <a
                                                                href="{{ url($child->url) }}">{{ $child->translate()->title }}</a>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            @endif
                                        </li>
                                    @endforeach
                                </ul>
                            </nav>
                        </div>
                        <div class="bd-header__bottom-right d-flex justify-content-end align-items-center">
                            <div class="bd-header-top-btn mr-30 d-none d-md-flex">
                                <a href="{{ route('booking') }}" class="bd-btn fill-btn">
                                    {{__('Book Now')}} <span><i class="fa-regular fa-arrow-right-long"></i></span>
                                </a>
                            </div>
                            <div class="bd-header-hamburger offcanvas-open-btn d-xl-none">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                        <div class="bd-header__bottom-right d-flex justify-content-end align-items-center">
                            <div class="bd-header-lang d-none d-xl-flex">
                                <div class="bd-header-lang__item">
                                    <a class="@if (App::getLocale() == 'en') active @else inactive  @endif" style="color: #eec78c;border: 1px solid #eec78c;"
                                        href="{{ route('lang', 'en') }}">en</a>
                                </div>
                                <div class="bd-header-lang__item">
                                    <a class="@if (App::getLocale() == 'vi') active @else inactive @endif" href="{{ route('lang', 'vi') }}" style="color: #eec78c;border: 1px solid #eec78c;">vi</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header bottom area end -->
    </div>
</header>
<!-- header area end here -->
