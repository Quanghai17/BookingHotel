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
                         <h1 class="bd-breadcrumb__title mb-20">Register</h1>
                         <div class="bd-breadcrumb__list">
                            <span><a href="index.html">home</a></span>
                            <span>Register</span>
                         </div>
                      </div>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </section>
    <!-- breadcrumb area end here  -->
<section class="section">
    <div class="container" style="padding-bottom: 100px;">
        <div class="wrap_background_aside page_login">
            <div class="row">
                <div
                    class="col-lg-4 col-md-6 col-sm-12 col-xl-4 offset-0 offset-xl-4 offset-lg-4 offset-md-3 offset-xl-3 col-12">
                    <div class="row">
                        <div class="page-login pagecustome clearfix">
                            <div class="wpx">
                                <h1 class="title_heads a-center"><span>Register</span></h1>
                                <span class="block a-center dkm margin-top-10">Đã có tài khoản, đăng nhập <a
                                        href="login.html" class="btn-link-style btn-register">tại
                                        đây</a></span>
                                <div id="login" class="section">
                                    <form method="post"  action="{{ route('register') }}"  id="customer_register" accept-charset="UTF-8">
                                        @csrf
                                        <div class="form-signup clearfix">
                                            <div class="row">
                                                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                                                    <fieldset class="form-group" style="margin-top: 20px">
                                                        <input type="text"
                                                            class="form-control form-control-lg" value=""
                                                            name="name"  placeholder="Họ và Tên"
                                                            required>
                                                    </fieldset>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                                                    <fieldset class="form-group" style="margin-top: 20px">
                                                        <input type="email"
                                                            pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$"
                                                            class="form-control form-control-lg" value=""
                                                            name="email" id="email" placeholder="Email"
                                                            required="">
                                                    </fieldset>
                                                </div>
                                                {{-- <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                                                    <fieldset class="form-group">
                                                        <input placeholder="Số điện thoại" type="text"
                                                            pattern="\d+"
                                                            class="form-control form-control-comment form-control-lg"
                                                            name="PhoneNumber" Required>
                                                    </fieldset>
                                                </div> --}}
                                                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                                                    <fieldset class="form-group" style="margin-top: 20px">
                                                        <input type="password"
                                                            class="form-control form-control-lg" value=""
                                                            name="password" id="password"
                                                            placeholder="Mật khẩu" required>
                                                    </fieldset>
                                                </div>
                                                <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                                                    <fieldset class="form-group" style="margin-top: 20px">
                                                        <input type="password"
                                                            class="form-control form-control-lg" value=""
                                                            name="password_confirmation" id="password"
                                                            placeholder="Nhập lại mật khẩu" required>
                                                    </fieldset>
                                                </div>
                                            </div>
                                            <div class="section">
                                                <button type="submit" value="Đăng ký"
                                                    class="btn  btn-style btn_50">Đăng ký</button>
                                            </div>
                                        </div>
                                    </form>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>


<script type="text/javascript">
    function showRecoverPasswordForm() {
        document.getElementById('recover-password').style.display = 'block';
        document.getElementById('login').style.display = 'none';
    }

    function hideRecoverPasswordForm() {
        document.getElementById('recover-password').style.display = 'none';
        document.getElementById('login').style.display = 'block';
    }


</script>

@stop
   
