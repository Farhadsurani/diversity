<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="canonical" href="index.html" />
	<!-- OG -->
	<meta name="robots" content="index, follow">
	
	<meta name="keywords" content="Web Design, Education, Institute, Study" />
	<meta name="author" content="ThemeTrades" />
	<meta name="description" content="EduChamp is a Fully Creative Mobile Responsive HTML Template. It is designed specifically for University, College, School, Training centre or other educational institute." />
	
	<meta property="og:url" content="index.html" />
	<meta property="og:site_name" content="EduChamp : Education HTML Template"/>
	<meta property="og:type" content="website" />
	<meta property="og:locale" content="en_us" />
	<meta property="og:title" content="EduChamp : Education HTML Template" />
	<meta property="og:description" content="EduChamp is a Fully Creative Mobile Responsive HTML Template. It is designed specifically for University, College, School, Training center or other educational institute." />
	<meta property="og:image" content="preview.png"/>
	
	<meta name="twitter:card" content="summary">
	<meta name="twitter:url" content="index.html">
	<meta name="twitter:creator" content="@themetrades">
	<meta name="twitter:title" content="EduChamp : Education HTML Template">
	<meta name="twitter:description" content="EduChamp is a Fully Creative Mobile Responsive HTML Template. It is designed specifically for University, College, School, Training centre or other educational institute.">
	
	<meta name="format-detection" content="telephone=no">
	
	<!-- FAVICONS ICON ============================================= -->
	<link rel="icon" href="{{asset('public/images/favicon.ico')}}" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="{{asset('public/images/favicon.png')}}" />
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>EduChamp : Education HTML Template </title>
	
	<!-- MOBILE SPECIFIC ============================================= -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.min.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
	
	<!-- All PLUGINS CSS ============================================= -->
	<link rel="stylesheet" type="text/css" href="{{asset('public/css/assets.css')}}">
	
	<!-- TYPOGRAPHY ============================================= -->
	<link rel="stylesheet" type="text/css" href="{{asset('public/css/typography.css')}}">
	
	<!-- SHORTCODES ============================================= -->
	<link rel="stylesheet" type="text/css" href="{{asset('public/css/shortcodes/shortcodes.css')}}">
	
	<!-- STYLESHEETS ============================================= -->
	<link rel="stylesheet" type="text/css" href="{{asset('public/css/style.css')}}">
	<link class="skin" rel="stylesheet" type="text/css" href="{{asset('public/css/color/color-1.css')}}">
	
</head>
<body id="bg">

<div class="page-wraper">
	<div id="loading-icon-bx"></div>
	<!-- Header Top ==== -->
    <header class="header rs-nav">
		<div class="top-bar">
			<div class="container">
				<div class="row d-flex justify-content-between">
					<div class="topbar-left">
						<ul>
							<li><a href="faq-1.html"><i class="fa fa-question-circle"></i>Ask a Question</a></li>
							<li><a href="javascript:;"><i class="fa fa-envelope-o"></i>Support@website.com</a></li>
						</ul>
					</div>
					<div class="topbar-right">
						<ul>
							<li>
								<select class="header-lang-bx">
									<option data-icon="flag flag-uk">English UK</option>
									<option data-icon="flag flag-us">English US</option>
								</select>
							</li>
							<li><a href="login.html">Login</a></li>
							{{--<li><a href="register.html">Register</a></li>--}}
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="sticky-header navbar-expand-lg">
            <div class="menu-bar clearfix">
                <div class="container clearfix">
					<!-- Header Logo ==== -->
					<div class="menu-logo">
						<a href="index-2.html"><img src="{{asset('public/images/dap_logo.jpg')}}" alt="" style="height: 100px; width: 100px; opacity: 0.8;"></a>
					</div>
					<!-- Mobile Nav Button ==== -->
                    <button class="navbar-toggler collapsed menuicon justify-content-end" type="button" data-toggle="collapse" data-target="#menuDropdown" aria-controls="menuDropdown" aria-expanded="false" aria-label="Toggle navigation">
						<span></span>
						<span></span>
						<span></span>
					</button>
					<!-- Author Nav ==== -->
                    <div class="secondary-menu">
                        <div class="secondary-inner">
                            <ul>
                                <li><a href="https://www.facebook.com/DiversityAwarenessProgram/" class="btn-link"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="https://twitter.com/diversityaware" class="btn-link"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="https://www.youtube.com/user/DiversityAwareness1" class="btn-link"><i class="fa fa-youtube"></i></a></li>
								<!-- Search Button ==== -->
								<li class="search-btn"><button id="quik-search-btn" type="button" class="btn-link"><i class="fa fa-search"></i></button></li>
							</ul>
						</div>
                    </div>
					<!-- Search Box ==== -->
                    <div class="nav-search-bar">
                        <form action="#">
                            <input name="search" value="" type="text" class="form-control" placeholder="Type to search">
                            <span><i class="ti-search"></i></span>
                        </form>
						<span id="search-remove"><i class="ti-close"></i></span>
                    </div>
					<!-- Navigation Menu ==== -->
                    <div class="menu-links navbar-collapse collapse justify-content-start" id="menuDropdown">
						<div class="menu-logo">
							<a href="index-2.html"><img src="{{asset('public/images/dap_logo.jpg')}}" alt="" style="height: 100px; width: 100px; opacity: 0.8;"></a>
						</div>
						<ul class="nav navbar-nav">
							<li class="active"><a href="{{ route('home') }}">Home</a>
								{{--<ul class="sub-menu">--}}
								{{--<li><a href="index-2.html">Home 1</a></li>--}}
								{{--<li><a href="index-3.html">Home 2</a></li>--}}
								{{--<li><a href="index-4.html">Home 3</a></li>--}}
								{{--</ul>--}}
							</li>
							<li><a href="javascript:;">Pages <i class="fa fa-chevron-down"></i></a>
								<ul class="sub-menu">
									<li><a href="{{ route('about') }}">About</a>
										{{--<ul class="sub-menu">--}}
										{{--<li><a href="about-1.html">About 1</a></li>--}}
										{{--<li><a href="about-2.html">About 2</a></li>--}}
										{{--</ul>--}}
									</li>
									<li><a href="#">Event<i class="fa fa-angle-right"></i></a>
										<ul class="sub-menu">
											<li><a href="{{ route('event') }}">Event</a></li>
											<li><a href="{{ route('event-details') }}">Event Details</a></li>
										</ul>
									</li>
									<li><a href="{{ route('faq') }}">FAQ's</a>
										{{--<ul class="sub-menu">--}}
										{{--<li><a href="faq-1.html">FAQ's 1</a></li>--}}
										{{--<li><a href="faq-2.html">FAQ's 2</a></li>--}}
										{{--</ul>--}}
									</li>
									<li><a href="{{ route('contact') }}">Contact Us</a>
										{{--<ul class="sub-menu">--}}
										{{--<li><a href="contact-1.html">Contact Us 1</a></li>--}}
										{{--<li><a href="contact-2.html">Contact Us 2</a></li>--}}
										{{--</ul>--}}
									</li>
									<li><a href="{{ route('portfolio') }}">Portfolio</a></li>
									<li><a href="{{ route('profile') }}">Profile</a></li>
									<li><a href="{{ route('membership') }}">Membership</a></li>
									<li><a href="error-404.html">404 Page</a></li>
								</ul>
							</li>
							<li class="add-mega-menu"><a href="javascript:;">Our Courses <i
											class="fa fa-chevron-down"></i></a>
								<ul class="sub-menu add-menu">
									<li class="add-menu-left">
										<h5 class="menu-adv-title">Our Courses</h5>
										<ul>
											<li><a href="{{ route('courses') }}">Courses </a></li>
											{{--<li><a href="courses-details.html">Courses Details</a></li>--}}
											{{--<li><a href="profile.html">Instructor Profile</a></li>--}}
											<li><a href="{{ route('event') }}">Upcoming Event</a></li>
											<li><a href="{{ route('membership') }}">Membership</a></li>
										</ul>
									</li>
									<li class="add-menu-right">
										<img src="{{asset('public/images/adv/adv.jpg')}}" alt=""/>
									</li>
								</ul>
							</li>
							<li><a href="{{ route('blog') }}">Blog</a>
								{{--<ul class="sub-menu">--}}
								{{--<li><a href="blog-classic-grid.html">Blog Classic</a></li>--}}
								{{--<li><a href="blog-classic-sidebar.html">Blog Classic Sidebar</a></li>--}}
								{{--<li><a href="blog-list-sidebar.html">Blog List Sidebar</a></li>--}}
								{{--<li><a href="blog-standard-sidebar.html">Blog Standard Sidebar</a></li>--}}
								{{--<li><a href="blog-details.html">Blog Details</a></li>--}}
								{{--</ul>--}}
							</li>
							{{--<li class="nav-dashboard"><a href="javascript:;">Dashboard <i--}}
							{{--class="fa fa-chevron-down"></i></a>--}}
							{{--<ul class="sub-menu">--}}
							{{--<li><a href="admin/index.html">Dashboard</a></li>--}}
							{{--<li><a href="admin/add-listing.html">Add Listing</a></li>--}}
							{{--<li><a href="admin/bookmark.html">Bookmark</a></li>--}}
							{{--<li><a href="admin/courses.html">Courses</a></li>--}}
							{{--<li><a href="admin/review.html">Review</a></li>--}}
							{{--<li><a href="admin/teacher-profile.html">Teacher Profile</a></li>--}}
							{{--<li><a href="admin/user-profile.html">User Profile</a></li>--}}
							{{--<li><a href="javascript:;">Calendar<i class="fa fa-angle-right"></i></a>--}}
							{{--<ul class="sub-menu">--}}
							{{--<li><a href="admin/basic-calendar.html">Basic Calendar</a></li>--}}
							{{--<li><a href="admin/list-view-calendar.html">List View Calendar</a></li>--}}
							{{--</ul>--}}
							{{--</li>--}}
							{{--<li><a href="javascript:;">Mailbox<i class="fa fa-angle-right"></i></a>--}}
							{{--<ul class="sub-menu">--}}
							{{--<li><a href="admin/mailbox.html">Mailbox</a></li>--}}
							{{--<li><a href="admin/mailbox-compose.html">Compose</a></li>--}}
							{{--<li><a href="admin/mailbox-read.html">Mail Read</a></li>--}}
							{{--</ul>--}}
							{{--</li>--}}
							{{--</ul>--}}
							{{--</li>--}}
						</ul>
						<div class="nav-social-link">
							<li><a href="https://www.facebook.com/DiversityAwarenessProgram/" class="btn outline radius-xl"><i class="fa fa-facebook"></i></a></li>
							<li><a href="https://twitter.com/diversityaware" class="btn outline radius-xl"><i class="fa fa-twitter"></i></a></li>
							<li><a href="https://www.youtube.com/user/DiversityAwareness1" class="btn outline radius-xl"><i class="fa fa-youtube"></i></a></li>
						</div>
                    </div>
					<!-- Navigation Menu END ==== -->
                </div>
            </div>
        </div>
    </header>
    <!-- header END ==== -->
    <!-- Inner Content Box ==== -->
    <div class="page-content">
        <!-- Page Heading Box ==== -->
        <div class="page-banner ovbl-dark" style="background-image:url({{asset('public/images/banner/banner2.jpg')}});">
            <div class="container">
                <div class="page-banner-entry">
                    <h1 class="text-white">About Us</h1>
				 </div>
            </div>
        </div>
		<div class="breadcrumb-row">
			<div class="container">
				<ul class="list-inline">
					<li><a href="#">Home</a></li>
					<li>About Us</li>
				</ul>
			</div>
		</div>
		<!-- Page Heading Box END ==== -->
		<!-- Page Content Box ==== -->
		<div class="content-block">
            <!-- About Us ==== -->
			{{--<div class="section-area section-sp1">--}}
                {{--<div class="container">--}}
					 {{--<div class="row">--}}
						{{--<div class="col-lg-3 col-md-6 col-sm-6 m-b30">--}}
							{{--<div class="feature-container">--}}
								{{--<div class="feature-md text-white m-b20">--}}
									{{--<a href="#" class="icon-cell"><img src="{{asset('public/images/icon/icon1.png')}}" alt=""/></a> --}}
								{{--</div>--}}
								{{--<div class="icon-content">--}}
									{{--<h5 class="ttr-tilte">Our Philosophy</h5>--}}
									{{--<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod..</p>--}}
								{{--</div>--}}
							{{--</div>--}}
						{{--</div>--}}
						{{--<div class="col-lg-3 col-md-6 col-sm-6 m-b30">--}}
							{{--<div class="feature-container">--}}
								{{--<div class="feature-md text-white m-b20">--}}
									{{--<a href="#" class="icon-cell"><img src="{{asset('public/images/icon/icon2.png')}}" alt=""/></a> --}}
								{{--</div>--}}
								{{--<div class="icon-content">--}}
									{{--<h5 class="ttr-tilte">Kingster's Principle</h5>--}}
									{{--<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod..</p>--}}
								{{--</div>--}}
							{{--</div>--}}
						{{--</div>--}}
						{{--<div class="col-lg-3 col-md-6 col-sm-6 m-b30">--}}
							{{--<div class="feature-container">--}}
								{{--<div class="feature-md text-white m-b20">--}}
									{{--<a href="#" class="icon-cell"><img src="{{asset('public/images/icon/icon3.png')}}" alt=""/></a> --}}
								{{--</div>--}}
								{{--<div class="icon-content">--}}
									{{--<h5 class="ttr-tilte">Key Of Success</h5>--}}
									{{--<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod..</p>--}}
								{{--</div>--}}
							{{--</div>--}}
						{{--</div>--}}
						{{--<div class="col-lg-3 col-md-6 col-sm-6 m-b30">--}}
							{{--<div class="feature-container">--}}
								{{--<div class="feature-md text-white m-b20">--}}
									{{--<a href="#" class="icon-cell"><img src="{{asset('public/images/icon/icon4.png')}}" alt=""/></a> --}}
								{{--</div>--}}
								{{--<div class="icon-content">--}}
									{{--<h5 class="ttr-tilte">Our Philosophy</h5>--}}
									{{--<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod..</p>--}}
								{{--</div>--}}
							{{--</div>--}}
						{{--</div>--}}
					{{--</div>--}}
				{{--</div>--}}
            {{--</div>--}}
			<!-- About Us END ==== -->
            <!-- Our Story ==== -->
			<div class="section-area bg-gray section-sp1 our-story">
				<div class="container">
					<div class="row align-items-center d-flex">
						<div class="col-lg-12 col-md-12 heading-bx">
							<h2 class="m-b10">Our Story</h2>
							<h5 class="fw4"><b>{{$about[0]->title}}</b></h5>
							<p>
								{{$about[0]->content}}
							</p>
							{{--<a href="#" class="btn">Read More</a>--}}
						</div>
						{{--<div class="col-lg-7 col-md-12 heading-bx p-lr">--}}
							{{--<div class="video-bx">--}}
								{{--<img src="{{asset('public/images/about/pic1.jpg')}}" alt=""/>--}}
								{{--<a href="https://www.youtube.com/watch?v=x_sJzVe9P_8" class="popup-youtube video"><i class="fa fa-play"></i></a>--}}
							{{--</div>--}}
						{{--</div>--}}
					</div>
				</div>
			</div>
			<!-- Our Story END ==== -->
			<!-- Our Status ==== -->
			<div class="section-area content-inner section-sp1">
                <div class="container">
                    <div class="section-content">
                         <div class="row">
                            <div class="col-lg-3 col-md-6 col-sm-6 col-6 m-b30">
                                <div class="counter-style-1">
                                    <div class="text-primary">
										<span class="counter">3000</span><span>+</span>
									</div>
									<span class="counter-text">Completed Projects</span>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-6 m-b30">
                                <div class="counter-style-1">
									<div class="text-black">
										<span class="counter">2500</span><span>+</span>
									</div>
									<span class="counter-text">Happy Clients</span>
								</div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-6 m-b30">
                                <div class="counter-style-1">
									<div class="text-primary">
										<span class="counter">1500</span><span>+</span>
									</div>
									<span class="counter-text">Questions Answered</span>
								</div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-6 m-b30">
                                <div class="counter-style-1">
									<div class="text-black">
										<span class="counter">1000</span><span>+</span>
									</div>
									<span class="counter-text">Ordered Coffee's</span>
								</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
			<!-- Our Status END ==== -->
			<!-- About Content ==== -->
			<div class="section-area section-sp2 bg-fix ovbl-dark join-bx text-center" style="background-image:url({{asset('public/images/background/bg1.jpg')}});">
                <div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="join-content-bx text-white">
								<h2>Learn a new skill online on <br/> your time</h2>
								<h4><span class="counter">57,000 </span> Online Courses</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
								<a href="#" class="btn button-md">Join Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- About Content END ==== -->
			<!-- Testimonials ==== -->
			<div class="section-area section-sp2">
				<div class="container">
					<div class="row">
						<div class="col-md-12 heading-bx left">
							<h2 class="title-head text-uppercase">what people <span>say</span></h2>
							<p>It is a long established fact that a reader will be distracted by the readable content of a page</p>
						</div>
					</div>
					<div class="testimonial-carousel owl-carousel owl-btn-1 col-12 p-lr0">
						<div class="item">
							<div class="testimonial-bx">
								<div class="testimonial-thumb">
									<img src="{{asset('public/images/testimonials/pic1.jpg')}}" alt="">
								</div>
								<div class="testimonial-info">
									<h5 class="name">Peter Packer</h5>
									<p>-Art Director</p>
								</div>
								<div class="testimonial-content">
									<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type...</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimonial-bx">
								<div class="testimonial-thumb">
									<img src="{{asset('public/images/testimonials/pic2.jpg')}}" alt="">
								</div>
								<div class="testimonial-info">
									<h5 class="name">Peter Packer</h5>
									<p>-Art Director</p>
								</div>
								<div class="testimonial-content">
									<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type...</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Testimonials END ==== -->
		</div>
		<!-- Page Content Box END ==== -->
    </div>
    <!-- Inner Content Box END ==== -->

   
    @include('inc.footer')
    <button class="back-to-top fa fa-chevron-up" ></button>
</div>

<!-- External JavaScripts -->
<script src="{{asset('public/js/jquery.min.js')}}"></script>
<script src="{{asset('public/vendors/bootstrap/js/popper.min.js')}}"></script>
<script src="{{asset('public/vendors/bootstrap/js/bootstrap.min.js')}}"></script>
<script src="{{asset('public/vendors/bootstrap-select/bootstrap-select.min.js')}}"></script>
<script src="{{asset('public/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js')}}"></script>
<script src="{{asset('public/vendors/magnific-popup/magnific-popup.js')}}"></script>
<script src="{{asset('public/vendors/counter/waypoints-min.js')}}"></script>
<script src="{{asset('public/vendors/counter/counterup.min.js')}}"></script>
<script src="{{asset('public/vendors/imagesloaded/imagesloaded.js')}}"></script>
<script src="{{asset('public/vendors/masonry/masonry.js')}}"></script>
<script src="{{asset('public/vendors/masonry/filter.js')}}"></script>
<script src="{{asset('public/vendors/owl-carousel/owl.carousel.js')}}"></script>
<script src="{{asset('public/js/functions.js')}}"></script>
<script src="{{asset('public/js/contact.js')}}"></script>
<script src="{{asset('public/vendors/switcher/switcher.js')}}"></script>
</body>
</html>