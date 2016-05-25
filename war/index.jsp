<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Best Qualified</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" href="/styles/main.css">
<link rel="stylesheet" href="/styles/waitMe.css">
</head>
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
</style>
<body>

	<%@ include file="/main-nav.html"%>

	<div class="container-fluid background"
		style="height: auto; background-image: url('/images/bq-slide.jpg'); background-repeat: no-repeat; background-size: 100% 100%; margin-top: 3em">

		<div class="transbox row"
			style="width: 90%; margin: 0 auto; margin-top: 17%; margin-bottom: 7%;">
			<div class="col-sm-12">
				<form class="" role="form">
					<div class="col-sm-5">
						<div class="form-group">
							<input type="text" class="form-control input-lg" id="keyword"
								placeholder="Keywords">
						</div>
					</div>
					<div class="col-sm-5">
						<div class="form-group">
							<select class="form-control input-lg">
								<option>Free Courses</option>
								<option>Jobs</option>
								<option>Professional Association</option>
								<option>Sales & Marketing Certification</option>
								<option>Training</option>
							</select>
						</div>
					</div>
					<div class="col-sm-2">
						<button type="submit" class="btn btn-primary btn-lg">Search</button>
					</div>
					<div class="col-sm-12" style="color: white;">
						<div class="checkbox">
							<label><input type="checkbox" value="">Search
								titles only</label>
						</div>
					</div>
					<div class="col-sm-12" style="margin-top: 0">
						<hr />
					</div>
					<div class="col-sm-12 no-padding-div" style="color: white;">

						<ul class="quick-search-list">
							<li><strong>Quick Search: </strong></li>
							<li><a href="#">Free Courses</a></li>
							<li><a href="#">Jobs</a></li>
							<li><a href="#">Professional Association</a></li>
							<li><a href="#">Sales & Marketing Certification</a></li>
							<li><a href="#">Training</a></li>
						</ul>
					</div>
				</form>

			</div>


		</div>
	</div>
	<div class="container-fluid index-first-header" style="margin-bottom: 2%;">
		<div class="row">
			<div class="col-sm-12 ">
				<h1 style="">
					<strong>The No.1 Marketing & Sales Career Site</strong>
				</h1>
				<h2 class="text-muted">Your roadmap to a successful career.</h2>

			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="media headlines">
					<a class="pull-left" href="#"><img
						class="media-object img-rounded" src="images/job.png"></a>
					<div class="media-body">
						<h4 class="media-heading"><strong><a href="/bq/open/find-job">JOBS</a></strong></h4>
						<h5 class="job">Get hired in industries of your choice.</h5>
						<p class="plat">Start your exciting career journey here</p>
						<p class="plat">There's nothing wrong with trying something
							new.</p>
						<p class="plat">A variety of career choices are available.</p>
						<p class="plat"></p>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="media headlines">
					<a class="pull-right" href="#"><img
						class="media-object img-rounded" src="images/train.png"></a>
					<div class="media-body">
						<h4 class="media-heading"><strong>CERTIFICATIONS</strong></h4>
						<h5 class="jobs">Earn valuable certifications.</h5>
						<p class="plat">Free or affordable trainings to improve your
							career.</p>
						<p class="plat">Join professional Sales & Marketing
							associations</p>
						<p class="plat">Gain the differentiator against the
							competition in the industry.</p>
						<p class="plat">Get the latest and updated trainings in your
							field.</p>
					</div>
				</div>
			</div>
		</div>

		<hr />
		<div class="row">
			<div class="col-md-6">
				<div class="media headlines">
					<a class="pull-left" href="#"><img
						class="media-object img-rounded" src="images/coaching.png"></a>
					<div class="media-body">
						<h4 class="media-heading"><strong>COACHING/MENTORING</strong></h4>
						<h5 class="jobss">Everyone can do with a helping hand.</h5>
						<p class="plat">Latest career advice will be sent to your
							inbox.</p>
						<p class="plat">Help is always available for your job
							interviews.</p>
						<p class="plat">Resolve your mid-career crisis using our
							mentor.</p>
						<p class="plat">Get a coach to equip you with winning tips.</p>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="media headlines">
					<a class="pull-right" href="#"><img
						class="media-object img-rounded" src="images/community.png"></a>
					<div class="media-body">
						<h4 class="media-heading"><strong>OUR NETWORK</strong></h4>
						<h5 class="jobsss">Join our community of BQ professionals</h5>
						<p class="plat">Plug into new communities that can improve
							your network.</p>
						<p class="plat">Meet and share opinions with other
							professionals.</p>
						<p class="plat">Knowing me...knowing you helps your career.</p>

					</div>
				</div>
			</div>
		</div>


	</div>
	<hr />

	<br>
	<br>

	<div class="container">
		<div class="row">
			<div class="col-md-12  headline">
				<h4>Top Companies</h4>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12 imgo" style="text-align: center;">
				<a href=""><img src="images/1.png" alt=""></a> <a href=""><img
					src="images/2.png" alt=""></a> <a href=""><img
					src="images/3.png" alt=""></a> <a href=""><img
					src="images/4.png" alt=""></a> <a href=""><img
					src="images/5.png" alt=""></a> <a href=""><img
					src="images/6.png" alt=""></a>

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
