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
<title>Choose your major interest</title>
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
	width: 50%;
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
	font-family: 'Corben', Georgia, Times, serif ;
}

p,div {
	font-family: 'Nobile', Helvetica, Arial, sans-serif;
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
				<span class="qualified">Hello <c:out
						value='${user.firstName}' />,
				</span><span class="best">Let's help you get started...</span>
			</h3>
			<div class="login-div-2" style="margin-top: 2%;">
				<div class="login-header">Select your major interest</div>
				<div class="login-body" style="overflow: auto;">
					<div class="col-sm-12">
						<h4 class="text-muted" style="margin: 0px; margin-bottom: 5px">How do you want to use BQ?</h4>
						<p class="text-info">
							<i>You can change this anytime in your settings</i>
						</p>
					</div>

					<div class="col-sm-12"
						style="background-color: white; border: 1px solid #cacaca; padding: 2%; font-size: 130%; margin-bottom: 2%;">
						<div class="form-group">
							<div class="col-sm-12">
								<div class="radio">
									<label><input class="mj" type="radio" name="interest">Find
										a job</label>
								</div>
							</div>
							<input type="hidden" class="url" value="/partial/bq-interest.html #find-a-job">
							<div class="col-sm-12 mi-content"></div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<div class="radio">
									<label><input class="mj" type="radio" name="interest">Connect
										with professionals</label>
								</div>
							</div>
							<input type="hidden" class="url" value="/partial/bq-interest.html #connect-with-professionals">
							<div class="col-sm-12 mi-content"></div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<div class="radio">
									<label><input class="mj" type="radio" name="interest">Recruit
										professionals</label>
								</div>
							</div>
							<input type="hidden" class="url" value="/partial/bq-interest.html #recruit-professionals">
							<div class="col-sm-12 mi-content"></div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<div class="radio">
									<label><input class="mj" type="radio" name="interest">Be
										a coach</label>
								</div>
							</div>
							<input type="hidden" class="url" value="/partial/bq-interest.html #be-a-coach">
							<div class="col-sm-12 mi-content" style="font-size: 9pt"></div>
						</div>

					</div>


				</div>
			</div>
		</div>
	</div>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".mj").click(function() {
				var parent = $(this).closest(".form-group");
				var url = parent.find(".url").val();
				
				$(".mi-content").slideUp("fast", function() {
					$(".mi-content").empty();
					var container = parent.find(".mi-content");
					container.load(url);
					setTimeout(function(){
						container.slideDown("slow");
					}, 500);
					
				});
				
			});
		});
	</script>

</body>
</html>