<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sales Documents</title>
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
		<br />
		<div class="row">
			<div class="col-sm-7" style="text-align: center;">

				<h1
					style="color: #013143; font-family: roboto; margin-top: 10%; font-size: 32pt">
					<span class="span-1">Get started today with </span> <span class="span-2"
						style="padding-left: 1%;">BQ Toolkits</span>
				</h1>

			</div>
			<div class="col-sm-5">
				<div>
					<img alt="" src="/images/sales-professional.png"
						class="img img-responsive">
				</div>
			</div>
		</div>
	</div>

	<div class="container" style="margin-top: 2%; margin-bottom: 2%;">
		<div class="col-sm-8">
			

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
		$(document)
				.ready(
						function() {
							tinymce.init({
								selector : '.tiny'
							});

							$("#send-request")
									.click(
											function() {

												$
														.ajax({
															url : "/bq/coaching/send-coach-request",
															method : "POST",
															data : {
																"first-name" : $(
																		"#first-name")
																		.val(),
																"last-name" : $(
																		"#last-name")
																		.val(),
																"email" : $(
																		"#email")
																		.val(),
																"phone" : $(
																		"#phone")
																		.val(),
																"title" : $(
																		"#title")
																		.val(),
																"content" : tinymce
																		.get(
																				'content')
																		.getContent()
															},
															dataType : "json",
															success : function(
																	data) {
																addSuccess(
																		$("#msg-div"),
																		"Your request has been sent. A coach will contact you shortly.");
															},
															error : function(
																	xhr) {
																if (xhr.status == 417) {
																	addError(
																			$("#msg-div"),
																			xhr.statusText);
																} else if (xhr.status == 200) {
																	addSuccess(
																			$("#msg-div"),
																			"Your request has been sent. A coach will contact you shortly.");
																}
															}
														});
											});
						});
	</script>
</body>
</html>