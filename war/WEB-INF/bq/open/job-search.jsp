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
	padding: 3%;
}

.menu-list {
	border-bottom: 1px #d1d1d1 solid
}

.filter:last-child {
	border-bottom: none !important;
}
</style>
</head>
<body
	style="background-image: url(/images/background.jpg); background-repeat: repeat;">
	<%@ include file="/main-nav.html"%>
	<div class="container dashboard-body"
		style="margin-top: 8%; margin-bottom: 2%;">

		<div class="col-sm-3">
			<div class="col-sm-12 dashboard-section">
				<div class="col-sm-12 no-padding-div">
					<h4 style="border-bottom: 1px #d1d1d1 solid">Filter Search</h4>
					<form id="search-filter-form" action='<c:url value="/bq/open/job-search" />'>
						<div class="form-group">
							<label>Keyword</label> <input name="searchString"
								class="form-control" /> <label>Company</label> <input
								name="company" class="form-control" /> <label>Title</label> <input
								name="title" class="form-control" /> <label>Location</label> <input
								name="location" class="form-control" />
							<div class="form-group" style="margin-top: 2%;">
								<input type="submit" class="btn btn-primary form-control"
									value="Search">
							</div>
						</div>
						<hr />
						<ul class="filter" style="padding: 0px">

							<li class="menu-list"><strong>Date Posted</strong> <span
								style="font-size: 10pt"
								class="glyphicon glyphicon-triangle-bottom pull-right"></span></li>
							<li>

								<div class="checkbox">
									<label><input class="search-box" type="checkbox" value="">1 day
										ago </label>
								</div>
								<div class="checkbox">
									<label><input class="search-box" type="checkbox" value="">2 - 7
										days ago </label>
								</div>
								<div class="checkbox disabled">
									<label><input class="search-box" type="checkbox" value="">8 - 14
										days ago </label>
								</div>
								<div class="checkbox">
									<label><input class="search-box" type="checkbox" value="">15 - 30
										days ago </label>
								</div>

							</li>
							<!-- 	<li class="menu-list">Industry <span style="font-size: 10pt"
							class="glyphicon glyphicon-triangle-bottom pull-right"></span></li> -->
							<li class="menu-list"><strong>Experience</strong> <span
								style="font-size: 10pt; border-bottom: 0px"
								class="glyphicon glyphicon-triangle-bottom pull-right"></span></li>

							<div class="checkbox">
								<label><input type="checkbox" class="search-box" 
									value="Student
									(Undergraduate/Graduate)" name="experience">Student
									(Undergraduate/Graduate)</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" class="search-box" value="Entry Level" name="experience">Entry
									Level</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" class="search-box"
									value="Experienced (Non-Managerial)" name="experience">Experienced
									(Non-Managerial) </label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" class="search-box" name="experience"
									value="Manager (Manager/Supervisor of
									Staff)">Manager
									(Manager/Supervisor of Staff) </label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" class="search-box" name="experience"
									value="Executive (SVP,VP,Department
									Head etc)">Executive
									(SVP,VP,Department Head etc) </label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" class="search-box" name="experience"
									value="Senoir Executive (President,
									CFO. etc)">Senior
									Executive (President, CFO. etc) </label>
							</div>
						</ul>
					</form>
				</div>
			</div>
		</div>

		<div class="col-sm-7">
			<div class="col-sm-12 dashboard-section">
				<div class="col-sm-12">
					<h4 style="border-bottom: 1px #d1d1d1 solid"><c:out value='${fn:length(jobSearchResult.ijobs)}' /> results found
	</h4>
					<div class="col-sm-12 no-padding-div">
						<c:forEach var='item' items='${jobSearchResult.ijobs}'>
							<div class="col-sm-12 no-padding-div"
								style="border-bottom: 1px #d1d1d1 solid">
								<div class="col-sm-3">
									<a href="<c:url value='/bq/open/job?job-key=${item.jobKey}' />"><img alt="" src="${item.pictureUrl}" class="img img-responsive"></a>
								</div>
								<div class="col-sm-9">
									<h4>
										<a href="<c:url value='/bq/open/job?job-key=${item.jobKey}' />"><c:out value="${item.jobTitle}" /></a>
									</h4>
									<h5 style="font-family: calibri">
										<c:out value="${item.companyName}" />
									</h5>
									<h5>
										<i style="font-family: calibri">Posted <c:out
												value="${item.postedTime}" /></i> <a href="<c:url value='/bq/open/job?job-key=${item.jobKey}' />"
											class="pull-right">View</a>
									</h5>
								</div>

							</div>
						</c:forEach>
						<div class="col-sm-12"
							style="padding-top: 2%; padding-bottom: 2%;">View More</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-2">
			<div class="col-sm-12 no-padding-div">
				<iframe src="http://localhost:8888/images/ad4/160X600.html"
					width="160" height="600" scrolling="no" frameBorder='0'></iframe>
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
			$(".search-box").click(function() {
				$("#search-filter-form").submit();
			});
		});
	</script>
</body>
</html>