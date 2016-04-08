<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Jobs Result</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/styles/jquery.webui-popover.min.css">
<link rel="stylesheet" href="/styles/main.css">
<style type="text/css">
.profile-sub-header {
	font-family: arial;
	font-weight: bold;
	font-size: 16pt;
	color: gray;
	padding-bottom: 5px;
	border-bottom: 1px #666 dotted;
}

.profile-field-div {
	margin-top: 2px;
	margin-bottom: 2px
}

.filter li {
	list-style: none;
	font-family: arial;
	border-bottom: 1px gray solid;
	padding: 3%;
}

.filter:last-child {
	border-bottom: none !important;
}
</style>
</head>
<body style="background-color: #f1f1f1">
	<%@ include file="/main-nav.html"%>
	<div class="container dashboard-body"
		style="margin-top: 8%; margin-bottom: 2%;">
		<div class="col-sm-12" style="margin-bottom: 2%">
			<div class="col-sm-12 dashboard-section no-padding-div"
				style="padding-bottom: 0px; padding-top: 0px">
				<div class="col-sm-3"
					style="background-color: gray; color: white; font-family: arial; font-weight: bold; text-align: center; height: 4.4em">
					<h4 style="padding-top: 3%;">Find a Job</h4>
				</div>
				<form action="<c:url value='/bq/open/job-search' />">
					<div class="col-sm-7" style="margin-top: 1%;">
						<div class="form-group">
							<input class="form-control" placeholder="jobs"/ >
						</div>
					</div>
					<div class="col-sm-2" style="margin-top: 1%;">
						<div class="form-group">
							<input type="submit" value="Search" class="btn btn-primary"/ >
						</div>
					</div>
					<div class="col-sm-12" style="background-color: gray; color: white">
						<div class="col-sm-12" style="text-align: right">Advanced
							Search</div>
					</div>
				</form>
			</div>
		</div>
		<div class="col-sm-8">
			<div class="col-sm-12 dashboard-section" style="margin-bottom: 2%">
				<div class="col-sm-12">
					<div class="col-sm-3">
						<img alt="" src="/images/company.png" class="img img-responsive">
					</div>
					<div class="col-sm-9">
						<div class="col-sm-12">
							<h3>Sales & Marketing Representative</h3>
						</div>
						<div class="col-sm-12">
							<h5 style="margin-bottom: 3px">Netflex Sales Company</h5>
						</div>
						<div class="col-sm-12">
							<p>Lagos, Nigeria</p>
						</div>
						<div class="col-sm-12">
							<p>
								<span>Posted 15 days ago</span><span class="pull-right"><a>Apply
										on company website</a></span>
							</p>
						</div>
					</div>
					<div class="col-sm-12">
						<hr />
					</div>
					<div class="col-sm-12">
						<h4>Job Description</h4>
						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry. Lorem Ipsum has been the industry's
							standard dummy text ever since the 1500s, when an unknown printer
							took a galley of type and scrambled it to make a type specimen
							book. It has survived not only five centuries, but also the leap
							into electronic typesetting</p>
						<h4>Responsiblities</h4>

						<ul>
							<li>text ever since the 1500s, when a</li>
							<li>specimen book. It has survived</li>
							<li>Lorem Ipsum has been the industry's</li>
							<li>simply dummy text of the printing and</li>
							<li>the leap into electronic typesetting</li>
							<li>Lorem Ipsum is simply dummy text of the printing</li>
							<li>standard dummy text ever since</li>
						</ul>

						<h4>Requirements</h4>

						<ul>
							<li>text ever since the 1500s, when a</li>
							<li>specimen book. It has survived</li>
							<li>Lorem Ipsum has been the industry's</li>
							<li>Lorem Ipsum is simply dummy text of the printing</li>
							<li>standard dummy text ever since</li>
							<li>simply dummy text of the printing and</li>
							<li>simply dummy text of the printing and</li>
							<li>the leap into electronic typesetting</li>
							<li>Lorem Ipsum is simply dummy text of the printing</li>
							<li>standard dummy text ever since</li>
							<li>simply dummy text of the printing and</li>
							<li>the leap into electronic typesetting</li>
							<li>Lorem Ipsum is simply dummy text of the printing</li>
							<li>standard dummy text ever since</li>
						</ul>
					</div>

				</div>
			</div>
			<div class="col-sm-12 dashboard-section">
				<h4>About Netflex Sales Company</h4>
				<div class="col-sm-3">
					<img alt="" src="/images/company.png" class="img img-responsive">
				</div>
				<div class="col-sm-9">
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry. Lorem Ipsum has been the industry's standard
						dummy text ever since the 1500s, when an unknown printer took a
						galley of type and scrambled it to make a type specimen book. It
						has survived not only five centuries, but also the leap into
						electronic typesetting</p>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="col-sm-12 discussion-sidebar">
				<h4 style="border-bottom: 1px gray solid">Job Summary</h4>
				<strong style="display: block;">Company</strong>
				<p>Netflex Sales Company</p>
				<strong style="display: block;">Job Level</strong>
				<p>Undergraduate Internship/Vacation Job</p>
				<strong style="display: block;">Location</strong>
				<p>Lagos, Nigeria</p>
				<strong style="display: block;">Specialization</strong>
				<p>Oil & Gas</p>
				<strong style="display: block;">Job Type</strong>
				<p>Full Time</p>
				<strong style="display: block;">Mininum Qualification</strong>
				<p>BSc</p>
				<strong style="display: block;">Prefered Years of
					Experience</strong>
				<p>1-3 years</p>
				<strong style="display: block;">Application Deadline</strong>
				<p>3 weeks from now</p>
			</div>
			<div class="col-sm-12 dashboard-section">
				<div class="col-sm-12" style="border-bottom: 1px gray solid">
					<div class="col-sm-3">
						<img alt="" src="/images/company.png" class="img img-responsive">
					</div>
					<div class="col-sm-9">
						<h4>Sales Manager</h4>
						<h5>Flex Sales Company</h5>
						<h5>
							Posted 3 mins ago <a class="btn btn-primary pull-right">View</a>
						</h5>
					</div>

				</div>
				<div class="col-sm-12" style="border-bottom: 1px gray solid">
					<div class="col-sm-3">
						<img alt="" src="/images/company.png" class="img img-responsive">
					</div>
					<div class="col-sm-9">
						<h4>Sales Representative</h4>
						<h5>Sales Professionals Company</h5>
						<h5>
							Posted yesterday <a href="<c:url value='/bq/open/job' />"
								class="btn btn-primary pull-right">View</a>
						</h5>
					</div>

				</div>
				<div class="col-sm-12" style="border-bottom: 1px gray solid"">
					<div class="col-sm-3">
						<img alt="" src="/images/company.png" class="img img-responsive">
					</div>
					<div class="col-sm-9">
						<h4>Senoir Sales Executive</h4>
						<h5>Promasidor Ltd</h5>
						<h5>
							Posted 2 days ago <a href="<c:url value='/bq/open/job' />"
								class="btn btn-primary pull-right">View</a>
						</h5>
					</div>

				</div>
				<div class="col-sm-12" style="">
					<div class="col-sm-3">
						<img alt="" src="/images/company.png" class="img img-responsive">
					</div>
					<div class="col-sm-9">
						<h4>Sales Manager</h4>
						<h5>Flex Sales Company</h5>
						<h5>
							Posted 3 mins ago <a href="<c:url value='/bq/open/job' />"
								class="btn btn-primary pull-right">View</a>
						</h5>
					</div>

				</div>

			</div>
		</div>



	</div>
	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.webui-popover.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>
</body>
</html>