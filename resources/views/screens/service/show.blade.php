@extends('layouts.main')

@section('content')
<section class="bread-crumb">
    <div class="container">
        <ul class="breadcrumb">
            <li class="home">
                <a href="index.html" title="Trang chủ"><span>Trang chủ</span></a>
                <span class="mr_lr">&nbsp;<svg aria-hidden="true" focusable="false" data-prefix="fas"
                        data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 320 512" class="svg-inline--fa fa-chevron-right fa-w-10">
                        <path fill="currentColor"
                            d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"
                            class=""></path>
                    </svg>&nbsp;</span>
            </li>

            <li>
                <a href="hoi-nghi-cuoi-hoi.html" title="Hội nghị - cưới hỏi"><span>Hội nghị - cưới
                        hỏi</span></a>
                <span class="mr_lr">&nbsp;<svg aria-hidden="true" focusable="false" data-prefix="fas"
                        data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 320 512" class="svg-inline--fa fa-chevron-right fa-w-10">
                        <path fill="currentColor"
                            d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"
                            class=""></path>
                    </svg>&nbsp;</span>
            </li>
            <li><strong><span>{{$post->title}}</span></strong></li>

        </ul>
    </div>
</section>
{{-- @dd($post); --}}
<section class="blogpage">
    <div class="container layout-article" itemscope itemtype="https://schema.org/Article">
        <div class="bg_blog">
            <article class="article-main">
                <div class="row">
                    <div class="right-content col-lg-9 col-12">
                        <div class="article-details clearfix">
                            <h1 class="article-title">{{$post->title}}</h1>
                            <div class="swiper-slide">
                                <img height="600" width="340"
                                    src="{{ Voyager::image($post->image) }}"
                                    alt="{{$post->title}}">
                                   
                            </div>
                            <div class="posts">
                                <div class="time-post f">

                                    <svg aria-hidden="true" focusable="false" data-prefix="fal"
                                        data-icon="clock" role="img" xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 512 512" class="svg-inline--fa fa-clock fa-w-16">
                                        <path fill="currentColor"
                                            d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm216 248c0 118.7-96.1 216-216 216-118.7 0-216-96.1-216-216 0-118.7 96.1-216 216-216 118.7 0 216 96.1 216 216zm-148.9 88.3l-81.2-59c-3.1-2.3-4.9-5.9-4.9-9.7V116c0-6.6 5.4-12 12-12h14c6.6 0 12 5.4 12 12v146.3l70.5 51.3c5.4 3.9 6.5 11.4 2.6 16.8l-8.2 11.3c-3.9 5.3-11.4 6.5-16.8 2.6z"
                                            class=""></path>
                                    </svg>

                                    Thứ Ba,
                                    06/12/2022
                                </div>
                                <div class="time-post">
                                    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user"
                                        role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
                                        class="svg-inline--fa fa-user fa-w-14">
                                        <path fill="currentColor"
                                            d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z"
                                            class=""></path>
                                    </svg>
                                    <span>Bean Hotel</span>
                                </div>
                            </div>
                            <div class="rte">
                                <p>{!!$post->body!!}</p>
                            </div>
                        </div>

                        <div class="social-sharing">
                            <span>Chia sẻ:</span>
                            <script type="text/javascript"
                                src="../s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5a099baca270babc"></script>
                            <div class="addthis_inline_share_toolbox_7dnb"></div>
                        </div>



                        <form method="post"
                            action="https://bean-hotel.mysapo.net/posts/to-chuc-tiec-cuoi-hoi-ngoai-troi/comments"
                            id="article_comments" accept-charset="UTF-8"><input name="FormType" type="hidden"
                                value="article_comments" /><input name="utf8" type="hidden"
                                value="true" /><input type="hidden" id="Token-78c742d48a08479e9364364c74df8b73"
                                name="Token" />
                            <script
                                src="../www.google.com/recaptcha/apif78f.js?render=6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK"></script>
                            <script>grecaptcha.ready(function () { grecaptcha.execute("6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK", { action: "article_comments" }).then(function (token) { document.getElementById("Token-78c742d48a08479e9364364c74df8b73").value = token }); });</script>


                            <div class="form-coment">
                                <div class="margin-top-0 w-100">
                                    <h5 class="title-form-coment">Viết bình luận của bạn</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 col-12">
                                        <fieldset class="form-group padding-0">
                                            <input placeholder="Họ và tên" type="text"
                                                class="form-control form-control-lg" value="" id="full-name"
                                                name="Author" Required>
                                        </fieldset>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <fieldset class="form-group padding-0">
                                            <input placeholder="Email"
                                                pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$" type="email"
                                                class="form-control form-control-lg" value="" name="Email"
                                                Required>
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <textarea placeholder="Nội dung" class="form-control form-control-lg"
                                            id="comment" name="Body" rows="6" Required></textarea>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <button type="submit" class="btn btn-primary button_45">Gửi thông
                                            tin</button>
                                    </div>
                                </div>
                            </div> <!-- End form mail -->
                        </form>


                    </div>
                    <div class="blog_left_base col-lg-3 col-12">
                        <div class="side-right-stick">
                            <div class="aside-content aside-content-blog">



                                <div class="title-head">
                                    Danh mục
                                </div>
                                <nav class="nav-category">
                                    <ul class="nav navbar-pills">
                                        <li class="nav-item  relative">
                                            <a title="Trang chủ" class="nav-link" href="index.html">Trang
                                                chủ</a>
                                        </li>
                                        <li class="nav-item  relative">
                                            <a title="Về chúng tôi" class="nav-link" href="ve-chung-toi.html">Về
                                                chúng tôi</a>
                                        </li>
                                        <li class="nav-item  relative">
                                            <a title="Phòng" href="phong.html" class="nav-link pr-5">Phòng</a>
                                            <i class="open_mnu down_icon"></i>
                                            <ul class="menu_down" style="display:none;">
                                                <li class="nav-item">
                                                    <a title="Phòng đơn" class="nav-link"
                                                        href="phong-don.html">Phòng đơn</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a title="Phòng đôi" class="nav-link"
                                                        href="phong-doi.html">Phòng đôi</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a title="Phòng vip" class="nav-link"
                                                        href="phong-vip.html">Phòng vip</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="nav-item  relative">
                                            <a title="Ẩm thực" href="am-thuc.html" class="nav-link pr-5">Ẩm
                                                thực</a>
                                            <i class="open_mnu down_icon"></i>
                                            <ul class="menu_down" style="display:none;">
                                                <li class="nav-item">
                                                    <a title="Món ăn" class="nav-link" href="mon-an.html">Món
                                                        ăn</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a title="Đồ uống" class="nav-link" href="do-uong.html">Đồ
                                                        uống</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a title="Bánh ngọt" class="nav-link"
                                                        href="banh-ngot.html">Bánh ngọt</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="nav-item  relative">
                                            <a title="Dịch vụ" class="nav-link" href="dich-vu.html">Dịch vụ</a>
                                        </li>
                                        <li class="nav-item  relative">
                                            <a title="Thư viện ảnh" class="nav-link"
                                                href="thu-vien-anh.html">Thư viện ảnh</a>
                                        </li>
                                        <li class="nav-item  relative">
                                            <a title="Liên hệ" class="nav-link" href="lien-he.html">Liên hệ</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                            <script>
                                $(".open_mnu").click(function () {
                                    $(this).toggleClass('cls_mn').next().slideToggle();
                                });
                            </script>
                            <div class="blog_tags">
                                <div class="title-head">
                                    Tags
                                </div>
                                <ul class="list-tags">
                                    <li class="item_tag">
                                        <a href="hoi-nghi-cuoi-hoi/hoi-nghi.html" title="Hội nghị">Hội nghị</a>
                                    </li>
                                    <li class="item_tag">
                                        <a href="hoi-nghi-cuoi-hoi/hoi-thao.html" title="Hội thảo">Hội thảo</a>
                                    </li>
                                    <li class="item_tag">
                                        <a href="hoi-nghi-cuoi-hoi/ngoai-troi.html" title="Ngoài trời">Ngoài
                                            trời</a>
                                    </li>
                                    <li class="item_tag">
                                        <a href="hoi-nghi-cuoi-hoi/tiec-cuoi.html" title="Tiệc cưới">Tiệc
                                            cưới</a>
                                    </li>
                                </ul>
                            </div>



                            <div class="blog_noibat">
                                <h2 class="h2_sidebar_blog">
                                    <a href="blogs/all.html" title="Tin tức nổi bật">Tin tức nổi bật</a>
                                </h2>
                                <div class="blog_content">
                                    @foreach ($posts as $post)
                                    <div class="item clearfix">
                                        <div class="post-thumb">
                                            <a class="image-blog scale_hover"
                                                href="{{ route('service.show', $post->slug) }}"
                                                title="{{$post->title}}">

                                                <img class="img_blog"
                                                    src="{{ Voyager::image($post->image) }}"
                                                    data-src="{{ Voyager::image($post->image) }}"
                                                    alt="{{$post->title}}">

                                            </a>
                                        </div>
                                        <div class="contentright">
                                            <h3><a title="{{$post->title}}"
                                                    href="{{ route('service.show', $post->slug) }}">{{$post->title}}</a></h3>
                                            <p class="time-post">
                                               
                                            </p>
                                        </div>
                                    </div>
                                    @endforeach
                                   

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </div>
    </div>
</section>
@stop
