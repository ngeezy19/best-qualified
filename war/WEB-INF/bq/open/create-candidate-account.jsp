<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" href="/styles/main.css">
<title>Create Professional Account</title>

</head>
<body class="login-body">
	<div class="container-fluid">
		<div class="row">
			<div class="login-div" style="text-align: center">
				<img alt="" src="/images/bq-logo.png"
					style="width: 40%; margin: 0 auto;">
			</div>


		</div>
		<div class="row">
			<div class="col-sm-12">
				<c:choose>
					<c:when test="${not empty loginError}">
						<div class="login-div alert alert-danger">
							<p>
								<span class="glyphicon glyphicon-exclamation-sign"></span>
								<c:out value="${loginError}" />
							</p>
						</div>
					</c:when>
					<c:when test="${not empty loginSuccess}">
						<div class="login-div alert alert-success">
							<p>
								<span class="glyphicon glyphicon-ok"></span>
								<c:out value="${loginSuccess}" />
							</p>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="create-account-form">
					<h3>Join Best Qualified Professionals - It's Free</h3>
					<div class="col-sm-8"
						style="border-top: 1px red solid; background-color: #eeeeee; margin-bottom: 2%;">
						<div class="col-sm-12" style="margin-bottom: 2%;">
							<h4 style="margin-bottom: 0px; padding-bottom: 0px"><strong class="text-primary">Sign Up for Best Qualified
								with Email</strong></h4>
							<small>Already have a Best Qualified Account? <a>Login</a></small>
						</div>
						<div class="col-sm-12">
							<div class="form-group">
								<label>Email:</label><input name="email" class="form-control" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Desired Password:</label><input name="password1"
									class="form-control" type="password" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Retype Password:</label><input name="password2"
									class="form-control" type="password" />
							</div>
						</div>
						
						<div class="col-sm-6">
							<div class="form-group">
								<label>First Name:</label><input name="first-name"
									class="form-control" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Last Name:</label><input name="last-name"
									class="form-control" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Phone:</label><input name="phone" class="form-control" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Gender:</label><select name="gender" class="form-control">
									<option>Female</option>
									<option>Male</option>
								</select>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Date of Birth:</label><input name="dateOfBirth"
									class="form-control" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Current Career Level:</label> <select name="career-level"
									class="form-control">
									<option>--Select--</option>
								</select>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Education Level:</label><select name="education-level"
									class="form-control">
									<option>--Select--</option>
								</select>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Specialization:</label><select name="specialization"
									class="form-control">
									<option>--Select--</option>
								</select>
							</div>
						</div>
						
						<div class="col-sm-12">
							<div class="checkbox">
								<label><input type="checkbox" value="">Email me job opportunities pertaining my career level, education level and specialization.</label>
							</div>
						</div>
						<div class="col-sm-12">
							<div class="checkbox">
								<label><input type="checkbox" value="">Email me promotional offers and other opportunities from Best Qualified.</label>
							</div>
						</div>
						<div class="col-sm-12" style="text-align: center; font-family: calibri; font-size: 9pt">
							<p>By clicking create account, you agree with Best Qualified <a href="#">Terms and Conditions</a> and <a href="#">Use Cookie policy</a></p>
						</div>
						<div class="col-sm-12">
							<div class="form-group" style="text-align: center;">
								<input type="submit" value="Create Account">
							</div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="col-sm-12 discussion-sidebar">
							<h4>Why BQ?</h4>
							<ul>
								<li>Qui audire signiferumque concludaturque</li>
								<li>delicata erroribus duo, at aliquip reformidans efficiantur </li>
								<li>Qui audire signiferumque concludaturque</li>
								<li>delicata erroribus duo, at aliquip reformidans efficiantur </li>
							</ul>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>