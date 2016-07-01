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
<body>
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
		</div>
	</div>

	<div class="container" style="margin-top: 2%; margin-bottom: 2%;">
		<div class="col-sm-8">
			<div class="row">
				<div class="col-sm-12">
					<div class="training-intro" style="padding: 2%;">
						<p>Need help in preparing for an interview, or in solving a
							workplace problem or just some form of guidance in the
							application of a concept/tactic in the workplace?</p>
						<p>Fill out the form below and we would connect you to the
							best coach.</p>
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
							<div class="form-group col-sm-12" style="display: none;">
								<input type="button" id="send-request" class="btn btn-primary"
									value="Continue" />
							</div>
					</form>
					<div class="form-group col-sm-12" id="service-div">
						<table class="table table-responsibe table-striped table-bordered">
							<thead style="background-color: #3b5998; color: white">
								<tr>
									<th>Service</th>
									<th style="text-align: right;">Cost (NGN)</th>
								</tr>
							</thead>
							<tbody>
								<tr id="online" style="">
									<td><label class="radio-inline"><input
											type="radio" id="online-radio" name="coaching-type"
											value="online">Online Coaching</label></td>
									<td style="text-align: right;">50,000</td>
								</tr>
								<tr id="oneonone" style="">
									<td><label class="radio-inline"><input
											type="radio" name="coaching-type" value="oneonone"
											id="one-radio">1-on-1 coaching</label></td>
									<td style="text-align: right;">75,000</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="form-group col-sm-12">
						<form name="form1" id="interswitch-tansaction-form"
							action="https://stageserv.interswitchng.com/test_paydirect/pay"
							method="post">
							<input name="product_id" type="hidden" value="6112" /> <input
								name="amount" type="hidden" value="5000000" /> <input
								name="currency" type="hidden" value="566" /> <input
								name="site_redirect_url" type="hidden"
								value="http://localhost:8888/" /> <input name="site_name"
								type="hidden" value="https://www.salesmaxx.com" /> <input
								name="txn_ref" type="hidden" value="1234123123" /> <input
								name="pay_item_id" type="hidden" value="101" /> <input
								name="hash" type="hidden" value="418" />
							<div>
								<input type="submit" class="btn btn-primary" value="Pay Now"><br />
								<img alt="" src="/images/interswitch-logo.png">
							</div>
						</form>
					</div>

				</div>

			</div>
		</div>

	</div>
	<div class="col-sm-4">
		<%@ include file="/WEB-INF/pages/certification-sidebar.html"%>
	</div>
	</div>

	<%@ include file="/WEB-INF/pages/footer.html"%>
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

			$("#online-radio").click(function() {
				$("#oneonone").hide();
				$("#online").slideDown();
				$(this).prop("disabled", true);
				$("#one-radio").prop("disabled", false);
			});

			$("#one-radio").click(function() {
				$("#online").hide();
				$("#oneonone").slideDown();
				$(this).prop("disabled", true);
				$("#online").prop("disabled", false);
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
						"content" : tinymce.get('content').getContent()
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
							$("#service-div").slideDown();
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