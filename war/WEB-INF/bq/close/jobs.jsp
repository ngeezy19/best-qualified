<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Jobs</title>
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
</style>
</head>
<body style="background-color: #f1f1f1">
	<%@ include file="/main-nav.html"%>
	<div class="container dashboard-body" style="margin-top: 8%;">
		<div class="col-sm-12" style="margin-bottom: 2%;">
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
			<div class="col-sm-12" style="margin-bottom: 2%;">
				<div class="col-sm-2">
					<div class="dashboard-section-icon">
						<img alt="" src="/images/icon_jobs.gif" class="img img-responsive">
					</div>
				</div>
				<div class="col-sm-10 dashboard-section">
					<div class="col-sm-12">
						<span class="profile-sub-header">Jobs You May Like</span>
					</div>
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
								Posted yesterday <a class="btn btn-primary pull-right">View</a>
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
								Posted 2 days ago <a class="btn btn-primary pull-right">View</a>
							</h5>
						</div>

					</div>
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
								Posted yesterday <a class="btn btn-primary pull-right">View</a>
							</h5>
						</div>

					</div>
					<div class="col-sm-12" style="padding-top: 2%; padding-bottom: 2%;">
						View More</div>
				</div>
			</div>

		</div>
		<div class="col-sm-4">
			<div class="col-sm-12 dashboard-row dashboard-section">
				<h4>Saved Jobs (6)</h4>
				<p>Save jobs so that you can review Later</p>
				<p style="text-align: right">See all your Saved Jobs</p>
			</div>
			<div class="col-sm-12 dashboard-row dashboard-section">
				<h4>Job Alerts (0)</h4>
				<p>Get alerts when jobs that meet your specifications are
					available.</p>
				<p style="text-align: right;">View your Job alerts</p>
			</div>
			<div class="col-sm-12 dashboard-row dashboard-section">
				<h4>Applied Jobs</h4>
				<p>review your past job applications.</p>
				<p style="text-align: right">View Applications</p>
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