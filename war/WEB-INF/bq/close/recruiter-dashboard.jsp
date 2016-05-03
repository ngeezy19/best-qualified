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
										<c:out value='${recruiterDashboard.firstName}' />
										<c:out value='${recruiterDashboard.lastName}' />
									</h4></li>
								<li style="list-style: none;"><c:out
										value='${recruiterDashboard.tagline}' /></li>
								<li style="list-style: none;"><c:out
										value='${recruiterDashboard.company}' /></li>
								<c:if test='${empty recruiterDashboard.tagline }'>
									<li style="list-style: none;"><a
										href="<c:url value='/bq/closed/init-professional-profile"' />">Edit
											Profile</a></li>
								</c:if>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div style="text-align: center;">
							<span style="font-size: 22pt"><c:out
									value='${recruiterDashboard.noConnections}' /> </span> connections
						</div>
						<div style="text-align: center;">
							<a href="#">Meet professionals</a>
						</div>
					</div>
				</div>
				<div class="col-sm-2"></div>
				<div class="col-sm-10 dashboard-section" style="border-top: none">
					<div class="col-sm-12">
						<c:choose>
							<c:when test="${recruiterDashboard.numberOfProjects eq 0}">
								<p class="text-danger">
									<strong>You do not have an active project</strong>
								</p>
								<p>A project lets you manage your job post, save applicant's
									profile and search results.</p>
								<p>
									<a href="<c:url value='/bq/close/new-project' />"
										class="btn btn-primary btn-xs">Create new project</a>
								</p>
							</c:when>
							<c:otherwise>
								<p>
									<strong class="text-success">You have <c:out
											value="${recruiterDashboard.numberOfProjects}" /> active <c:choose>
											<c:when test="${recruiterDashboard.numberOfProjects eq 1}">project.</c:when>
											<c:otherwise>projects.</c:otherwise>
										</c:choose>
									</strong>
								</p>
								<p>
									<a class="btn btn-xs btn-primary"
										href="<c:url value='/bq/close/new-project' />">Create new
										project</a>
									<a class="btn btn-xs btn-primary" href="<c:url value='/bq/close/manage-project' />">Manage projects</a>
									<a class="btn btn-xs btn-primary"
										href="<c:url value='/bq/close/init-browse-profiles' />">Browse Profiles</a>
								</p>
							</c:otherwise>
						</c:choose>
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
						<h4 style="margin-bottom: 4%; font-weight: bold; color: #666666">Your
							Applicants</h4>
					</div>
					<div class="col-sm-12">
						<c:choose>
							<c:when test='${fn:length(recruiterDashboard.applicants) > 0}'>
								<p>You have ${fn:length(recruiterDashboard.applicants)} new
									applicants</p>
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${recruiterDashboard.numberOfProjects eq 0}">
										<p class="text-danger">
											<strong>You do not have an active project</strong>
										</p>
										<p>
											<a href="<c:url value='/bq/close/new-project' />">Create
												a project</a> then post a job in your project, Applicants for
											your job post will show up here.
										</p>
									</c:when>

									<c:otherwise>
										<p class="text-danger">
											<strong>You do not any new applicants</strong>
										</p>
										<p>
											<a class="btn btn-primary btn-xs" href="#">Browse
												profiles</a>
										</p>
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
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
									<i style="font-family: calibri">Posted <c:out
											value="${item.postedTime}" /></i> <a
										href="<c:url value='/bq/open/job?job-key=${item.jobKey}' />"
										class="pull-right">View</a>
								</h5>
							</div>

						</div>
					</c:forEach>

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
			<div class="col-sm-12  no-padding-div" style="margin-bottom: 2%;">
				<iframe src="http://localhost:8888/images/ad1/negotiatn_ext.html"
					width="336" height="280" scrolling="no" frameBorder='0'></iframe>
			</div>
			<div class="col-sm-12 no-padding-div" style="margin-bottom: 2%;">
				<iframe src="http://localhost:8888/images/ad2/bootcamp_ext.html"
					width="336" height="280" scrolling="no" frameBorder='0'></iframe>
			</div>
			<div class="col-sm-12  no-padding-div" style="margin-bottom: 2%;">
				<iframe src="http://localhost:8888/images/ad3/tools_or_luck.html"
					width="336" height="280" scrolling="no" frameBorder='0'></iframe>
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