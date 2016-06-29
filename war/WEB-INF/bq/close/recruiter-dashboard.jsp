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
						<div class="col-sm-4"></div>
					</div>

				</div>
				<div class="row card-panel">
					<div class="col-sm-4">New Project</div>
					<div class="col-sm-4">Manage Projects</div>
					<div class="col-sm-4">Search for candidates</div>
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
								<img class="img img-responsive img-circle" alt=""
									<c:choose><c:when test='${empty item.pictureUrl }'> src="/images/unknown-user.jpg"</c:when><c:otherwise> src="${item.pictureUrl}"</c:otherwise></c:choose>>
							</div>
							<div class="col-sm-8">
								<h5 style="margin-bottom: 2px">
									<c:out value='${item.firstName}' />
									<c:out value='${item.lastName}' />
								</h5>
								<div class="text-success" style="font-family: calibri">
									<c:out value='${item.highestQualification}' />
								</div>
								<div class="text-info" style="font-size: 10pt; font-stretch: narrower; font-style: italic;">
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
	<div class="container">
		<div class="row"
			style="border-top: 1px solid #aaaaaa; text-align: center; margin: 5%; padding: 2%;">
			<div class="col-sm-3">
				<a href="#">Career Mobility</a>
			</div>
			<div class="col-sm-3">
				<a href="#">Guidiance & Hand holding</a>
			</div>
			<div class="col-sm-3">
				<a href="#">Certifications</a>
			</div>
			<div class="col-sm-3">
				<a href="#">Community</a>
			</div>
		</div>
	</div>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.webui-popover.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>
</body>