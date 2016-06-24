<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/styles/jquery.webui-popover.min.css">
<link rel="stylesheet" href="/styles/main.css">
<title>Sales</title>
<style type="text/css">
.grad1 {
	height: 250px;
	background: #dadada; /* For browsers that do not support gradients */
	background: -webkit-linear-gradient(right, #dadada, white);
	/* For Safari 5.1 to 6.0 */
	background: -o-linear-gradient(left, #dadada, white);
	/* For Opera 11.1 to 12.0 */
	background: -moz-linear-gradient(left, #dadada, white);
	/* For Firefox 3.6 to 15 */
	background: linear-gradient(to left, #dadada, white);
	/* Standard syntax (must be last) */
}

.cert-view {
	border: 1px solid #3f6471;
	border-radius: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
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

.cert-view-header h3 {
	margin: 0;
	font-size: 26pt;
	padding: 2%;
	color: white;
}

.cert-view-content {
	padding: 2%;
	padding-bottom: 0px;
	margin-bottom: 2%;
}

.info-div {
	border: 1px solid #dadada;
	border-left: 3px solid red;
	border-radius: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	height: auto !important;
	padding-left: 2%;
	padding-right: 2%;
	margin-bottom: 1%;
}
</style>
</head>
<body>
	<%@ include file="/main-nav.html"%>
	<br />
	<div class="container-fluid grad1">
		<br/>
		<div class="row">
			<div class="col-sm-7" style="text-align: center;">
				
				<h1 style="color: #013143; font-family: roboto; margin-top: 10%;">
					<span class="pull-right"><span style="color: red">Get Certified, </span>
						Increase and improve on your creative experiences</span>
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
		<div class="row">
			<div class="col-sm-8">
				<div class="row" style="margin-bottom: 1%;">
					<div class="col-sm-12 cert-view no-padding-div">
						<div class="col-sm-12 cert-view-header no-padding-div">
							<h3>NASP</h3>
						</div>
						<div class="col-sm-12 no-padding-div cert-view-content">
							<p style="margin-bottom: 0px">National Association of Sales
								Professionals (NASP) Certified Professional Sales Person (CPSP)
								a comprehensive 6 week, online course created from 20 years of
								modeling, interviewing, and coaching the top 1% of sales
								professionals in the world</p>
						</div>
						<div class="col-sm-12 no-padding-div cert-view-content">
							<h4>Certified Professional Sales Person (CPSP)</h4>
							<div class="col-sm-12">
								<div class="info-div grad1">
									<h5>
										<strong>Learning Outcome</strong>

									</h5>
									<ul>
										<li>Cultivate sales habits of top Fortune 500 executives</li>
										<li>Learn the power of creating and utilizing "personal
											identity" to amplify your multitude of strengths</li>
										<li>Develop lasting behaviors that will make you a stand
											out professional</li>
									</ul>
								</div>

							</div>
							<div class="col-sm-12">
								<div class="info-div grad1">
									<h5>
										<strong>Audience</strong>
									</h5>
									<ul>
										<li>SalesManagers and Executives</li>
									</ul>
								</div>
							</div>
							<div class="col-sm-12">
								<p>Find more information on
									http://certification.hubspot.com/inbound-sales-certification</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row" style="margin-bottom: 1%">
					<div class="col-sm-12 cert-view no-padding-div">
						<div class="col-sm-12 cert-view-header no-padding-div">
							<h3>Hubspot</h3>
						</div>
						<div class="col-sm-12 no-padding-div cert-view-content">
							<p style="margin-bottom: 0px">The Inbound Sales Certification
								is a free qualification offered by Hubspot. It consists of a 5
								self-paced classes. The certification is important for an
								introduction to inbound sales. It includes modules which would
								prepare sales (or non-sales) professionals to better identify,
								connect, explore and advise the modern buyer. The inbound Sales
								Certification Course can be taken by sales associates, sales
								leaders, entrepreneurs and inbound marketers.</p>
						</div>
						<div class="col-sm-12 no-padding-div cert-view-content">
							<h4>Inbound Sales Certification</h4>
							<div class="col-sm-12">
								<div class="info-div grad1">
									<h5>
										<strong>Inbound Sales Certificate can be earned by</strong>

									</h5>
									<ul>
										<li>Signing up for a complimentary account or Logging in</li>
										<li>Finding inbound Sales certification library and study
											guides</li>
										<li>Taking the self-study classes</li>
										<li>Passing the certification exam</li>
									</ul>
								</div>

							</div>
							<div class="col-sm-12">
								<div class="info-div grad1">
									<h5>
										<strong>Audience</strong>
									</h5>
									<ul>
										<li>SalesManagers and Executives</li>
									</ul>
								</div>
							</div>
							<div class="col-sm-12">
								<p>Find more information on
									http://certification.hubspot.com/inbound-sales-certification</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<%@ include file="/WEB-INF/pages/certification-sidebar.html"%>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
</body>
</html>