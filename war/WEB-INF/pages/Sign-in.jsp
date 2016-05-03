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


		<br> <br> <br>


		<hr />
		<div class="row">
			<div class="col-md-6" style="text-align: right;">
				<div class="righto">
					<h3 class="format">
						Join the <span>BEST-QUALIFIED</span> Sales & Marketing
						Professionals <br> <span><i class="fa fa-thumbs-o-up"
							aria-hidden="true"></i></span>
					</h3>
				</div>
			</div>

			<div class="col-md-6">

				<div class="auth">
					<div id="big-form" class="well auth-box">
						<form method="post" action="<c:url value='/end-point/sign-in' />">
							<fieldset>

								<div class="row">
									<div class="col-md-12">
										<br> <br>
									</div>
								</div>

								<!-- Text input-->
								<div class="form-group col-md-6">
									<label class=" control-label" for="textinput">Email</label>
									<div class="">
										<input name="email" value="${sin.email }"
											class="form-control input-md" type="text">

									</div>
								</div>

								<!-- Password input-->
								<div class="form-group col-md-6">
									<label class=" control-label" for="passwordinput">Password</label>
									<div class="">
										<input name="password" type="password" 
											class="form-control input-md" type="password">
									</div>
								</div>
								<!-- Password input-->
								<div class="form-group col-md-12">
									<div class="">
										<button class="btn btn-primary">Sign In</button>
									</div>
								</div>

								<div class="form-group col-md-12 no-padding-div">
									<div class="col-md-7 no-padding-div">
										<label class="radio-inline" for="radios-0">

											<p class="terms" style="margin-top: 4%;">
												Don't have a BQ account? <a href="/sign-up"
													style="color: blue"> Sign Up</a>
											</p>
										</label>
									</div>
									<div class="col-md-5 no-padding-div">
										<p style="color: white">
											or sign in with <i style="color:white " class="fa fa-facebook-square fa-2x"
												aria-hidden="true"></i> <i style="color: white" class="fa fa-linkedin-square fa-2x"
												aria-hidden="true"></i>
										</p>
									</div>
								</div>



							</fieldset>
						</form>
					</div>
					<div class="clearfix"></div>
				</div>

			</div>

		</div>

		<div class="row">
			<div class="col-md-12">
				<hr />
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

	<script src="js/script.js"></script>

</body>

</html>