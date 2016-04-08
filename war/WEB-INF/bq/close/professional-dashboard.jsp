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
						<img alt="" src="/images/profile-icon.png"
							class="img img-responsive">
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
						<div style="text-align: center;">
							<span style="font-size: 22pt"><c:out
									value='${professionalDashboard.noOfConnections}' /> </span>
							connections
						</div>
						<div style="text-align: center;">
							<a href="#">Meet professionals</a>
						</div>
					</div>
				</div>
				<div class="col-sm-2"></div>
				<div class="col-sm-10 dashboard-section" style="border-top: none">
					<div class="col-sm-8" style="border-right: 1px solid #dddddd;">
						<div class="col-sm-12 no-padding-div">
							<p style="margin-bottom: 5px">
								<strong>Your profile strength is at XXXXXX level</strong>
							</p>
							<div
								style="height: 1em; width: 100%; border: 2px gray solid; border-radius: 6px"></div>
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
						companies viewed your profile
					</div>
				</div>
			</div>
			<div class="col-sm-12" style="margin-bottom: 2%;">
				<div class="col-sm-2">
					<div class="dashboard-section">
						<img alt="" src="/images/icon_jobs.gif" class="img img-responsive">
					</div>
				</div>
				<div class="col-sm-10 dashboard-section">
					<div class="col-sm-12">
						<h4 style="margin-bottom: 4%; font-weight: bold;">Jobs that
							may interest you</h4>
					</div>
					<div class="col-sm-12">
						<div class="col-sm-4 no-padding-div"
							style="padding-left: 2px; padding-right: 2px">
							<div class="col-sm-12"
								style="border: 1px solid #e5e5e5; padding-bottom: 4%;">
								<div style="padding-top: 2%; padding-bottom: 2%;">
									<img alt="" src="/images/company.png"
										class="img img-responsive">
								</div>
								<div>Company Name</div>
								<div>Job title</div>
								<div>
									<input type="button" class="btn btn-xs btn-success"
										value="View" style="width: 100%;">
								</div>
							</div>

						</div>
						<div class="col-sm-4 no-padding-div"
							style="padding-left: 2px; padding-right: 2px">
							<div class="col-sm-12"
								style="border: 1px solid #e5e5e5; padding-bottom: 4%;">
								<div style="padding-top: 2%; padding-bottom: 2%;">
									<img alt="" src="/images/company.png"
										class="img img-responsive">
								</div>
								<div>Company Name</div>
								<div>Job title</div>
								<div>
									<input type="button" class="btn btn-xs btn-success"
										value="View" style="width: 100%;">
								</div>
							</div>
						</div>
						<div class="col-sm-4 no-padding-div"
							style="padding-left: 2px; padding-right: 2px">
							<div class="col-sm-12"
								style="border: 1px solid #e5e5e5; padding-bottom: 4%;">
								<div style="padding-top: 2%; padding-bottom: 2%;">
									<img alt="" src="/images/company.png"
										class="img img-responsive">
								</div>
								<div>Company Name</div>
								<div>Job title</div>
								<div>
									<input type="button" class="btn btn-xs btn-success"
										value="View" style="width: 100%;">
								</div>
							</div>
						</div>
						<div class="col-sm-12" style="margin-top: 2%;">
							<a class="btn btn-xs pull-right">View More</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12" style="margin-bottom: 2%;">
				<div class="col-sm-2">
					<div class="dashboard-section">
						<img alt="" src="/images/article.jpg" class="img img-responsive">
					</div>
				</div>
				<div class="col-sm-10 dashboard-section">
					<h4 style="margin-bottom: 4%; font-weight: bold;">Stories and
						Articles on Best Qualified</h4>
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
			<div class="col-sm-12 dashboard-row"
				style="height: 240px; background-color: #fff; border: 1px black gray">
				<h2>Cross Promotional Ads</h2>
			</div>
			<div class="col-sm-12 dashboard-row"
				style="height: 240px; background-color: #fff">
				<h2>Cross Promotional Ads</h2>
			</div>
			<div class="col-sm-12 dashboard-row"
				style="height: 240px; background-color: #fafafa; border: 1px black #fafafa">
				<h2>Cross Promotional Ads</h2>
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