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
<title>Sign Up</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link href="/styles/bootstrap.min.css" rel="stylesheet">
<link href="/styles/bootflat.min.css" rel="stylesheet">
<link href="/styles/font-awesome.min.css" rel="stylesheet">
<link href="/styles/main.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Corben"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Nobile"
	rel="stylesheet" type="text/css">
<style type="text/css">
html,body {
	height: 100%;
}

#main-body {
	height: 100%;
	background: rgba(135, 206, 250, 0.3);
	/* For browsers that do not support gradients */
	background: -webkit-linear-gradient(rgba(122, 149, 192, 0.3),
		rgba(135, 206, 250, 0.2), rgba(135, 206, 250, 0.1));
	/* For Safari 5.1 to 6.0 */
	background: -o-linear-gradient(rgba(122, 149, 192, 0.3),
		rgba(135, 206, 250, 0.2), rgba(135, 206, 250, 0.1));
	/* For Opera 11.1 to 12.0 */
	background: -moz-linear-gradient(rgba(122, 149, 192, 0.3),
		rgba(135, 206, 250, 0.2), rgba(135, 206, 250, 0.1));
	/* For Firefox 3.6 to 15 */
	background: linear-gradient(rgba(122, 149, 192, 0.3),
		rgba(135, 206, 250, 0.2), rgba(135, 206, 250, 0.1));
	/* Standard syntax */
}

.login-header {
	border-radius-top: 3px;
	border: 2px solid rgb(128, 128, 128);
	width: 30%;
	border-bottom: none;
	padding: 1%;
	padding-left: 2%;
	border-top-right-radius: 10px;
	-moz-border-top-right-radius: 5px;
	-webkit-border-top-right-radius: 5px;
	font-size: 14pt;
	font-weight: bold;
	color: white;
	background-color: rgb(128, 128, 128);
	background-color: rgba(128, 128, 128, 0.5);
	font-family: 'Corben', Georgia, Times, serif !important;
}

.login-btn {
	color: rgb(241, 241, 241);
	background-color: rgb(72, 103, 170);
	font-size: 14pt;
	font-family: 'Corben', Georgia, Times, serif !important;
	font-weight: bold;
	padding: 1%;
	padding-right: 2%;
	padding-left: 2%;
	border-radius: 7px;
	-moz-border-radius: 7px;
	-webkit-border-radius: 7px;
	border: none;
}

.login-btn:hover {
	background-color: rgb(73, 96, 160);
}

.login-body {
	border: 2px rgb(128, 128, 128) solid;
	padding: 4%;
	background: url('/images/concrete_seamless.png');
}

#main-header {
	border-bottom: 1px solid #cacaca;
	padding: 1%;
	text-align: center;
	background-color: rgba(59, 89, 152, 0.6)
}

h1,h2,h3,h4,h5,h6 {
	font-family: 'Corben', Georgia, Times, serif !important;
}

p,div {
	font-family: 'Nobile', Helvetica, Arial, sans-serif !important;
}
</style>
</head>
<body style="height: 100%; background: url('/images/world-map-5.png');">
	<div class="row" id="main-header">
		<a href="/index"><img alt="" src="/images/bq-logo.png"></a>
	</div>
	<div class="row" style="height: 100%;" id="main-body">

		<div class="col-sm-12">
			<h3 class="format">
				Join the <span class="best">BEST</span><span class="qualified">-QUALIFIED</span>
				Sales & Marketing Professionals
			</h3>
			<div class="login-div-1" style="margin-top: 2%;">
				<div class="login-header">Sign Up</div>
				<div class="login-body" style="overflow: auto;">
					<c:if test="${not empty signupError}">
						<div class="col-sm-12"><div id="msg-div" class="bq-alert bq-alert-danger">
							${signupError}
						</div></div>
					</c:if>

					<form id="change-password-form" method="post"
						action="<c:url value='/end-point/sign-up' />">

						<div class="form-group">
							<div class="col-sm-12">
								<input name="first-name" value="${sub.firstName }"
									class="form-control" placeholder="First Name"
									style="margin-bottom: 3%;" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<input name="last-name" value="${sub.lastName }"
									class="form-control" placeholder="Last Name"
									style="margin-bottom: 3%;" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<input name="email" value="${sub.email }" class="form-control"
									placeholder="Email" style="margin-bottom: 3%;" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<input type="password" name="password" class="form-control"
									placeholder="Password" style="margin-bottom: 3%;" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-12">
								<input class="login-btn" type="submit" value="Sign Up" />
								<span>Already have an account? <a href="/sign-in"
									style="font-weight: bold;">Sign In</a></span>
							</div>

						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<hr style="background-color: #cacaca; height: 1px" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<strong class="text-muted"> Social Login</strong>
								<ul class="flat-social" style="display: inline;">
									<li><a href="/bq/open/facebook-sign-in"
										class="social-facebook" rel="external"><i
											class="fa fa-facebook"></i> <span>Facebook</span></a></li>
									<!-- <li><a href="#" class="social-twitter" rel="external"
										target="_blank"><i class="fa fa-twitter"></i> <span>Twitter</span></a></li> -->
									<!-- <li><a href="#" class="social-google" rel="external"
										target="_blank"><i class="fa fa-google-plus"></i> <span>Google
												+</span></a></li> -->
									<li><a href="/bq/open/linkedin-sign-in"
										class="social-linkedin" rel="external"><i
											class="fa fa-linkedin"></i> <span>LinkedIn</span></a></li>
								</ul>
							</div>
						</div>
					</form>


				</div>
			</div>
		</div>
	</div>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>

</body>
</html>