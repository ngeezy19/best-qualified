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
		<div class="col-sm-8">
			<div class="col-sm-12" style="margin-bottom: 2%;">
				<div class="col-sm-2">
					<div class="dashboard-section-icon">
						<img alt="" src="/images/profile-icon.png"
							class="img img-responsive">
					</div>
				</div>
				<div class="col-sm-10 dashboard-section">
					<div class="col-sm-12">
						<span class="profile-sub-header">Personal Information</span>
					</div>
					<div class="col-sm-4">
						<img alt="" src="/images/unknown-user.jpg"
							class="img img-responsive"
							style="width: 100%; margin: 2%; margin-top: 4%;">
					</div>
					<div class="col-sm-8">
						<div class="col-sm-12 profile-field-div">FirstName LastName</div>
						<div class="col-sm-12 profile-field-div">Tagline</div>
						<div class="col-sm-12 profile-field-div">Current employer</div>
						<div class="col-sm-12 profile-field-div">email@yahoo.com</div>
						<div class="col-sm-12 profile-field-div">Phone number</div>
					</div>
				</div>

			</div>
			<div class="col-sm-12" style="margin-bottom: 2%;">
				<div class="col-sm-2">
					<div class="dashboard-section-icon">
						<img alt="" src="/images/icon_jobs.gif" class="img img-responsive">
					</div>
				</div>
				<div class="col-sm-10 dashboard-section">
					<div class="col-sm-12">
						<span class="profile-sub-header">Profile Summary</span>
					</div>
					<div class="col-sm-12">
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
							Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus
							neque, idLorem ipsum dolor sit amet, consectetuer adipiscing
							elit. Morbi commodo, ipsum sed pharetra gravida</p><p> orci magna
							rhoncus neque, idLorem ipsum dolor sit amet, consectetuer
							adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci
							magna rhoncus neque, idLorem ipsum dolor sit amet, consectetuer
							adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci
							magna rhoncus neque, idLorem ipsum dolor sit amet, consectetuer
							adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci
							magna rhoncus neque, id</p>
					</div>
				</div>
			</div>
			<div class="col-sm-12" style="margin-bottom: 2%;">
				<div class="col-sm-2">
					<div class="dashboard-section-icon">
						<img alt="" src="/images/article.jpg" class="img img-responsive">
					</div>
				</div>
				<div class="col-sm-10 dashboard-section">
					<div class="col-sm-12">
						<span class="profile-sub-header">Work Experience</span>
					</div>
					<div class="col-sm-12" style="border-bottom: 1px gray solid">
						<h4>MaryAnns  Pharmaceuticals</h4>
						<h5>Sales Manager</h5>
						<h5>May 2011 - current</h5>
					</div>
					<div class="col-sm-12" >
						<h4>Steves Good Company</h4>
						<h5>Sales Representative</h5>
						<h5>January 2011 - April 2015</h5>
					</div>
				</div>
			</div>
			
			<div class="col-sm-12" style="margin-bottom: 2%;">
				<div class="col-sm-2">
					<div class="dashboard-section-icon">
						<img alt="" src="/images/article.jpg" class="img img-responsive">
					</div>
				</div>
				<div class="col-sm-10 dashboard-section">
					<div class="col-sm-12">
						<span class="profile-sub-header">Education</span>
					</div>
					<div class="col-sm-12" style="border-bottom: 1px gray solid">
						<h4>University of Lagos</h4>
						<h5>Marketing (BA)</h5>
						<h5>May 2008 - December 2012</h5>
					</div>
					<div class="col-sm-12" style="border-bottom: 1px gray solid" >
						<h4>St Paula Secondry School Ijebu Ogun State</h4>
						<h5>SSCE</h5>
						<h5>January 2011 - April 2015</h5>
					</div>
					<div class="col-sm-12" >
						<h4>St Michaels Primary School Ijebu Ogun State</h4>
						<h5>First School Leaving Certificate</h5>
						<h5>January 2011 - April 2015</h5>
					</div>
				</div>
			</div>
			
			<div class="col-sm-12" style="margin-bottom: 2%;">
				<div class="col-sm-2">
					<div class="dashboard-section-icon">
						<img alt="" src="/images/article.jpg" class="img img-responsive">
					</div>
				</div>
				<div class="col-sm-10 dashboard-section">
					<div class="col-sm-12">
						<span class="profile-sub-header">Certificates</span>
					</div>
					<div class="col-sm-12" style="border-bottom: 1px gray solid">
						<h4>Sales Professional Certificate</h4>
						<h5>May 2008</h5>
					</div>
					<div class="col-sm-12" >
						<h4>Marketing Professional Certificate</h4>
						<h5>January 2011</h5>
					</div>
				</div>
			</div>

		</div>
		<div class="col-sm-4">
			<div class="col-sm-12 dashboard-row"
				style="height: 240px; background-color: gray; border: 1px black gray">
				<h2>Cross Promotional Ads</h2>
			</div>
			<div class="col-sm-12 dashboard-row"
				style="height: 240px; background-color: #666666">
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
</html>