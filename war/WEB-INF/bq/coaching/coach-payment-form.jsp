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
<style type="text/css">
.table-header {
	background-color: #983b59;
	color: white;
	font-weight: bold;
	padding: 2%;
	border-right: 1px solid white
}

.table-body {
	background-color: #faf7f8;
	padding: 2%;
	border-right: 1px solid white
}
</style>
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

					<div class="request-coach-div" style="background-color: white">

						<div class="col-sm-12">
							<h3 style="color: #3b5998">Payment Summary</h3>
							<h4 class="text-muted">
								<span style="color: green; font-weight: bold;">Transaction
									Ref:</span>
								<c:out value='${coachRequest.txnRef}' />
							</h4>
						</div>
						<br />
						<div class="col-sm-12">
							<div class="col-sm-6 no-padding-div">
								<div class="table-header">Service</div>
								<div class="table-body">
									<c:out value='${coachRequest.serviceName}' />
								</div>
							</div>
							<div class="col-sm-6 no-padding-div" style="text-align: right">
								<div class="table-header">Price (NGN)</div>
								<div class="table-body">
									<c:out value='${coachRequest.price}' />
								</div>
								<div
									style="background-color: #59983b; color: white; padding: 2%;">
									<span style="font-weight: bold;">Total: </span>
									<c:out value='${coachRequest.price}' />
								</div>
							</div>
						</div>


						<div class="col-sm-12"
							style="margin-top: 4%; border-top: 1px dotted; gray; padding-top: 1%;">
							<h3 style="color: #3b5998">Select a payment method</h3>
							<div class="col-sm-12">
								<form id="myForm">
									<div class="radio"
										style="margin-bottom: 4%; font-size: 12pt; font-weight: bold;">
										<label><input type="radio" class="optradio" name="opt"
											value="1">Electronic Transfer</label>
									</div>
									<div class="radio">
										<label><input type="radio" class="optradio" value="2"
											name="opt">
											<div class="col-sm-10 no-padding-div">
												<img class="img img-responsive" alt=""
													src="/images/interswitch-logo.png" style="margin-top: -6px">
											</div></label>
									</div>
								</form>
							</div>
						</div>


						<div class="col-sm-12" style="margin-top: 1%; padding-top: 2%;">
							<p>
								By clicking Make Payment , You agree with the Best Qualified<a
									href="#"> Terms and Conditions</a>
							</p>
							<input type="button" value="Make Payment" disabled="disabled"
								id="btn-submit" class="btn btn-success">
						</div>

					</div>

					<form id="interswitch-tansaction-form"
						action="https://stageserv.interswitchng.com/test_paydirect/pay"
						method="post">
						<input name="product_id" type="hidden" value="6112" /> <input
							name="amount" type="hidden" value="${coachRequest.webPayPrice}" />
						<input name="currency" type="hidden" value="566" /> <input
							name="site_redirect_url" type="hidden"
							value="${coachRequest.redirectUrl}" /> <input name="site_name"
							type="hidden" value="https://best-qualified.appspot.com" /> <input
							name="cust_id" type="hidden" value="${coachRequest.email}" /><input
							name="cust_name" type="hidden"
							value="${coachRequest.firstName} ${coachRequest.lastName}" /><input
							name="txn_ref" type="hidden" value="${coachRequest.txnRef}" /> <input
							name="pay_item_id" type="hidden" value="101" /> <input
							name="hash" type="hidden" value="${coachRequest.hash}" />
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
			$(".optradio").click(function() {
				$("#btn-submit").prop("disabled", false);
			});

			$("#btn-submit").click(function() {
				var x = $('input[name=opt]:checked', '#myForm').val();
				if(x == "1") {
					alert("1");
				}else if(x=="2") {
					$("#interswitch-tansaction-form").submit();
				}
			});
		});
	</script>

</body>
</html>