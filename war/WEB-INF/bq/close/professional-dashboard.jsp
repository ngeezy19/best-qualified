<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><c:out value='${user.firstName} ${user.lastName}' /></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/styles/jquery.webui-popover.min.css">
<link rel="stylesheet" href="/styles/main.css">

<style type="text/css">
.subnav li {
	list-style: none;
	display: inline;
	margin-right: 2%;
}
</style>
</head>
<body
	style="background-image: url(/images/background.jpg); background-repeat: repeat;">
	<%@ include file="/main-nav.html"%>
	<div class="container dashboard-body" style="margin-top: 8%;">
		<div class="col-sm-8">
			<div class="col-sm-12" style="margin-bottom: 2%;">
				<div class="col-sm-2">
					<div class="dashboard-section">
						<img alt="" src="/images/personal-profile.png"
							style="width: 80%; margin: 0 auto" class="img img-responsive">
					</div>
				</div>
				<div class="col-sm-10 dashboard-section">
					<div class="col-sm-8" style="border-right: 1px solid #dddddd;">
						<div class="col-sm-3 no-padding-div">
							<img src="/images/unknown-user.jpg"
								class="img img-responsive img-circle" />
						</div>
						<div class="col-sm-9 no-padding-div">
							<ul>
								<li style="list-style: none;"><h4>
										<c:out value='${professionalDashboard.name}' />
									</h4></li>
								<li style="list-style: none;"><c:out
										value='${professionalDashboard.tagline}' /></li>
								<li style="list-style: none;"><c:out
										value='${professionalDashboard.currentEmployer}' /></li>
								<c:if test='${empty professionalDashboard.tagline }'>
									<li style="list-style: none;"><a
										href="<c:url value='/bq/closed/init-professional-profile"' />">Edit
											Profile</a></li>
								</c:if>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<c:set var="beginner" value="BEGINNER" />
						<c:set var="intemediate" value="INTERMEDIATE" />
						<c:set var="advanced" value="ADVANCED" />
						<c:choose>
							<c:when
								test="${not empty professionalDashboard.professionalLevel}">
								<div style="text-align: center;">
									<span style="font-size: 22pt"><c:out
											value='${professionalDashboard.rating}' /> </span> star
								</div>
								<div style="text-align: center;">
									<c:choose>
										<c:when
											test="${professionalDashboard.professionalLevel == beginner }">
									Associate Level
								</c:when>
										<c:otherwise>

										</c:otherwise>
									</c:choose>
								</div>
							</c:when>
							<c:otherwise>
								<h4>No Rating</h4>
							</c:otherwise>
						</c:choose>

					</div>
				</div>
				<div class="col-sm-2"></div>
				<div class="col-sm-10 dashboard-section" style="border-top: none">
					<div class="col-sm-8" style="border-right: 1px solid #dddddd;">
						<div class="col-sm-12 no-padding-div">
							<p style="margin-bottom: 5px">
								<strong>Your profile strength is at <c:out
										value='${professionalDashboard.profileLevel}' /> level
								</strong>
							</p>
							<div
								style="height: 1em; width: 100%; border: 2px gray solid; border-radius: 6px; -moz-border-radius: 6px; -webkit-border-radius: 6px">
								<div
									style="height: 100%; background-color: ${professionalDashboard.profileColor};width: ${professionalDashboard.profileStrength}%;"></div>
							</div>
							<div style="font-family: calibri">Employers give priority
								to professionals with completed profiles.</div>
							<div>
								<a class="btn btn-xs btn-primary"
									href="<c:url value="/bq/closed/init-professional-profile" />">Improve
									your Profile</a>
							</div>
						</div>
					</div>
					<div class="col-sm-4">
						<h4 class="text-primary" style="text-align: center">Profile
							Views</h4>
						<span><c:out
								value='${professionalDashboard.noOfProfileViewers}' /></span>
						companies viewed your profile in the last 30 days
					</div>
				</div>
			</div>
			<div class="col-sm-12" style="margin-bottom: 2%;">
				<div class="col-sm-2">
					<div class="dashboard-section">
						<img alt="" src="/images/jobs.png" class="img img-responsive"
							style="width: 80%; margin: 0 auto">
					</div>
				</div>
				<div class="col-sm-10 dashboard-section">
					<div class="col-sm-12">
						<h4 style="margin-bottom: 4%; font-weight: bold; color: #666666">Jobs
							that may interest you</h4>
					</div>

					<c:forEach var="item" items="${professionalDashboard.iJobs}">

						<div class="col-sm-12"
							style="border-bottom: 1px #e1e1e1 solid; margin-bottom: 2%; margin-top: 2%;">
							<div class="col-sm-3">
								<a href="<c:url value='/bq/open/job?job-key=${item.jobKey}' />"><img
									alt="" src="${item.pictureUrl}" class="img img-responsive"></a>
							</div>
							<div class="col-sm-9">
								<h4>
									<a href="/bq/open/job?job-key=${item.jobKey}"><c:out
											value="${item.jobTitle}" /></a>
								</h4>
								<h5 style="font-family: calibri">
									<c:out value="${item.companyName}" />
								</h5>
								<h5>
									<i class="text-danger" style="font-family: calibri">Posted
										<c:out value="${item.postedTime}" />
									</i> <a
										href="<c:url value='/bq/open/job?job-key=${item.jobKey}' />"
										class="pull-right">View</a>
								</h5>
							</div>

						</div>
					</c:forEach>
					<div class="col-sm-12" style="margin-top: 2%;">
						<a href="<c:url value='/bq/closed/init-jobs' />"
							class="pull-right">View More</a>
					</div>
				</div>
			</div>
			<div class="col-sm-12" style="margin-bottom: 2%;">
				<div class="col-sm-2">
					<div class="dashboard-section">
						<img alt="" src="/images/articles.png" class="img img-responsive"
							style="width: 80%; margin: 0 auto">
					</div>
				</div>
				<div class="col-sm-10 dashboard-section">
					<h4 style="margin-bottom: 4%; font-weight: bold; color: #666666">Stories
						and Articles on Best Qualified</h4>
					<div
						style="border-bottom: 1px gray solid; overflow: auto; margin-bottom: 2%;">
						<div class="col-sm-3">
							<img alt="" src="/images/story1.jpg" class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<p>
								<strong>Article Title</strong> <i>by firstname lastname</i>
							</p>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
								Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus
								neque, id</p>
							<p>like Comment Share</p>
						</div>
					</div>
					<div
						style="border-bottom: 1px gray solid; overflow: auto; margin-bottom: 2%;">
						<div class="col-sm-3">
							<img alt="" src="/images/story2.jpg" class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<p>
								<strong>Article Title</strong> <i>by firstname lastname</i>
							</p>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
								Morbi commodo, ipsum sed pharetra gravida, ipsum dolor sit amet,
								consectetuer</p>
							<p>like Comment Share</p>
						</div>
					</div>
					<div>
						<div class="col-sm-3">
							<img alt="" src="/images/story3.jpg" class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<p>
								<strong>Article Title</strong> <i>by firstname lastname</i>
							</p>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
								rhoncus neque, id pulvinar odio lorem non turpis.Lorem ipsum
								dolor sit amet, consectetuer</p>
							<p>like Comment Share</p>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="col-sm-4">
			<c:if test="${empty professionalDashboard.professionalLevel}">
				<div class="dashboard-section" style="text-align: center; z-index: 100; position: fixed;">
					<p style="font-size: 10pt">Get found! Apply for Great Jobs!
						Take an assessment test</p>
					<button type="button" class="btn btn-info" data-toggle="modal"
						data-target="#myModal">Start Assessment Test</button>
				</div>
			</c:if>
			<div class="col-sm-12 dashboard-row no-padding-div">
				<iframe src="http://localhost:8888/images/ad1/negotiatn_ext.html"
					width="336" height="280" scrolling="no" frameBorder='0'></iframe>
			</div>
			<div class="col-sm-12 dashboard-row no-padding-div">
				<iframe src="http://localhost:8888/images/ad2/bootcamp_ext.html"
					width="336" height="280" scrolling="no" frameBorder='0'></iframe>
			</div>
			<div class="col-sm-12 dashboard-row no-padding-div">
				<iframe src="http://localhost:8888/images/ad3/tools_or_luck.html"
					width="336" height="280" scrolling="no" frameBorder='0'></iframe>
			</div>

		</div>



	</div>
	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Select your level of experience</h4>
				</div>
				<div class="modal-body">
					<form id="exp-level-form"
						action="<c:url value='/bq/close/get-assessment-questions'/>">
						<select name="exp-level">
							<option>Beginner</option>
							<option>Intermediate</option>
							<option>Advanced</option>
						</select> <input class="btn btn-info" type="submit" value="Go for test">
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

</body>