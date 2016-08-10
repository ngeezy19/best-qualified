<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>New Project</title>
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

.project-input {
	display: none
}
</style>
</head>
<body
	style="background-image: url(/images/background.jpg); background-repeat: repeat;">
	<%@ include file="/main-nav.html"%>
	<div class="container dashboard-body" style="margin-top: 6%;">
		<div class="col-sm-8">
			<div class="card-panel">
				<div class="row">
					<div class="col-sm-12">
						<h4 style="color: #3b5998">
							<strong><c:out value='${projectBean.name}' /> <small
								class="pull-right" style="color: #983b59"><b>Created:</b>
									<c:out value='${projectBean.dateCreated}' /></small></strong>
						</h4>
						<c:if test='${not empty projectBean.description}'>
							<h5>
								Description <span class="glyphicon glyphicon-triangle-bottom"></span>
							</h5>
							<p style="display: none;">
								<c:out value='${projectBean.description}' />
							</p>
						</c:if>

					</div>


				</div>
				<div class="row">
					<div class="col-sm-12 no-padding-div"
						style="background-color: #e0c4cd">
						<div class="col-sm-3">
							<img alt="" src="${jobInformation.pictureUrl}"
								class="img img-responsive">
						</div>
						<div class="col-sm-4">
							<h4>
								<a href="#"><c:out value="${jobInformation.jobTitle}" /></a>
							</h4>
							<h5 style="font-family: calibri">
								<c:out value="${jobInformation.companyName}" />
							</h5>
							<h5>
								<i class="text-danger" style="font-family: calibri">Posted <c:out
										value="${jobInformation.datePosted}" /></i>
							</h5>
							<p>
								<button class="btn btn-success btn-lg">Update</button>
							</p>
						</div>
						<div class="col-sm-5">
							<div class="card-panel"
								style="background-color: #ebeef4; color: #983b59">
								<div class="card-list">

									Short Listed: <span class="pull-right"><c:out
											value='${projectBean.shortListed}' /></span>

								</div>
								<div class="card-list">

									Invited: <span class="pull-right"><c:out
											value='${projectBean.inviteSent}' /></span>

								</div>
								<div class="card-list">

									New Applicants: <span class="pull-right"><c:out
											value='${projectBean.newApplicants}' /></span>

								</div>
								<div class="card-list">

									All Applicants: <span class="pull-right"><c:out
											value='${projectBean.totalApplicants}' /></span>

								</div>

								<div class="card-list">

									Saved Search: <span class="pull-right"><c:out
											value='${projectBean.savedSeach}' /></span>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<p>${jobInformation.jobDesc}</p>
						<p>${jobInformation.extraInfo}</p>
					</div>
				</div>



			</div>

		</div>
		<div class="col-sm-4">
			<div class="card-panel"
				style="background-color: #69a24e; color: white">
				<h4 style="border-bottom: 1px #bcd5b0 solid; padding-bottom: 4px">Job
					Summary</h4>
				<c:if test='${not empty jobInformation.companyName}'>
					<strong style="display: block;">Company</strong>
					<p>
						<c:out value='${jobInformation.companyName}' />
					</p>
				</c:if>

				<c:if test='${not empty jobInformation.careerLevel}'>
					<strong style="display: block;">Job Level</strong>
					<p>
						<c:out value='${jobInformation.careerLevel}' />
					</p>
				</c:if>

				<c:if test='${not empty jobInformation.location}'>
					<strong style="display: block;">Location</strong>
					<p>
						<c:out value='${jobInformation.location}' />
					</p>
				</c:if>
				<c:if test='${not empty jobInformation.industry}'>
					<strong style="display: block;">Industry</strong>
					<p>
						<c:out value='${jobInformation.industry}' />
				</c:if>

				<c:if test='${not empty jobInformation.jobType}'>
					<strong style="display: block;">Job Type</strong>
					<p>
						<c:out value='${jobInformation.jobType}' />
					</p>
				</c:if>

				<c:if test='${not empty jobInformation.qualification}'>
					<strong style="display: block;">Mininum Qualification</strong>
					<p>
						<c:out value='${jobInformation.qualification}' />
					</p>
				</c:if>

				<c:if test='${not empty jobInformation.experience}'>
					<strong style="display: block;">Prefered Years of
						Experience</strong>
					<p>
						<c:out value='${jobInformation.experience}' />
					</p>
				</c:if>

				<c:if test='${not empty jobInformation.deadline}'>
					<strong style="display: block;">Application Deadline</strong>
					<p>
						<c:out value='${jobInformation.deadline}' />
					</p>
				</c:if>

			</div>

			<c:if test="${not empty projectBean.companyName}">
				<div class="card-panel">
					<h4 style="color: #3b5998">Company Information</h4>
					<p>${projectBean.companyName}</p>
					<p>${projectBean.companyWebsite}</p>
					<p>${projectBean.companyDesc}</p>
				</div>
			</c:if>

		</div>

	</div>
	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery-ui.min.js"></script>
	<script src="/js/jquery.webui-popover.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>

</body>