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
<link rel="stylesheet" type="text/css" href="/styles/main.css">
</head>
<body style="background-color: #003366">
	<div class="sign-up-panel-one">
		<div class="bq-logo-div">
			<img alt="Best Qualified" src="/images/bq-logo.png">
		</div>
	</div>
	<div class="sign-up-panel-two">
		<div class="sign-up-panel-two-a">
			<h3>You are just a step away...</h3>
		</div>
		<div>
			<div class="sign-up-form-div">
				<c:if test='${not empty emailVerifyError}'>
					<div class="bq-alert bq-alert-danger">
						<p>
							${emailVerifyError}
						</p>
					</div>
				</c:if>
				<h3 style="color: #003366; text-align: left;">We need to verify
					your email</h3>
				<p>
					A Verification Code has been sent to
					<c:out value="${sub.email}" />
					. Enter the Code below then click verify.
				</p>
				<form method="post"
					action="<c:url value='/end-point/email-verification' />">
					<label>Verification code</label>
					<input style="width: 60%; display: inline;" name="code" /><input
						type="submit" value="Verify" style="width: 35%; display: inline;"
						class="bq-btn-primary">
				</form>
				<p>Did not get verification code? <a href="#">Resend</a></p>

			</div>
			<div>
				<p
					style="text-align: center; margin-bottom: 0px; color: white; padding-bottom: 2%;">Best
					Qualified 2016</p>
			</div>
		</div>
	</div>

</body>
</html>