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
<title>Public Relations</title>
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
		<br />
		<div class="row">
			<div class="col-sm-7" style="text-align: center;">

				<h1 style="color: #013143; font-family: roboto; margin-top: 10%; text-align: center;">
					<span>Open new doors of opportunities
						with<br/> <span style="color: red">Public Relations
							Certifications</span>
					</span>
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
							<h3>NIPR</h3>
						</div>
						<div class="col-sm-12 no-padding-div cert-view-content">
							<p style="margin-bottom: 0px">The Nigerian Institute for Public Relations (NIPR) is the professional body of qualified Public Relations Practitioners in Nigeria.
														The NIPR offers membership, trainings and qualifications. The qualifications consist of 2 levels</p>
						</div>
						<div class="col-sm-12 no-padding-div cert-view-content">
							<h4>Professional Certificate in Public Relations</h4>
							<div class="col-sm-12">
								<div class="info-div grad1">
									<h5>
										<strong>Learning Outcome</strong>

									</h5>
									<ul>
										<li>Basic principles in PR</li>
										<li>PR media and methods</li>
										<li>PR for government, public and private sectors</li>
									</ul>
								</div>

							</div>
							<div class="col-sm-12">
								<div class="info-div grad1">
									<h5>
										<strong>Audience</strong>
									</h5>
									<ul>
										<li>O'Level, diploma and degree holders</li>
									</ul>
								</div>
							</div>
							
							<h4>Professional Diploma in Public Relations</h4>
							<div class="col-sm-12">
								<div class="info-div grad1">
									<h5>
										<strong>Learning Outcome</strong>

									</h5>
									<ul>
										<li>PR policy,planning and strategy</li>
										<li>Brand management</li>
										<li>Stakeholder relations management</li>
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
								<p><a href="http://nipr-ng.org/">Learn more</a></p>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row" style="margin-bottom: 1%;">
					<div class="col-sm-12 cert-view no-padding-div">
						<div class="col-sm-12 cert-view-header no-padding-div">
							<h3>CIPR</h3>
						</div>
						<div class="col-sm-12 no-padding-div cert-view-content">
							<p style="margin-bottom: 0px">The Chartered Institute for Public Relations (CIPR) is the professional body of qualified Public Relations Practitioners in the UK.
														The CIPR offers membership, trainings and qualifications</p>
						</div>
						<div class="col-sm-12 no-padding-div cert-view-content">
							<h4>Foundation Award in Public Relations</h4>
							<div class="col-sm-12">
								<div class="info-div grad1">
									<h5>
										<strong>Learning Outcome</strong>

									</h5>
									<ul>
										<li>Basic Knowledge of PR and skill sets required</li>
										<li>Role and scope of PR</li>
										<li>How to write for different channels</li>
									</ul>
								</div>

							</div>
							<div class="col-sm-12">
								<div class="info-div grad1">
									<h5>
										<strong>Audience</strong>
									</h5>
									<ul>
										<li>School or college leavers</li>
										<li>People changing career direction</li>
										<li>Professionals working in a PR support role</li>
									</ul>
								</div>
							</div>
							
							<h4>Advanced Certificate in Public Relations</h4>
							<div class="col-sm-12">
								<div class="info-div grad1">
									<h5>
										<strong>Learning Outcome</strong>

									</h5>
									<ul>
										<li>Gain practical skills to work effectively</li>
										<li>Essential PR theories and planning theories</li>
										<li>How to social media is used for PR</li>
									</ul>
								</div>

							</div>
							<div class="col-sm-12">
								<div class="info-div grad1">
									<h5>
										<strong>Audience</strong>
									</h5>
									<ul>
										<li>Graduates or junior level PR professional</li>
									</ul>
								</div>
							</div>
							<h4>Diploma in Public Relations</h4>
							<div class="col-sm-12">
								<div class="info-div grad1">
									<h5>
										<strong>Learning Outcome</strong>

									</h5>
									<ul>
										<li>Advanced understanding of PR theories and concepts</li>
										<li>Develop the knowledge to take a strategic approach to PR planning, measurement and evaluation</li>
										
									</ul>
								</div>

							</div>
							<div class="col-sm-12">
								<div class="info-div grad1">
									<h5>
										<strong>Audience</strong>
									</h5>
									<ul>
										<li>Experienced PR Professionals</li>
									</ul>
								</div>
							</div>
							<h4>Advanced Short Courses</h4>
							<div class="col-sm-12">
								<div class="info-div grad1">
									
									<ul>
										<li>Internal Communication Certificate</li>
										<li>Internal Communication Diploma</li>
										<li>Crisis Communication Diploma</li>
										<li>Public Affairs Diploma</li>
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
								<p><a href="http://www.cipr.co.uk/content/qualifications/">Learn more</a></p>
								
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