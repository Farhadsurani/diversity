@include('templates.header')
    <!-- header END ==== -->
     <!-- Content -->
     <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="page-banner ovbl-dark" style="background-image:url({{asset('public/images/banner/banner3.jpg')}});">
            <div class="container">
                <div class="page-banner-entry">
                    <h1 class="text-white">Our Courses</h1>
				 </div>
            </div>
        </div>
		<!-- Breadcrumb row -->
		<div class="breadcrumb-row">
			<div class="container">
				<ul class="list-inline">
					<li><a href="#">Home</a></li>
					<li>Our Courses</li>
				</ul>
			</div>
		</div>
		<!-- Breadcrumb row END -->
        <!-- inner page banner END -->
		<div class="content-block">



            <!-- About Us -->
			<div class="section-area section-sp1">
                <div class="container">
					 <div class="row">
						{{--<div class="col-lg-3 col-md-4 col-sm-12 m-b30">--}}
							{{--<div class="widget courses-search-bx placeani">--}}
								{{--<div class="form-group">--}}
									{{--<div class="input-group">--}}
										{{--<label>Search Courses</label>--}}
										{{--<input name="name" type="text" required class="form-control">--}}
									{{--</div>--}}
								{{--</div>--}}
							{{--</div>--}}
							{{--<div class="widget widget_archive">--}}
                                {{--<h5 class="widget-title style-1">All Courses</h5>--}}
                                {{--<ul>--}}
                                    {{--<li class="active"><a href="#">General</a></li>--}}
                                    {{--<li><a href="#">IT & Software</a></li>--}}
                                    {{--<li><a href="#">Photography</a></li>--}}
                                    {{--<li><a href="#">Programming Language</a></li>--}}
                                    {{--<li><a href="#">Technology</a></li>--}}
                                {{--</ul>--}}
                            {{--</div>--}}
							{{--<div class="widget">--}}
								{{--<a href="#"><img src="{{asset('public/images/adv/adv.jpg')}}" alt=""/></a>--}}
							{{--</div>--}}
							{{--<div class="widget recent-posts-entry widget-courses">--}}
                                {{--<h5 class="widget-title style-1">Recent Courses</h5>--}}
                                {{--<div class="widget-post-bx">--}}
                                    {{--<div class="widget-post clearfix">--}}
                                        {{--<div class="ttr-post-media"> <img src="{{asset('public/images/blog/recent-blog/pic1.jpg')}}" width="200" height="143" alt=""> </div>--}}
                                        {{--<div class="ttr-post-info">--}}
                                            {{--<div class="ttr-post-header">--}}
                                                {{--<h6 class="post-title"><a href="#">Introduction EduChamp</a></h6>--}}
                                            {{--</div>--}}
                                            {{--<div class="ttr-post-meta">--}}
                                                {{--<ul>--}}
                                                    {{--<li class="price">--}}
														{{--<del>$190</del>--}}
														{{--<h5>$120</h5>--}}
													{{--</li>--}}
                                                    {{--<li class="review">03 Review</li>--}}
                                                {{--</ul>--}}
                                            {{--</div>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                    {{--<div class="widget-post clearfix">--}}
                                        {{--<div class="ttr-post-media"> <img src="{{asset('public/images/blog/recent-blog/pic3.jpg')}}" width="200" height="160" alt=""> </div>--}}
                                        {{--<div class="ttr-post-info">--}}
                                            {{--<div class="ttr-post-header">--}}
                                                {{--<h6 class="post-title"><a href="#">English For Tommorow</a></h6>--}}
                                            {{--</div>--}}
                                            {{--<div class="ttr-post-meta">--}}
                                                {{--<ul>--}}
                                                    {{--<li class="price">--}}
														{{--<h5 class="free">Free</h5>--}}
													{{--</li>--}}
                                                    {{--<li class="review">07 Review</li>--}}
                                                {{--</ul>--}}
                                            {{--</div>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                {{--</div>--}}
                            {{--</div>--}}
						{{--</div>--}}

						 <div class="col-lg-9 col-md-8 col-sm-12">
							 <div class="row">
								 @foreach($course as $field)
								 <div class="col-md-6 col-lg-4 col-sm-6 m-b30">
									 <div class="cours-bx">
										 <div class="action-box">
												 <img src="{{$field->details->image_url}}" alt="">
												 <a href="{{ route('course-details', ['id' => $field->id])}}" class="btn">Read More</a>
										 </div>
										 <div class="info-bx text-center">
											 <h5><a href="#">{{ $field->name }}</a></h5>
											 <span>{{ $field->details->details }}</span>
										 </div>
									 </div>
								 </div>
								 @endforeach
							 </div>
						 </div>
								<div class="col-lg-12 m-b20">
									<div class="pagination-bx rounded-sm gray clearfix">
										<ul class="pagination">
											<li class="previous"><a href="#"><i class="ti-arrow-left"></i> Prev</a></li>
											<li class="active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li class="next"><a href="#">Next <i class="ti-arrow-right"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
            </div>
        </div>
		<!-- contact area END -->
		
    </div>
    <!-- Content END-->
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