<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Coach Request</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/styles/jquery.webui-popover.min.css">
<link rel="stylesheet" href="/styles/main.css">
<link rel="stylesheet" href="/styles/animate.css">
<link rel="stylesheet" href="/styles/coaching.css">
<link rel="stylesheet" href="/styles/font-awesome.min.css">
<link href="http://fonts.googleapis.com/css?family=Corben"
	rel="stylesheet" type="text/css">
</head>
<body style="background-image: url('/images/concrete_seamless.png')">
	<%@ include file="/main-nav.html"%>
	<br />
	<div class="container-fluid banner-grad">
		<br /> <br />
		<div class="row">
			<div class="col-sm-7" style="text-align: center;">

				<h1
					style="color: #013143; font-family: roboto; margin-top: 10%; font-size: 32pt">
					<span class="span-1">Need a Coach?</span> <span class="span-2"
						style="padding-left: 2%;">Talk To Us Now</span>
				</h1>

			</div>
			<div class="col-sm-5">
				<div>
					<img alt="" src="/images/coaching-image.png"
						class="img img-responsive">
				</div>
			</div>
			<div class="col-sm-12 hidden-xs"
				style="font-weight: bold; padding: 4px; background-color: #758ab6; color: white">
				<div class="col-sm-6">
					<c:out value='${currentDate}' />
				</div>
				<div class="col-sm-6 pull-right icons">
					<i class="fa fa-facebook" aria-hidden="true"></i><i
						class="fa fa-google-plus" aria-hidden="true"></i><i
						class="fa fa-twitter" aria-hidden="true"></i><i
						class="fa fa-linkedin" aria-hidden="true"></i>
				</div>
			</div>
		</div>
	</div>

	<div class="container" style="margin-top: 2%; margin-bottom: 2%;">
		<div class="col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8">
			<div class="row">
			 	<div class="col-sm-12">
					<div class="training-intro" style="padding: 2%;">
						<h3 style="margin: 1%;">Coach Request Form</h3>
						<!--<p>Need help in preparing for an interview, or in solving a
							workplace problem or just some form of guidance in the
							application of a concept/tactic in the workplace?</p>
						<p>Fill out the form below and we would connect you to the
							best coach.</p>-->
					</div>
				</div>  
			</div>
			<div class="row">
				<div class="col-sm-12">
					<form id="coach-request-form" action="send-coach-request"
						method="POST">
						<div class="request-coach-div" style="background-color: white">
							<div class="col-sm-12">
								<p class="text-danger" style="font-family: calibri">
									<i>All fields are required</i>
								</p>
							</div>
							<div class="col-sm-12">
								<div id="msg-div"></div>
							</div>

							<div class="form-group col-sm-12">
								<h5 class="text-primary"
									style="margin-bottom: 4px; font-weight: bold;">* Tell Us
									About Yourself</h5>
							</div>
							<div class="form-group col-sm-6">
								<label>First Name </label> <input name="first-name"
									value="${user.firstName}" id="first-name" class="form-control">
							</div>
							<div class="form-group col-sm-6">
								<label>Last Name </label> <input name="last-name" id="last-name"
									value="${user.lastName}" class="form-control">
							</div>
							<div class="form-group col-sm-6">
								<label>Email </label> <input name="email" id="email"
									value="${user.email}" class="form-control">
							</div>
							<div class="form-group col-sm-6">
								<label>Phone </label> <input name="phone" id="phone"
									value="${user.phone}" class="form-control">
							</div>

							<div class="form-group col-sm-12">
								<h5 class="text-primary"
									style="margin-bottom: 6px; font-weight: bold;">* What do
									you want to discuss about?</h5>
								<textarea class="tiny form-control" rows="7" name="content"
									id="content"></textarea>
							</div>
							<div class="form-group col-sm-12">
								<h5 class="text-primary"
									style="margin-bottom: 6px; font-weight: bold;">* What type
									of coaching do you prefer?</h5>
								<label class="radio-inline"><input type="radio"
									value="online" name="format">Online </label> <label
									class="radio-inline"> <input type="radio" name="format"
									value="one-on-one">One-On-One
								</label>
							</div>
							<div class="form-group col-sm-12">

								<input type="button" id="send-request" class="btn btn-primary"
									value="Continue" />
							</div>
						</div>
					</form>



				</div>

			</div>

		</div>

	</div>



	<div class="container-fluid">
		<div class="row"><%@ include file="/WEB-INF/pages/footer.html"%></div>
	</div>

	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			tinymce.init({
				selector : '.tiny'
			});

			

			$("#send-request").click(function() {

				$.ajax({
					url : "/bq/coaching/send-coach-request",
					method : "POST",
					data : {
						"first-name" : $("#first-name").val(),
						"last-name" : $("#last-name").val(),
						"email" : $("#email").val(),
						"phone" : $("#phone").val(),
						"title" : $("#title").val(),
						"content" : tinymce.get('content').getContent(),
						"format" : $('input[name=format]:checked', '#coach-request-form').val()
					},
					dataType : "json",
					success : function(data) {
						$("#service-div").slideDown();
						//addSuccess(
						//$("#msg-div"),
						//"Your request has been sent. A coach will contact you shortly.");
					},
					error : function(xhr) {
						if (xhr.status == 417) {
							addError($("#msg-div"), xhr.statusText);
						} else if (xhr.status == 200) {
							window.location.assign("/bq/coaching/coach-payment-form");
							//addSuccess(
							//$("#msg-div"),
							//"Your request has been sent. A coach will contact you shortly.");
						}
					}
				});
			});
		});
	</script>
</body>
</html>