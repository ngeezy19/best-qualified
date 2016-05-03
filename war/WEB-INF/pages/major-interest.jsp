<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Best Qualified Sign Up</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link href="/styles/bootstrap.min.css" rel="stylesheet">
<link href="/styles/bootflat.min.css" rel="stylesheet">
<link href="/styles/font-awesome.min.css" rel="stylesheet">
<link href="/styles/main.css" rel="stylesheet">
<style type="text/css">
body {
	font-family: cabin;
	background: url(../images/signup-bg.png) no-repeat;
}
</style>

</head>

<body>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"></a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<br>
	<br>
	<br>
	<br>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-md-12"></div>
		</div>
		<div class="row">
			<div class="col-md-12"></div>
		</div>


		<br>
		<br>
		<br>
		<br>
		<br>

		<div class="row">
			<div class="col-md-6">
				<p class="alerto">
					<span><i class="fa fa-star-o" aria-hidden="true"></i></span>Search
					from Sales & Marketing jobs. <span><i class="fa fa-star-o"
						aria-hidden="true"></i></span> Network with the Sales and Marketing
					community. <span><i class="fa fa-star-o" aria-hidden="true"></i></span>
					Improve your career through trainings & certifications. <span><i
						class="fa fa-star-o" aria-hidden="true"></i></span> Speak to a career
					coach.
				</p>
			</div>
			<div class="col-md-6"></div>
		</div>
		<hr />
		<div class="row">
			<div class="col-md-6" style="text-align: right;">
				<div class="righto">
					<h3 class="format">A Sales & Marketing Professional?</h3>
				</div>
				<form method="post"
					action="<c:url value='/end-point/add-major-interest' />">
					<input name="user-type" type="hidden"
						value="professional" />
					<input type="submit" class="btn btn-success" value="Enter">
				</form>
			</div>

			<div class="col-md-6">
				<div class="lefto">
					<h3 class="format">A Recruiter?</h3>
				</div>
				<form method="post"
					action="<c:url value='/end-point/add-major-interest' />">
					<input name="user-type" type="hidden"
						value="recruiter" />
					<input type="submit" class="btn btn-success" value="Enter">
				</form>
			</div>

		</div>

		<div class="row">
			<div class="col-md-12">
				<hr />
			</div>
		</div>

		<div class="row">
			<div class="col-md-6"></div>
			<div class="col-md-6">
				<p class="alerto">
					<span><i class="fa fa-star-o" aria-hidden="true"></i></span>Advertise
					your vacancy now.<span><i class="fa fa-star-o"
						aria-hidden="true"></i></span> Reach your specialized candidates.<span><i
						class="fa fa-star-o" aria-hidden="true"></i></span> Access over 1 million
					professional CV's here.
				</p>
			</div>
		</div>

		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p></p>
				</div>
			</div>
		</footer>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>