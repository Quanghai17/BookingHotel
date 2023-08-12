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
                         <h1 class="bd-breadcrumb__title mb-20">{{__('Log In')}}</h1>
                         <div class="bd-breadcrumb__list">
                            <span><a href="">{{__('Home')}}</a></span>
                            <span>{{__('Log In')}}</span>
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
                                <h1 class="title_heads a-center"><span>{{__('Log In')}}</span></h1>
                                <div id="login" class="section">
                                    <form method="post" action="{{ route('login') }}"
                                        id="customer_login" accept-charset="UTF-8"><input name="FormType"
                                            type="hidden" value="customer_login" /><input name="utf8"
                                            type="hidden" value="true" />
                                        <span class="form-signup" style="color:red;">
                                            @csrf
                                        </span>
                                        <div class="form-signup clearfix">
                                            <fieldset class="form-group">
                                                <input type="email"
                                                    pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$"
                                                    class="form-control form-control-lg" value="" name="email"
                                                    id="customer_email" placeholder="Email" Required>
                                                    
                                            </fieldset>
                                            <fieldset class="form-group" style="margin-top: 20px">
                                                <input type="password" class="form-control form-control-lg"
                                                    value="" name="password" id="customer_password"
                                                    placeholder="Mật khẩu" Required>
                                            </fieldset>
                                            <div class="pull-xs-left">
                                                <input class="btn btn-style btn_50" type="submit"
                                                    value="{{__('Log In')}}" />
                                            </div>
                                            <div class="btn_boz_khac">
                                                <div class="btn_khac">
                                                    {{-- <span class="quenmk">Quên mật khẩu?</span> --}}
                                                    <a href="{{ route('register') }}" class="btn-link-style btn-register"
                                                        title="Đăng ký tại đây">{{__('Register')}}</a>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>

                                <div class="h_recover" style="display:none;">
                                    <div id="recover-password" class="form-signup page-login">
                                        <form method="post"
                                            action="https://bean-hotel.mysapo.net/account/recover"
                                            id="recover_customer_password" accept-charset="UTF-8"><input
                                                name="FormType" type="hidden"
                                                value="recover_customer_password" /><input name="utf8"
                                                type="hidden" value="true" />
                                            <div class="form-signup" style="color: red;">

                                            </div>
                                            <div class="form-signup clearfix">
                                                <fieldset class="form-group">
                                                    <input type="email"
                                                        pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$"
                                                        class="form-control form-control-lg" value=""
                                                        name="Email" id="recover-email" placeholder="Email"
                                                        Required>
                                                </fieldset>
                                            </div>
                                            <div class="action_bottom">
                                                <input class="btn btn-style btn_50" style="margin-top: 0px;"
                                                    type="submit" value="Lấy lại mật khẩu" />

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