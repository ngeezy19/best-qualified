<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>Coaching</title>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/styles/jquery.webui-popover.min.css">
<link rel="stylesheet" href="/styles/main.css">
<link rel="stylesheet" href="/styles/animate.css">
<link rel="stylesheet" href="/styles/coaching.css">
</head>
<body>
	<%@ include file="/main-nav.html"%>
	<br/><br/>
	<div class="container-fluid" style="padding: 0">
		<!-- carousel -->
		<div id="my_carousel" class="carousel fade" data-ride="carousel">
			<!-- methods: data-interval="3000" // seconds between transitions; set to "0" to make it not automatic
					  data-pause="false" // "hover" is the default
					  data-wrap="false" // "true" is the default
		-->

			<!-- indicators -->
			<!-- <ol class="carousel-indicators">-->
			<!-- .active makes that carousel image the first to be shown in the rotation -->
			<!-- data-target referrs to id of carousel; data-slide-to referrs to slide number in array starting with 0 -->
			<!--	<li data-target="#my_carousel" data-slide-to="0" class="active"></li>
				<li data-target="#my_carousel" data-slide-to="1" class=""></li>
				<li data-target="#my_carousel" data-slide-to="2" class=""></li>
			</ol>
			-->

			<!-- carousel images -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="/images/bq-coaching-slide-2.jpg" alt="carousel_image_4">
				</div>
				<div class="item">
					<img src="/images/bq-coaching-slide-3.jpg" alt="carousel_image_2">
				</div>
				<div class="item">
					<img src="/images/bq-coaching-slide-4.jpg" alt="carousel_image_1">
				</div>
				<div class="item">
					<img src="/images/bq-coaching-slide-5.jpg" alt="carousel_image_2">
				</div>
				<div class="item">
					<img src="/images/bq-coaching-slide-6.jpg" alt="carousel_image_1">
				</div>
			</div>

			<!-- side buttons -->
			<!-- href referrs to the id of the carousel -->
			<a class="left carousel-control" href="#my_carousel" role="button"
				data-slide="prev"> <!--<span class="glyphicon glyphicon-chevron-left"></span> -->
			</a> <a class="right carousel-control" href="#my_carousel" role="button"
				data-slide="next"> <!--<span class="glyphicon glyphicon-chevron-right"></span>-->
			</a>

		</div>
		<!-- end .carousel -->
	</div>
	<div class="container" style="margin-top: 2%;">
		<div class="row">
			<div class="col-sm-8">
				<div class="col-sm-12 no-padding-div spotlight-div">
					<div class="col-sm-5 spotlight-image-div">
						<span id="in-spotlight">LASTEST ARTICLE</span> <img
							class="img img-responsive spotlight-image" alt=""
							src="/images/spotlight.jpg">
					</div>
					<div class="col-sm-7">
						<h4 class="spotlight-title">Lorem ipsum dolor sit amet,
							consectetuer adipiscing elit</h4>
						<h5 class="author-info">
							by Best Qualified <span class="pull-right">22-MAY-2016</span>
						</h5>
						<p>
							Donec quam felis, ultricies nec, pellentesque eu, pretium quis,
							sem. Nulla consequat massa quis enim. Donec pede justo, fringilla
							vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus
							ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu
							pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus
							elementum semper nisi...<a href="#">read more</a>
						</p>
					</div>
				</div>
				<div class="col-sm-12">
					<div style="width: 100%; background-color: #eaeaea;">
						<h2 style="text-align: center; padding: 1em;">HTML AD</h2>
					</div>
				</div>
				<div class="col-sm-12 no-padding-div">
					<div class="col-sm-6">
						<div class="article-header">ARTICLE GROUP X</div>
						<div>
							<img class="img img-responsive" src="/images/article1.jpg">
						</div>
						<h4>Donec quam felis, ultricies nec, pellentesque eu, pretium
							quis, sem.</h4>
						<h5 class="author-info">
							By Anna Maria<span class="pull-right">03-MAR-2016</span>
						</h5>
						<p>
							Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper
							libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc,
							blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec
							odio et ante tincidunt tempus. Donec vitae sapien ut libero
							venenatis faucibus...<a href="#">read more</a>
						</p>
					</div>
					<div class="col-sm-6">
						<div class="article-header">ARTICLE GROUP Y</div>
						<div>
							<img class="img img-responsive" src="/images/article2.jpg">
						</div>
						<h4>Nulla consequat massa quis enim. Donec pede justo,
							fringilla.</h4>
						<h5 class="author-info">
							By Joseph Tyler <span class="pull-right">14-MAY-2016</span>
						</h5>
						<p>
							Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper
							libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc,
							blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec
							odio et ante tincidunt tempus. Donec vitae sapien ut libero
							venenatis faucibus...<a href="#">read more</a>
						</p>
					</div>
				</div>
				<div class="col-sm-12" style="margin-bottom: 2%;">
					<div style="width: 100%; background-color: olive;">
						<h2 style="text-align: center; padding: 1em;">HTML AD</h2>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="col-sm-12" style="margin-bottom: 2%;">
					<a href="#"><img class="img img-responsive"
						style="border: 1px solid purple; padding: 2%;"
						src="/images/coach.png"></a>
				</div>
				<div class="col-sm-12">
					<div class="article-header">POPULAR ARTICLES</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/certifications.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Donec vitae sapien ut libero
								quam semper</h5>
							<h5 class="author-info">
								By Jane Doe<span class="pull-right">05-APR-2016</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/get-hired.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Nam quam nunc, blandit vel,
								luctus pulvinar, hendrerit id</h5>
							<h5 class="author-info">
								By Paul Allen<span class="pull-right">13-DEC-2015</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/community.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Maecenas tempus, tellus eget
								condimentum rhoncus, sem</h5>
							<h5 class="author-info">
								By Kimberly Lewis<span class="pull-right">14-FEB-2016</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/certifications.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Donec vitae sapien ut libero
								quam semper</h5>
							<h5 class="author-info">
								By Jane Doe<span class="pull-right">05-APR-2016</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/get-hired.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Nam quam nunc, blandit vel,
								luctus pulvinar, hendrerit id</h5>
							<h5 class="author-info">
								By Paul Allen<span class="pull-right">13-DEC-2015</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/community.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Maecenas tempus, tellus eget
								condimentum rhoncus, sem</h5>
							<h5 class="author-info">
								By Kimberly Lewis<span class="pull-right">14-FEB-2016</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/certifications.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Donec vitae sapien ut libero
								quam semper</h5>
							<h5 class="author-info">
								By Jane Doe<span class="pull-right">05-APR-2016</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/get-hired.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Nam quam nunc, blandit vel,
								luctus pulvinar, hendrerit id</h5>
							<h5 class="author-info">
								By Paul Allen<span class="pull-right">13-DEC-2015</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/community.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Maecenas tempus, tellus eget
								condimentum rhoncus, sem</h5>
							<h5 class="author-info">
								By Kimberly Lewis<span class="pull-right">14-FEB-2016</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/certifications.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Donec vitae sapien ut libero
								quam semper</h5>
							<h5 class="author-info">
								By Jane Doe<span class="pull-right">05-APR-2016</span>
							</h5>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="row tools-div"
			style="margin-bottom: 2%; padding-bottom: 2%;">
			<h4 class="tools">TOOLS</h4>
			<div class="col-sm-3">
				<h4>
					<span class="tool-name">Assessment Tool</span>
				</h4>
				<div style="height: 200px; background-color: red"></div>
			</div>
			<div class="col-sm-3">
				<h4>
					<span class="tool-name">Coaching Tool A</span>
				</h4>
				<div style="height: 200px; background-color: green"></div>
			</div>
			<div class="col-sm-3">
				<h4>
					<span class="tool-name">Coaching Tool X</span>
				</h4>
				<div style="height: 200px; background-color: pink"></div>
			</div>
			<div class="col-sm-3">
				<h4>
					<span class="tool-name">Coaching Tool Y</span>
				</h4>
				<div style="height: 200px; background-color: orange"></div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>
</body>
</html>