<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Best Qualified Sign In</title>
<link rel="stylesheet" type="text/css" href="/styles/main.css">
<style type="text/css">
.fb-button:hover {
	background: #385693;
}

.fb-button {
	font-weight: bold;
	border-width: 1px;
	border-style: solid;
	cursor: pointer;
	margin: 0;
	overflow: visible;
	text-decoration: none !important;
	text-align: center;
	width: auto;
	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.35);
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-ms-border-radius: 3px;
	-o-border-radius: 3px;
	border-radius: 3px;
	padding: 0 15px;
	height: 34px;
	line-height: 32px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	font-size: 16px;
	color: #fff;
	background-color: #287bbc;
	border-color: #1b5480;
	filter: progid:DXImageTransform.Microsoft.gradient(gradientType=0,
		startColorstr='#FF287BBC', endColorstr='#FF23639A');
	background-image: -webkit-linear-gradient(top, #287bbc 0%, #23639a 100%);
	background-image: -moz-linear-gradient(top, #287bbc 0%, #23639a 100%);
	background-image: -o-linear-gradient(top, #287bbc 0%, #23639a 100%);
	background-image: linear-gradient(top, #287bbc 0%, #23639a 100%);
	white-space: nowrap;
	display: -moz-inline-stack;
	display: inline-block;
	vertical-align: middle;
	zoom: 1;
	vertical-align: middle;
	overflow: hidden;
	width: 100%;
	font-weight: normal;
	filter: progid:DXImageTransform.Microsoft.gradient(gradientType=0,
		startColorstr='#FF3B5A9A', endColorstr='#FF3B5A9A');
	background: #3b5a9a;
	border-color: #002d70;
}
</style>
</head>
<body style="background-color: #043143;">
	<div class="sign-up-panel-one">
		<div class="bq-logo-div">
			<img alt="Best Qualified" src="/images/bq-logo.png">
		</div>
	</div>

	<div class="sign-up-panel-two">
		<div class="sign-up-panel-two-a">
			<h3>Meet The Best Qualified Sales & Marketing Professionals</h3>
		</div>
		<div>
			<div class="sign-up-form-div">
				<c:if test='${not empty signinError}'>
					<div class="bq-alert bq-alert-danger">
						<p>
							<c:out value='${signinError}' />
						</p>
					</div>
				</c:if>

				<form method="post" action="<c:url value='/end-point/sign-in' />">
					<label>Email</label> <input name="email" value="${sin.email }" />
					<label>Password</label> <input name="password" type="password" />

					<div style="margin-top: 4%">
						<input type="submit" value="Sign In" class="bq-btn-primary"
							id="sign-in">
					</div>
				</form>
				<div>
					<hr style="margin-top: 2em; margin-bottom: 2%;" />
					<p style="font-family: arial; font-size: 10pt">
						Don't have a BQ account? <a href="/sign-up">Sign Up</a>
					</p>
					<div>
						<p style="text-align: center">You can choose to</p>
						<a href="/bq/open/facebook-sign-in" class="fb-button">Continue
							With Facebook</a>
						<p style="margin-bottom: 2px; margin-top: 2px; text-align: center">or</p>
						<input href="/bq/open/linkedin-sign-in" class="bq-btn-primary" value='Continue with LinkedIn'>
					</div>
				</div>
			</div>
			<div>
				<p
					style="text-align: center; margin-bottom: 0px; color: white; padding-bottom: 2%;">Best
					Qualified 2016</p>
			</div>
		</div>
	</div>
</body>
<script src="/js/jquery-1.11.2.min.js"></script>
<script src="/js/main.js"></script>

</html>