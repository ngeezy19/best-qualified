<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Manage Projects</title>
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

.project-info {
	font-family: calibri;
	font-size: 10pt
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
				<div class="col-sm-10 dashboard-section"
					style="background-color: #fafafd">
					<h5 style="font-weight: bold; margin-top: 2px">
						You have
						<c:out value='${fn:length(manageProjectBean.pb1)}' />
						active projects
					</h5>
					<div class="col-sm-6 col-md-3 project-info no-padding-div">
						<a href="#">New Applicants
							(${manageProjectBean.newApplicants})</a>
					</div>
					<div class="col-sm-6 col-md-3 project-info no-padding-div">
						<a href="#">Total Applicants
							(${manageProjectBean.totalApplicants})</a>
					</div>
					<div class="col-sm-6 col-md-3 project-info no-padding-div">
						<a href="#">Saved Profiles
							(${manageProjectBean.savedProfiles})</a>
					</div>
					<div class="col-sm-6 col-md-3 project-info no-padding-div">
						<a href="#">Saved Search (${manageProjectBean.savedSearch})</a>
					</div>
				</div>
				<c:forEach var="item" items="${manageProjectBean.pb1}">
					<div class="col-sm-12 dashboard-section project-div"
						style="margin-top: 4px; margin-bottom: 2px">
						<h5 style="margin-top: 1px; margin-bottom: 5px; font-weight: bold">
							<a href="#"><c:out value='${item.name}' /></a>
						</h5>
						<p class="project-info text-muted"
							style="margin-bottom: 3px; margin-top: 2px">
							created
							<c:out value='${item.dateCreated}' />
						</p>
						<div class="col-sm-8 no-padding-div">
							<div class="col-sm-6 col-md-3 project-info no-padding-div">
								<a href="#">New Applicants (${item.newApplicants})</a>
							</div>
							<div class="col-sm-6 col-md-3 project-info no-padding-div">
								<a href="#">Total Applicants (${item.totalApplicants})</a>
							</div>
							<div class="col-sm-6 col-md-3 project-info no-padding-div">
								<a href="#">Saved Profiles (${item.savedProfile})</a>
							</div>
							<div class="col-sm-6 col-md-3 project-info no-padding-div">
								<a href="#">Saved Search (${item.savedSearch})</a>
							</div>
						</div>
						<div class="col-sm-2"></div>
						<div class="col-sm-2 action-div" style="display: none">
							<div class="col-sm-4 no-padding-div"><a href="#"><span class="glyphicon glyphicon-eye-open"></span></a></div>
							<div class="col-sm-4 no-padding-div"><a href="#"><span class="glyphicon glyphicon-pencil"></span></a></div>
							<div class="col-sm-4 no-padding-div"><a href="#"><span style="color: red" class="	glyphicon glyphicon-trash"></span></a></div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="col-sm-12  no-padding-div" style="margin-bottom: 2%;">
				<iframe src="/images/ad1/negotiatn_ext.html"
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
	<script type="text/javascript">
		$(document).ready(function() {
			$(".project-div").hover(function() {
				$(this).find(".action-div").toggle();
			});
		});
	</script>
</body>