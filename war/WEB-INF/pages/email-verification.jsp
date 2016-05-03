<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Email Verification</title>
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
			<div class="col-sm-6" style="text-align: right;">
				<div class="righto">
					<h3 class="format">
						Join the <span>BEST-QUALIFIED</span> Sales & Marketing
						Professionals <br> <span><i class="fa fa-thumbs-o-up"
							aria-hidden="true"></i></span>
					</h3>
				</div>
			</div>
			<div class="col-sm-6">

				<h3 class="format">You are just a step away...</h3>

				<div class="auth">
					<div id="big-form" class="well auth-box"
						style="margin-left: 0px; margin-top: 5px">
						<c:if test='${not empty emailVerifyError}'>
							<div class="bq-alert bq-alert-danger">
								<p>${emailVerifyError}</p>
							</div>
						</c:if>
						<h4 style="color: #003366; text-align: left;">We need to
							verify your email</h4>
						<p style="color: white;">
							A Verification Code has been sent to
							<c:out value="${sub.email}" />
							. Enter the Code below then click verify.
						</p>
						<form method="post"
							action="<c:url value='/end-point/email-verification' />">
							<div class="form-group col-md-12 no-padding-div"
								style="font-family: arial; overflow: auto;">
								<label for="code">
									Enter verification code</label>
								<div class="">
									<input name="code" class="input-md" type="text">
									<input type="submit" value="Verify"
									style="width: 25%; display: inline;" class="bq-btn-primary">
								</div>
								
							</div>

						</form>
						<p style="color: white;">
							Did not get verification code? <a
								href="<c:url value='/end-point/resend-code' />">Resend</a>
						</p>
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