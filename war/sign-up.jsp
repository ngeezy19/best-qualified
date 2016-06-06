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
.module-div{
	border: 1px solid gray;
	padding-top: 4%;
	padding-bottom: 2%;
	text-align: center;
}

.module-title {
	border: 1px gray solid;
	border-top-right-radius: 10px;
	-moz-border-top-right-radius: 10px;
	-webkit-border-top-right-radius: 10px;
	border-top-left-radius: 10px;
	-moz-border-top-left-radius: 10px;
	-webkit-border-top-left-radius: 10px;
	padding: 1%;
	font-family: roboto;
	font-weight: bold;
	margin-top: 2%;
	color: white;
	background: gray; /* For browsers that do not support gradients */
    background: -webkit-linear-gradient(black, gray); /* For Safari 5.1 to 6.0 */
    background: -o-linear-gradient(black, gray); /* For Opera 11.1 to 12.0 */
    background: -moz-linear-gradient(black, gray); /* For Firefox 3.6 to 15 */
    background: linear-gradient(black, gray);
}
.login-div {
	width: 60%;
	margin: 0 auto;
	margin-top: 10%;
}
.login-header {
	border-radius-top: 3px;
	border: 1px solid #dadada;
	width: 40%;
	border-bottom: none;
	padding: 1%;
	padding-left: 2%;
	border-top-right-radius: 5px;
	-moz-border-top-right-radius: 5px;
	-webkit-border-top-right-radius: 5px;
	font-size: 14pt;
	font-weight: bold;
	color: white;
	background-color: rgb(128,128,128);
	background-color: rgba(128,128,128,0.5);
	
}

@keyframes example {
    from {background-color: white;}
    to {background-color: yellow;}
}

/* The element to apply the animation to */
.module-text {
    animation-name: example;
    animation-duration: infinite;
    font-family: roboto;
    font-size: 9pt;
}

.login-btn {
	color : white;
	background-color: rgb(128,128,128);
	background-color: rgba(128,128,128,0.5);
	font-size: 14pt;
}

.login-btn:hover {
	background-color: rgb(100,100,100);
	background-color: rgba(100,100,100,0.5);
}

.login-body {
	border: 2px #dadada solid;
	padding: 4%;
	background: url('/images/concrete_seamless.png');
}

.module-image {
	display: block;
    margin-left: auto;
    margin-right: auto;
}

#main-header {
	padding: 1%;
	text-align: center;
	background-color: #3bafda;
}

input {
	margin: 2px !important;
}
</style>
</head>
<body style="height: 100%;">
	<div class="row" id="main-header"><img alt="" src="/images/bq-logo.png"></div>
	<div class="row" style="height: 100%;">
		<div class="col-sm-6" style="">
			<div class="col-sm-8 col-sm-offset-2" style="margin-top: 10%;">
				<div class="col-sm-12 col-md-6 module-div">
					<div class="col-sm-12" style="text-align: center">
						<img class="img img-responsive module-image" alt="" src="/images/jobs-icons.png">
					</div>
					<div class="col-sm-12 module-title"><span class="module-text">Career Mobility</span></div>
				</div>
				<div class="col-sm-12 col-md-6 module-div">
					<div class="col-sm-12">
						<img class="img img-responsive module-image" alt="" src="/images/certification-icons.png">
					</div>
					<div class="col-sm-12 module-title"><span class="module-text">Demonstrate Your Ability</span></div>
				</div>
				<div class="col-sm-12 col-md-6 module-div">
					<div class="col-sm-12">
						<img class="img img-responsive module-image" alt="" src="/images/coaching-icons.png">
					</div>
					<div class="col-sm-12 module-title"><span class="module-text">Guidance & Hand Holding</span></div>
				</div>
				<div class="col-sm-12 col-md-6 module-div">
					<div class="col-sm-12">
						<img class="img img-responsive module-image" alt="" src="/images/network.png">
					</div>
					<div class="col-sm-12 module-title"><span class="module-text">Our Network</span></div>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="login-div">
				<div class="login-header">Sign Up</div>
				<div class="login-body">
					<div class="col-sm-6 no-padding-div padding-div form-group">
						<input class="form-control" placeholder="First Name" />
					</div>
					<div class="col-sm-6 no-padding-div padding-div form-group">
						<input class="form-control" placeholder="Last Name" />
					</div>
					<div class="col-sm-6 no-padding-div padding-div form-group">
						<input class="form-control" placeholder="Email" />
					</div>
					<div class="col-sm-6 no-padding-div padding-div form-group">
						<input class="form-control" type="password" placeholder="Password">
					</div>
					<div class="form-group">
						<input class="login-btn" type="button" value="Sign Up"> Already have an
						account?<a href="#" style="font-weight: bold;"> Sign In </a>
					</div>
					<hr style="background-color: #cacaca; height: 1px" />
					<div><h4>Social Login<li style="color: #3b5998; padding: 2%;" class="fa fa-facebook-square fa-lg"></li><li style="color:  #007bb5; padding: 2%;" class="fa fa-linkedin-square fa-lg"></li></h4> </div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>