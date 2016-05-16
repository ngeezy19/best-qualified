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
<body
	style="background-image: url(/images/background.jpg); background-repeat: repeat;">
	<%@ include file="/main-nav.html"%>
	<div class="container dashboard-body" style="margin-top: 8%;">
		<div class="col-sm-12" style="margin-bottom: 2%;">
			<div class="col-sm-12 dashboard-section no-padding-div"
				style="padding-bottom: 0px; padding-top: 0px">
				<div class="col-sm-3"
					style="background-color: gray; color: white; font-family: arial; font-weight: bold; text-align: center; height: 4.4em">
					<img alt="Find a job" src="/images/find_a_job.png">
				</div>
				<form action="<c:url value='/bq/open/job-search' />">
					<div class="col-sm-7" style="margin-top: 1%;">
						<div class="form-group">
							<input name="searchString" class="form-control"
								placeholder="Jobs and Companies"/ >
						</div>
					</div>
					<div class="col-sm-2" style="margin-top: 1%;">
						<div class="form-group">
							<input type="submit" value="Search"
								class="btn btn-primary form-control"/ >
						</div>
					</div>
					<div class="col-sm-12" style="background-color: gray; color: white">
						<div class="col-sm-12"
							style="text-align: right; margin-bottom: 4px">Advanced
							Search</div>
					</div>
				</form>
			</div>
		</div>
		<div class="col-sm-8">
			<div class="col-sm-12" style="margin-bottom: 2%;">
				<div class="col-sm-2">
					<div class="dashboard-section">
						<img alt="" src="/images/jobs.png"
							style="width: 80%; margin: 0 auto" class="img img-responsive">
					</div>
				</div>
				<div class="col-sm-10 dashboard-section">
					<div class="col-sm-12">
						<h4 style="margin-bottom: 4%; font-weight: bold; color: #666666">Jobs
							that may interest you</h4>
					</div>
					<c:forEach var="item" items="${myJobs.iJobs}">
						<div class="col-sm-12"
							style="border-bottom: 1px #e1e1e1 solid; margin-bottom: 2%; margin-top: 2%;">
							<div class="col-sm-3">
								<a <c:choose><c:when test="${empty professionalDashboard.professionalLevel}">class="call-no-assessment" href="#"</c:when>
										<c:otherwise>href="/bq/open/job?job-key=${item.jobKey}"</c:otherwise>
										</c:choose>><img
									alt="" src="${item.pictureUrl}" class="img img-responsive"></a>
							</div>
							<div class="col-sm-9">
								<h4>
									<a <c:choose><c:when test="${empty professionalDashboard.professionalLevel}">class="call-no-assessment" href="#"</c:when>
										<c:otherwise>href="/bq/open/job?job-key=${item.jobKey}"</c:otherwise>
										</c:choose>><c:out value="${item.jobTitle}" /></a>
								</h4>
								<h5 style="font-family: calibri">
									<c:out value="${item.companyName}" />
								</h5>
								<h5>
									<i style="font-family: calibri" class="text-danger">Posted <c:out
											value="${item.postedTime}" /></i> <a <c:choose><c:when test="${empty professionalDashboard.professionalLevel}">class="call-no-assessment pull-right" href="#"</c:when>
										<c:otherwise>href="/bq/open/job?job-key=${item.jobKey}"</c:otherwise>
										</c:choose> class="pull-right">View</a>
								</h5>
							</div>

						</div>
					</c:forEach>
					<div class="col-sm-12" style="padding-top: 2%; padding-bottom: 2%;">
						<a href="#">View More</a>
					</div>
				</div>
			</div>

		</div>
		<div class="col-sm-4">
			<div class="col-sm-12 dashboard-row dashboard-section">
				<h4>
					Saved Jobs (
					<c:out value='${myJobs.savedJobs}' />
					)
				</h4>
				<p>Save jobs so that you can review Later</p>
				<p style="text-align: right">
					<a href="#">See all your Saved Jobs</a>
				</p>
			</div>
			<div class="col-sm-12 dashboard-row dashboard-section">
				<h4>
					Job Alerts (
					<c:out value='${myJobs.jobAlerts}' />
					)
				</h4>
				<p>Get alerts when jobs that meet your specifications are
					available.</p>
				<p style="text-align: right;">
					<a href="#">View your Job alerts</a>
				</p>
			</div>
			<div class="col-sm-12 dashboard-row dashboard-section">
				<h4>
					Job Applications (
					<c:out value='${myJobs.applications}' />
					)
				</h4>
				<p>Review your past job applications.</p>
				<p style="text-align: right">
					<a href="#">View Applications</a>
				</p>
			</div>
		</div>

	</div>
	<div id="myModal1" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content"
				style="background-image: url('/images/experience-level.jpg');">
				<div class="modal-header" style="border: none">
					<button type="button" class="close" data-dismiss="modal">&times;</button>

				</div>
				<div class="modal-body">
					<h4 style="font-weight: bolder;" class="text-warning">
						Hello
						<c:out value='${professionalDashboard.name}' />

					</h4>
					<p>You have to take our assessment test before you can apply
						for a job and get found by recruiters.</p>
					<p>
						<strong class="text-danger">Select your experience level</strong>
					</p>
					<form id="exp-level-form"
						action="<c:url value='/bq/close/get-assessment-questions'/>">
						<select name="exp-level">
							<option value="Beginner">Beginner (0-3 yrs)</option>
							<option value="Intermediate">Intermediate (4-7 yrs)</option>
							<option value="Experienced">Experienced 8+ yrs</option>
						</select> <input class="btn btn-info" type="submit" value="Start test">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
		<script type="text/javascript">
		$(document).ready(function() {
			$(".call-no-assessment").click(function(e) {
				e.preventDefault();
				$("#myModal1").modal();
			});
		});
	</script>
</body>
</html>