<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252">
<title>Best Qualified</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" href="/styles/main.css">
<link rel="stylesheet" href="/styles/waitMe.css">
<link rel="stylesheet" href="/styles/style.css">
<link rel="stylesheet" href="/styles/font-awesome.min.css">
<link rel="stylesheet" href="/styles/bootflat.min.css">
<link rel="stylesheet" href="/styles/comi.css">
<style>
.features-div li {
	list-style: none;
}

.features-div {
	font-family: ProximaNova-Regular, Helvetica, Arial, sans-serif;
	color: #333;
	padding-top: 2%;
	padding-bottom: 2%;
}

.features-div h2 {
	padding-bottom: 2%;
}

.features-div ul {
	padding-left: 0px;
}

.features-div ul li {
	font-family: ProximaNova-Regular, Helvetica, Arial, sans-serif;
	color: #515151;
	font-size: 18px;
	line-height: 24px;
	list-style-position: outside;
	margin-bottom: 10px;
}

.features-div a {
	width: 10em;
	margin-top: 2%;
}

.features-div h4 {
	letter-spacing: 1.5px;
	font-size: 16px;
	color: #f67e33;
	font-family: ProximaNova-Regular, Helvetica, Arial, sans-serif;
	text-transform: uppercase;
}

.feature-img-div {
	padding-top: 2%;
	padding-bottom: 2%;
}

.alt-div-odd {
	background-color: rgb(240, 242, 245)
}

.col-centered {
	float: none;
	margin: 0 auto;
}

/*SHRINK*/
.shrink img {
	height: 100%;
	width: 100%;
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	-ms-transition: all 1s ease;
	transition: all 1s ease;
}

.shrink img:hover {
	width: 80%;
	height: 80%;
}

div.transbox {
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.3);
	border: 1px solid black;
}

div.transbox form {
	margin: 0 auto;
	margin-top: 2%;
	font-weight: bold;
	color: #000000;
	width: 90% !important;
}

div.transbox form input {
	font-weight: normal;
	margin-right: 0.75em;
	border: 1px solid black;
}

.index-first-header {
	text-align: center;
	font-family: ProximaNova-Regular, Helvetica, Arial, sans-serif;
	background-color: rgb(245, 247, 211);
	margin: 0 auto;
	padding: 30px 15px;
	color: black;
}

.index-first-header h1 strong {
	font-family: ProximaNova-Regular, Helvetica, Arial,
		sans-serif !important;
	margin-bottom: 0;
}

.index-first-header h2 {
	font-family: ProximaNova-Regular, Helvetica, Arial,
		sans-serif !important;
	margin-top: 0;
}

.footer-connect-with-us {
	box-sizing: border-box;
	max-width: 1280px;
	width: 100%;
	margin: 20px auto 0;
	padding: 0;
	display: block;
	list-style: none;
}

.sub-section-1 {
	margin: 0 30px;
	line-height: 3.125rem;
	border-top: 1px solid #eaeaea;
	color: #777;
	display: block;
	font-size: .9375rem;
	text-align: center;
}

.section-1-cta {
	outline: dotted thin;
	font-family: arial;
	font-weight: 400;
	background-color: #fff !important;
	color: #4990c7 !important;
	border: 1px solid #4990c7 !important;
	-webkit-transition: border-color 200ms ease-in, color 200ms ease-in;
	transition: border-color 200ms ease-in, color 200ms ease-in;
	font-size: 1em;
	font-weight: 400;
	display: block;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-o-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-moz-background-clip: padding;
	-webkit-background-clip: padding-box;
	text-align: center;
	vertical-align: middle;
	margin: 0 auto 20px;
	padding: 1%;
	white-space: nowrap;
	cursor: pointer;
	width: 100%;
	max-width: 320px;
	text-decoration: none;
}

.quick-search-list li {
	display: inline;
	padding: 2%;
}

.quick-search-list li a {
	color: white;
}

body {
	overflow-x: hidden;
}
</style>

</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top"
		style="background: #3BAFDA; border-bottom-color: #4FC1E9">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" style="color: white" href="#">Best
					Qualified</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#"><span
							class="glyphicon glyphicon-home" style="color: white;"></span></a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Get Hired<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Jobs Search</a></li>
							<li><a href="#">Browse Jobs</a></li>
							<li><a href="#">Advanced Search</a></li>
							<li><a href="#">Saved Jobs</a></li>
							<li><a href="#">Apply History</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle" href="#"
						data-toggle="dropdown">Training<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Free Courses</a></li>
							<li><a href="#">Coporate Training</a></li>
							<li><a href="#">Workshops</a></li>
							<li><a href="#">Professional Associations</a></li>
							<li><a href="#">Sales &amp; Marketing Certifications</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle" href="#"
						data-toggle="dropdown">Career Advice<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Career Blog</a></li>
							<li><a href="#">Career Guide</a></li>
							<li><a href="#">Find a Coach/Mentor</a></li>
							<li><a href="#">Assessments</a></li>
						</ul></li>
					<li><a href="#">Community</a></li>
				</ul>



				<ul class="nav navbar-nav navbar-right">
					<li><a href="http://best-qualified.appspot.com/sign-up"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="http://best-qualified.appspot.com/sign-in"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>


			</div>
		</div>
	</nav>





	<div class="content hide popover-content" id="popover-content">
		<ul style="padding: none !important">
			<li style="list-style: none;"><a
				href="http://best-qualified.appspot.com/bq/closed/init-dashboard">Dashboard</a></li>
			<li style="list-style: none;"><a
				href="http://best-qualified.appspot.com/bq/closed/init-professional-profile">Profile</a></li>
			<li style="list-style: none;"><a
				href="http://best-qualified.appspot.com/bq/close/new-project">New
					Project</a></li>
			<li style="list-style: none;"><a
				href="http://best-qualified.appspot.com/logout">Logout</a></li>
		</ul>
	</div>



	<br>
	<br>


	<div class="row">
		<div class="col-md-12 imgos">
			<a href="#"><img src="/images/piple/matthew.png" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/elyse.png"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/logo.png" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/1.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/2.jpg" alt=""
				width="48" height="48"></a> <a href="#"><img
				src="/images/piple/3.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/4.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/5.jpg" alt=""
				width="48" height="48"></a> <a href="#"><img
				src="/images/piple/5.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/6.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/7.jpg" alt=""
				width="48" height="48"></a> <a href="#"><img
				src="/images/piple/8.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/9.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/10.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/11.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/12.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/6.jpg" alt=""
				width="48" height="48"></a> <a href="#"><img
				src="/images/piple/7.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/8.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/9.jpg" alt=""
				width="48" height="48"></a> <a href="#"><img
				src="/images/piple/10.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/11.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/12.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/13.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/8.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/78.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/76.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/77.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/78.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/79.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/8.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/78.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/79.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/80.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/70.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/71.png" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/72.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/73.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/70.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/71.png" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/72.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/73.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/74.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/11.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/12.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/75.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/40.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/77.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/78.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/79.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/8.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/78.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/79.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/80.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/70.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/71.png"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/72.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/73.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/4.jpg" alt=""
				width="48" height="48"></a> <a href="#"><img
				src="/images/piple/5.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/6.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/7.jpg" alt=""
				width="48" height="48"></a> <a href="#"><img
				src="/images/piple/8.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/9.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/10.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/11.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/12.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/75.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/76.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/77.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/78.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/79.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/8.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/78.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/90.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/77.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/91.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/77.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/78.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/79.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/8.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/78.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/78.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/79.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/80.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/74.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/75.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/76.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/77.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/73.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/74.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/4.jpg" alt=""
				width="48" height="48"></a> <a href="#"><img
				src="/images/piple/5.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/6.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/6.jpg" alt=""
				width="48" height="48"></a> <a href="#"><img
				src="/images/piple/7.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/27.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/77.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/76.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/77.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/78.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/79.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/8.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/78.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/8.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/4.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/5.jpg" alt=""
				width="48" height="48"></a> <a href="#"><img
				src="/images/piple/6.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/7.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/30.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/77.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/78.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/4.jpg" alt=""
				width="48" height="48"></a> <a href="#"><img
				src="/images/piple/5.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/6.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/7.jpg" alt=""
				width="48" height="48"></a> <a href="#"><img
				src="/images/piple/76.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/77.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/79.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/80.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/4.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/5.jpg" alt=""
				width="48" height="48"></a> <a href="#"><img
				src="/images/piple/6.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/7.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/76.jpg"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/77.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/70.jpg" alt="" width="48"
				height="48"></a> <a href="#"><img src="/images/piple/71.png"
				alt="" width="48" height="48"></a> <a href="#"><img
				src="/images/piple/72.jpg" alt="" width="48" height="48"></a> <a
				href="#"><img src="/images/piple/73.jpg" alt="" width="48"
				height="48"></a>


		</div>
	</div>

	<br>
	<div class="row">
		<div class="col-md-12 imgo imgot" style="text-align: center;">
			<a href=""><img src="/images/comi/gd.png" alt=""></a> <a href=""><img
				src="/images/comi/n.png" alt=""></a> <a href=""><img
				src="/images/comi/gr.png" alt=""></a> <a href=""><img
				src="/images/comi/p.png" alt=""></a> <a href=""><img
				src="/images/comi/r.png" alt=""></a> <a href=""><img
				src="/images/comi/a.png" alt=""></a> <a href=""><img
				src="/images/comi/pa.png" alt=""></a>

		</div>
	</div>


	<br>
	<br>
	<br>

	<div class="row">


		<div class="col-md-12" data-wow-delay="0.2s"
			style="background-color: rgba(78, 189, 163, 0.10); background-image: url('/images/comi/3.png');">
			<div class="carousel slide" data-ride="carousel" id="quote-carousel">
				<!-- Bottom Carousel Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#quote-carousel" data-slide-to="0" class="active"><img
						class="img-responsive " src="/images/piple/13.jpg" alt=""></li>
					<li data-target="#quote-carousel" data-slide-to="1"><img
						class="img-responsive" src="/images/elyse.png" alt=""></li>
					<li data-target="#quote-carousel" data-slide-to="2"><img
						class="img-responsive" src="/images/logo.png" alt=""></li>
				</ol>

				<!-- Carousel Slides / Quotes -->
				<div class="carousel-inner text-center">

					<!-- Quote 1 -->
					<div class="item active">
						<blockquote>
							<div class="row">
								<div class="col-sm-8 col-sm-offset-2">

									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
										sed do eiusmod tempor incididunt ut labore et dolore magna
										aliqua. Ut enim ad minim veniam. !</p>
									<small>Someone famous</small>
								</div>
							</div>
						</blockquote>
					</div>
					<!-- Quote 2 -->
					<div class="item">
						<blockquote>
							<div class="row">
								<div class="col-sm-8 col-sm-offset-2">

									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
										sed do eiusmod tempor incididunt ut labore et dolore magna
										aliqua. Ut enim ad minim veniam,</p>
									<small>Someone famous</small>
								</div>
							</div>
						</blockquote>
					</div>
					<!-- Quote 3 -->
					<div class="item">
						<blockquote>
							<div class="row">
								<div class="col-sm-8 col-sm-offset-2">

									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
										sed do eiusmod tempor incididunt ut labore et dolore magna
										aliqua. Ut enim ad minim veniam .</p>
									<small>Someone famous</small>
								</div>
							</div>
						</blockquote>
					</div>
				</div>

				<!-- Carousel Buttons Next/Prev 
                            <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
                            <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
                            -->
			</div>
		</div>

		<hr />
	</div>
	<br>








	<div class="container">
		<div class="row" style="">
			<div class="col-md-9" id="blogodo">

				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Ullam enim illum dolores doloribus error voluptas rerum, autem esse
					illo quibusdam, laudantium, aperiam vel officia! At magni incidunt
					consectetur a autem?</p>


			</div>
			<div class="col-md-3">
				<div class="well soweto"
					style="background: rgba(78, 189, 163, 0.13); padding: 20px;">
					<h3 class="media-heading" id="lols">Which company has the best
						work enviroment</h3>


					<div class="checkbox">
						<label><input type="checkbox" value="">First Bank
							Nigeria</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" value="">Zenith</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" value="">Workforce</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" value="">Mtn Nigeria</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" value="">Cheveron</label>
					</div>

					<button class="btn btn-info">Vote</button>




				</div>

			</div>
		</div>
	</div>
	</div>
	<br>
	<br>










	<br>
	<br>
	<br>






































	<div class="container-fluid" id="footer-div">
		<div class="row">
			<div class="col-sm-12" id="footer-main-div">
				<div class="col-sm-3">
					<div>
						<img alt="Best Qualified" src="/images/bq-logo.png"
							class="img img-responsive">
					</div>
					<p style="color: white">We are the first career website
						dedicated exclusively to sales and marketing professionals in
						Africa. We match sales professionals with employers and sales
						recruiters throughout Africa.</p>
				</div>
				<div class="col-sm-3">
					<h4>Quick Links</h4>
					<ul style="color: white">
						<li>Certifications</li>
						<li>Coaching</li>
						<li>Community</li>
						<li>Jobs</li>
						<li>Professional Associations</li>
						<li>Training</li>
					</ul>
				</div>
				<div class="col-sm-3">
					<h4>Lorem ipsum dolor</h4>
					<ul>
						<li>Fusce vitae rutrum</li>
						<li>menaeos etiam sagittis</li>
						<li>a massa dolor leo augue</li>
						<li>justo ad risus id orci in euismod</li>
						<li>a massa dolor leo augue</li>
					</ul>
				</div>
				<div class="col-sm-3">
					<div id="mailing-list-div" style="text-align: center">
						<h4 class="glyphicon glyphicon-envelope"
							style="padding-right: 3%; padding-bottom: 0; margin-bottom: 0; margin-top: 0px; color: white;"></h4>
						<small class=""
							style="font-size: 14pt; font-weight: bold; color: white">
							Subscribe</small>
						<div>
							<p style="text-align: left; color: white">Subscribe to our
								newsletter to get the latest updates right to your inbox.</p>
						</div>
						<div id="mailing-list-msg-div"></div>
						<form id="newsletter-subscribe-form">
							<div class="form-group">
								<input id="mailing-list-email" name="email"
									placeholder="EMAIL ADDRESS" class="form-control" type="email">
							</div>
						</form>
						<div class="form-group">
							<input id="add-mailing-list" value="SIGN ME UP"
								class="form-control btn btn-warning" type="button">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row" id="footer-base">
			<div class="col-sm-12 col-md-9">
				<p>© 2016 BEST QUALIFIED - ALL RIGHTS RESERVED</p>
			</div>
			<div class="col-sm-12 col-md-3">
				<ul class="footer-connect-with-us">
					<li><img alt="" src="/images/facebook.png"></li>
					<li><img alt="" src="/images/twitter.png"></li>
					<li><img alt="" src="/images/googleplus.png"></li>
					<li><img alt="" src="/images/linkedin.png"></li>
				</ul>
			</div>
		</div>
	</div>


	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>



</body>
</html>