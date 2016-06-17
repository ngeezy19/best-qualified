<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reading List</title>
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
<style type="text/css">
.grad1 {
	background: #dadada;
	background: -webkit-linear-gradient(right, #dadada, white);
	background: -o-linear-gradient(left, #dadada, white);
	background: -moz-linear-gradient(left, #dadada, white);
	background: linear-gradient(to left, #dadada, white);
}

.cert-view-header {
	background-color: #013143;
	background: -webkit-linear-gradient(right, #013143, #738e97);
	/* For Safari 5.1 to 6.0 */
	background: -o-linear-gradient(left, #013143, #738e97);
	/* For Opera 11.1 to 12.0 */
	background: -moz-linear-gradient(left, #013143, #738e97);
	/* For Firefox 3.6 to 15 */
	background: linear-gradient(to left, #013143, #738e97);
	/* Standard syntax (must be last) */
}

.training-intro {
	border: 1px solid #444;
	background: #666;
	padding: 2%;
	border-left: 5px solid orange;
	color: white;
}

.workshop-info {
	margin-top: 2%;
	background: #fafafa; /* For browsers that do not support gradients */
	background: -webkit-linear-gradient(#eaeaea, white);
	/* For Safari 5.1 to 6.0 */
	background: -o-linear-gradient(#eaeaea, white);
	/* For Opera 11.1 to 12.0 */
	background: -moz-linear-gradient(#eaeaea, white);
	/* For Firefox 3.6 to 15 */
	background: linear-gradient(#eaeaea, white); /* Standard syntax */
}

.workshop-info p {
	font-family: calibri
}
</style>
</head>
<body>
	<%@ include file="/main-nav.html"%>
	<br />
	<div class="container-fluid grad1">
		<br />
		<div class="row">
			<div class="col-sm-7" style="text-align: center;">

				<h1
					style="color: #013143; font-family: roboto; margin-top: 10%; font-size: 32pt">
					<span class="text-primary">Need A Coach?</span> <span
						style="color: red; padding-left: 1%;">Talk To Us Now</span>
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