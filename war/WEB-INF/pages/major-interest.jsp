<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Major Interest</title>
<link rel="stylesheet" type="text/css" href="/styles/main.css">
<style type="text/css">
.sign-up-form-div input {
	display: inline;
	width: auto;
	height: auto;
	height: auto;
	font-size: medium;
}
</style>
</head>
<body style="background-color: #043143">
	<div class="sign-up-panel-one">
		<div class="bq-logo-div">
			<img alt="Best Qualified" src="/images/bq-logo.png">
		</div>
	</div>
	<div class="sign-up-panel-two">
		<div class="sign-up-panel-two-a">
			<h3>
				Welcome <span style="text-transform: capitalize;"><c:out
						value='${user.firstName }' /></span> !<small style="font-size: 80%">
					You are in. </small>
			</h3>
		</div>
		<div>
			<div class="sign-up-form-div">

				<h3 style="color: #003366; text-align: left; margin-bottom: 2%;">How
					do you want to use Best Qualified?</h3>
				<c:if test='${not empty majorInterestError}'>
					<div class="bq-alert bq-alert-danger">
						<p>
							<c:out value='${majorInterestError}' />
						</p>
					</div>
				</c:if>
				<form method="post"
					action="<c:url value='/end-point/add-major-interest' />">
					<div>
						<input type="radio" name="user-type" value="professional"
							class="user-type"> <strong>A Sales & Marketing
							Professional</strong>
						<ul style="list-style-type: circle;">
							<li>Find a Sales and marketing Job</li>
							<li>Speak to a mentor or a coach</li>
							<li>other very nice features</li>
							<li>And lots more</li>
						</ul>
					</div>
					<div>
						<input type="radio" name="user-type" value="recruiter"
							class="user-type"><strong>An Employer </strong>
						<ul style="list-style-type: circle;">
							<li>Find a Sales and marketing Professional</li>
							<li>other very nice features</li>
							<li>And lots more</li>
						</ul>
					</div>

					<div>
						<input type="submit" value="Continue" class="bq-btn-primary"
							id="user-type-btn">
					</div>
				</form>


			</div>
			<div>
				<p
					style="text-align: center; margin-bottom: 0px; color: white; padding-bottom: 2%;">Best
					Qualified 2016</p>
			</div>
		</div>
	</div>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".user-type").click(function() {
				//$("#user-type-btn").prop("disabled","false");
			});
		});
	</script>
</body>
</html>