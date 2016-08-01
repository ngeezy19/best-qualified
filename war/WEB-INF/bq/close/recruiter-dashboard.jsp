<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page
	import="com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService"%>
<%@ page import="com.google.appengine.api.blobstore.UploadOptions"%>

<%
	BlobstoreService blobstoreService = BlobstoreServiceFactory
			.getBlobstoreService();
	UploadOptions options = UploadOptions.Builder
			.withMaxUploadSizeBytesPerBlob(2 * 1024 * 1024)
			.maxUploadSizeBytes(2 * 1024 * 1024);
%>
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
<link rel="stylesheet" href="/styles/font-awesome.min.css">

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
	<br />
	<br />
	<br />

	<div style="width: 65%; float: left">
		<div style="width: 80%; float: right;">
			<div class="container-fluid">
				<div class="row card-panel">

					<div class="col-sm-12"">
						<div class="col-sm-8 no-padding-div">
							<div class="col-sm-3 no-padding-div">
								<img src="${recruiterDashboard.imageUrl}"
									class="img img-responsive img-circle" />
							</div>
							<div class="col-sm-9 no-padding-div">

								<h4 style="margin-top: 2px">
									<c:out value='${recruiterDashboard.name}' />
								</h4>
								<h5>
									<c:out value='${recruiterDashboard.tagLine}' />
								</h5>
								<h5>
									<c:out value='${recruiterDashboard.email}' />
								</h5>

							</div>
						</div>
						<div class="col-sm-4"
							style="border: 1px #dadada dotted; color: white; background-color: darkgreen;">
							<h5>
								<c:out value='${fn:length(recruiterDashboard.projects)}' />
								Project(s)
							</h5>
							<h5>
								<c:out value='${fn:length(recruiterDashboard.savedSearch)}' />
								Saved Search(es)
							</h5>
						</div>
					</div>

				</div>
				<div class="row card-panel"
					style="padding: 2px; color: white; background-color: gray">
					<div class="col-sm-4">
						<h4 style="cursor: pointer;" id="project-trig">
							<i class="fa fa-plus-square-o" aria-hidden="true"
								style="padding-right: 1%;"></i> New Project
						</h4>
					</div>
					<div class="col-sm-4">
						<h4 style="cursor: pointer;" id="article-trig">
							<i class="fa fa-newspaper-o" aria-hidden="true"
								style="padding-right: 1%;"></i> Write an article
						</h4>
					</div>
					<div class="col-sm-4">
						<h4 style="cursor: pointer;" id="discussion-trig">
							<i class="fa fa-comments-o" aria-hidden="true"
								style="padding-right: 1%;"></i> Start a discussion
						</h4>
					</div>
					<div class="col-sm-12">
						<%@ include file="/partial/create-project.html"%>
					</div>
					<div class="col-sm-12">
						<%@ include file="/partial/create-job.html"%>
					</div>
					<div class="col-sm-12">
						<%@ include file="/partial/add-company.html"%>
					</div>
					<div class="col-sm-12 no-padding-div">
						<%@ include file="/partial/new-article.html"%>
					</div>
					<div class="col-sm-12 no-padding-div">
						<%@ include file="/partial/new-discussion.html"%>
					</div>
				</div>
				<c:forEach var="item" items="${recruiterDashboard.projects}">
					<div class="row">
						<div class="col-sm-2" style="padding-right: 0px">
							<div class="card-panel">
								<img alt="" src="${item.companyLogo}" class="img img-responsive">
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-sm-12 no-padding-div card-panel">
								<div class="col-sm-4 alert alert-warning"
									style="line-height: 1.8">
									<div>
										<a href="#"><c:out value="${item.newApplicants}" /> new
											applicants</a>
									</div>
									<div>
										<a href="#"><c:out value="${item.totalApplicants}" />
											total applicants</a>
									</div>
									<div>
										<a href="#"><c:out value="${item.inviteSent}" /> invites
											sent</a>
									</div>
								</div>
								<div class="col-sm-8">
									<h4>
										<a href="#"><c:out value="${item.name}" /></a>
									</h4>
									<div>
										<span class="text-danger"><c:out
												value="${item.jobTitle}" /></span>
									</div>
									<div>
										<strong class="text-muted">Created:</strong>
										<c:out value="${item.dateCreated}" />
									</div>
									<div class="">
										<strong class="text-muted">Expires:</strong>
										<c:out value="${item.expiryDate}" />
									</div>
								</div>
								<div class="dropdown pull-right">
									<button class="btn btn-success btn-sm dropdown-toggle"
										type="button" data-toggle="dropdown">
										Action <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">Close Project</a></li>
										<li><a href="#">Edit Project</a></li>
										<li><a href="#">View Job Post</a></li>
									</ul>
								</div>

							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

	</div>
	<div style="float: left; position: relative;">
		<div style="position: fixed;">
			<div style="width: 300px;" class="card-panel">
				<div class="container-fluid">
					<div class="row">
						<h4>Suggested Candidates</h4>
					</div>
					<c:forEach var="item" items="${recruiterDashboard.prospects}">
						<div class="row" style="margin-bottom: 2%;">
							<div class="col-sm-3 no-padding-div">
								<a
									href="<c:url value='/bq/closed/get-candidate-profile?web-key=${item.webkey}'/>"><img
									class="img img-responsive img-circle" alt=""
									<c:choose><c:when test='${empty item.pictureUrl }'> src="/images/unknown-user.jpg"</c:when><c:otherwise> src="${item.pictureUrl}"</c:otherwise></c:choose>></a>
							</div>
							<div class="col-sm-8">
								<h5 style="margin-bottom: 2px">
									<a
										href="<c:url value='/bq/closed/get-candidate-profile?web-key=${item.webkey}'/>">
										<c:out value='${item.firstName}' /> <c:out
											value='${item.lastName}' />
									</a>
								</h5>
								<div class="text-success" style="font-family: calibri">
									<c:out value='${item.highestQualification}' />
								</div>
								<div class="text-info"
									style="font-size: 10pt; font-stretch: narrower; font-style: italic;">
									<c:out value='${item.yearsOfExperience}' />
									years experience
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<div style="clear: both;"></div>

	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.webui-popover.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>

</body>