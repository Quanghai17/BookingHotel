 <!-- footer area start -->
 <footer class="bd-footer footer-bg">
	<div class="bd-footer-top pt-100 pb-30" style="background-color: #254a5d;">
	   <div class="container">
		  <div class="row justify-content-between">
			 <div class="col-xl-4 col-lg-4 col-md-6">
				<div class="bd-footer-widget-wrapper mb-60">
					<div class="bd-header__logo">
						<a href="{{ route('home') }}"><img style="width: 150%;"
								src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}"
								alt="image not found"></a>
					</div>
					<p style="color: aliceblue">{{setting('site.description')}}</p>
				</div>
			 </div>
			 <div class="col-xl-3 col-lg-4 col-md-6">
				<div class="bd-footer-widget-wrapper bd-footer-contact-wrapper mb-60">
				   <div class="bd-footer-widget-title">
					  <h5>{{__('Get in Touch')}}</h5>
				   </div>
				   <div class="bd-footer-contact">
					  <ul>
						 <li><i class="fas fa-paper-plane"></i> Reception:<a href="tel:99411123456">{{setting('site.phone')}}</a></li>
						 <li><i class="fas fa-phone"></i>Office: <a href="tel:99411123456">{{setting('site.phone')}}</a></li>
						 <li><i class="fas fa-envelope"></i> E-mail: <a href="">
							   <span class="__cf_email__" data-cfemail="1a73747c755a6e727f6875637f766a7b767b797f34797577">{{setting('site.email')}}</span></a></li>
						 <li><i class="fas fa-map-marker-alt"></i> Address: {{setting('site.address')}}</li>
					  </ul>
				   </div>
				   <div class="bd-footer-btn">
					  <a href="{{route('rooms')}}" class="bd-btn fill-btn">
						 Reserve Now <span><i class="fa-regular fa-arrow-right-long"></i></span>
					  </a>
				   </div>
				</div>
			 </div>
			 <div class="col-xl-4 col-lg-4 col-md-12">
				<div class="bd-footer-widget-wrapper mb-60">
				   <div class="bd-footer-widget-title">
					  <h5>{{__('Subscribe Newsletter')}}</h5>
				   </div>
				   <div class="bd-footer-newsletter__form">
					  <form action="{{route('contacts')}}" method="POST">
						@csrf
						 <div class="bd-footer-newsletter__input is-black">
							<input type="text" placeholder="Your Email" name="email">
							<button type="submit">{{__('Subscribe')}} <i
								  class="fa-regular fa-arrow-right-long"></i></button>
						 </div>
					  </form>
				   </div>
				   <div class="payment-methods mt-30">
					  <strong style="color: antiquewhite">We accept</strong>
					  <div class="payment-methods-icons">
						 <span><i class="fa-brands fa-cc-paypal"></i></span>
						 <span><i class="fa-brands fa-cc-mastercard"></i></span>
						 <span><i class="fa-brands fa-cc-visa"></i></span>
						 <span><i class="fa-brands fa-cc-amex"></i></span>
					  </div>
				   </div>
				</div>
			 </div>
		  </div>
	   </div>
	</div>
	<div class="bd-footer-bottom d-flex align-items-center">
	   <div class="container">
		  <div class="row align-items-center">
			 <div class="col-md-6">
				<div class="bd-footer-copyright">
				   <p>Copyright {{setting('site.title')}} &amp; Design By  <span>© <a
							href="https://themeforest.net/user/bdevs/portfolio">Bdevs</a></span> - 2023</p>
				</div>
			 </div>
			 <div class="col-md-6 text-md-end">
				<div class="bd-footer__list">
				   <div class="bd-footer__social-wrapper justify-content-center justify-content-md-end">
					  <div class="bd-footer__social is-black">
						 <a href="https://www.facebook.com/" target="_blank"><i
							   class="fa-brands fa-facebook-f"></i></a>
					  </div>
					  <div class="bd-footer__social is-black">
						 <a href="https://twitter.com/" target="_blank"><i class="fa-brands fa-twitter"></i></a>
					  </div>
					  <div class="bd-footer__social is-black">
						 <a href="https://youtube.com/" target="_blank"><i class="fa-brands fa-youtube"></i></a>
					  </div>
				   </div>
				</div>
			 </div>
		  </div>
	   </div>
	</div>
  </footer>
  <!-- footer area end -->
  <!-- offcanvas area start -->
  <div class="offcanvas__area">
	<div class="offcanvas__wrapper">
	   <div class="offcanvas__content">
		  <div class="offcanvas__top mb-40 d-flex justify-content-between align-items-center">
			 <div class="offcanvas__logo logo">
				<a href="index.html">
				   <img src="assets/img/logo/logo.svg" alt="logo">
				</a>
			 </div>
			 <div class="offcanvas__close">
				<button class="offcanvas__close-btn">
				   <i class="fa-thin fa-times"></i>
				</button>
			 </div>
		  </div>
		  <div class="offcanvas__search mb-0">
			 <form action="#">
				<button type="submit"><i class="fa-regular fa-magnifying-glass"></i></button>
				<input type="text" placeholder="Search here">
			 </form>
		  </div>
		  <div class="mobile-menu fix mt-40"></div>
		  <div class="offcanvas__about d-none d-lg-block mt-30 mb-30">
			 <h4>About Royel Hotel</h4>
			 <p>Experience legendary service in the heart of royel. The new generation of luxury. A Haven of Comfort
				and Elegance in royel</p>
		  </div>
		  <div class="offcanvas__contact mt-30 mb-30">
			 <h4>Contact Info</h4>
			 <ul>
				<li class="d-flex align-items-center gap-2">
				   <div class="offcanvas__contact-icon">
					  <a target="_blank"
						 href="https://www.google.com/maps/place/Dhaka/@23.7806207,90.3492859,12z/data=!3m1!4b1!4m5!3m4!1s0x3755b8b087026b81:0x8fa563bbdd5904c2!8m2!3d23.8104753!4d90.4119873">
						 <i class="fal fa-map-marker-alt"></i></a>
				   </div>
				   <div class="offcanvas__contact-text">
					  <a target="_blank"
						 href="https://www.google.com/maps/place/Dhaka/@23.7806207,90.3492859,12z/data=!3m1!4b1!4m5!3m4!1s0x3755b8b087026b81:0x8fa563bbdd5904c2!8m2!3d23.8104753!4d90.4119873">12/A,
						 Mirnada City Tower, NYC</a>
				   </div>
				</li>
				<li class="d-flex align-items-center gap-2">
				   <div class="offcanvas__contact-icon">
					  <a href="tel:+088889797697"><i class="far fa-phone"></i></a>
				   </div>
				   <div class="offcanvas__contact-text">
					  <a href="tel:+088889797697">088889797697</a>
				   </div>
				</li>
				<li class="d-flex align-items-center gap-2">
				   <div class="offcanvas__contact-icon">
					  <a href="https://html.bdevs.net/cdn-cgi/l/email-protection#a3d0d6d3d3ccd1d7e3c4cec2cacf8dc0ccce"><i class="fal fa-envelope"></i></a>
				   </div>
				   <div class="offcanvas__contact-text">
					  <a href="https://html.bdevs.net/cdn-cgi/l/email-protection#82f1f7f2f2edf0f6c2e5efe3ebeeace1edef"><span class="__cf_email__" data-cfemail="a4d7d1d4d4cbd6d0e4c9c5cdc88ac7cbc9">[email&#160;protected]</span></a>
				   </div>
				</li>
			 </ul>
		  </div>
		  <div class="offcanvas__social">
			 <ul>
				<li><a target="_blank" href="https://www.facebook.com/"><i class="fa-brands fa-facebook-f"></i></a>
				</li>
				<li><a target="_blank" href="https://twitter.com/"><i class="fa-brands fa-twitter"></i></a></li>
				<li><a target="_blank" href="https://www.youtube.com/"><i class="fa-brands fa-youtube"></i></a>
				</li>
			 </ul>
		  </div>
	   </div>
	</div>
  </div>
  <div class="body-overlay"></div>
  <!-- offcanvas area end -->