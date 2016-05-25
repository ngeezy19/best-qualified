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
	background: url(../images/concrete-wall-2.png) ;
	background-color: #89d0dc;
}
</style>

</head>

<body>
<body>
	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-md-12"></div>
		</div>
		<div class="row">
			<div class="col-md-12"></div>
		</div>


		<br> <br> <br> <br> <br>

		<div class="row">
			<h2 class="text-danger" style=" text-align: center;">Let's Get Started. ARE YOU.....</h2>
		</div>
		<hr />
		<div class="row">
			<div class="col-md-6" style="">
				<div style="padding-right: 2%; margin-right: 0px; text-align: right">
					<h3 class="format text-primary" style=""> <a style="" href="<c:url value='/end-point/add-major-interest?user-type=professional' />">A Sales & Marketing Professional?</a></h3>
					<p class="alerto" style="color: white;">
					<span><i class="fa fa-star-o" aria-hidden="true"></i></span>Search
					Sales & Marketing jobs. <span><i class="fa fa-star-o"
						aria-hidden="true"></i></span> Network with the Sales and Marketing
					community. <span><i class="fa fa-star-o" aria-hidden="true"></i></span>
					Improve your career through trainings & certifications. <span><i
						class="fa fa-star-o" aria-hidden="true"></i></span> Speak to a career
					coach.
				</p>
				</div>
				
				<form method="post"
					action="<c:url value='/end-point/add-major-interest' />">
					<input name="user-type" type="hidden" value="professional" /> 
				</form>
			</div>

			<div class="col-md-6">

				<div class="lefto" style="padding-left: 2%;">
					<br/><br/><br/><br/><br/><br/><br/>
					<h3 class="format text-warning"><a style="" href="<c:url value='/end-point/add-major-interest?user-type=recruiter' />">A Recruiter?</a></h3>
					<p class="alerto" style="color: white;">
					<span><i class="fa fa-star-o" aria-hidden="true"></i></span>Advertise
					your vacancy now.<span><i class="fa fa-star-o"
						aria-hidden="true"></i></span> Reach your specialized candidates.<span><i
						class="fa fa-star-o" aria-hidden="true"></i></span> Access over 1 million
					professional CV's here.
				</p>
				</div>
				
				<form method="post"
					action="<c:url value='/end-point/add-major-interest' />">
					<input name="user-type" type="hidden" value="recruiter" /> 
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
			<div class="col-md-6"></div>
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