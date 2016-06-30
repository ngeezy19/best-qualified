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
<link rel="stylesheet" href="/styles/font-awesome.min.css">
<link rel="stylesheet" href="/styles/main.css">
<link rel="stylesheet" href="/styles/animate.css">

<style type="text/css">
.subnav li {
	list-style: none;
	display: inline;
	margin-right: 2%;
}

.jobs-list {
	border-bottom: 1px #e1e1e1 solid;
	margin-top: 2%;
}

[class~='jobs-list']:last-of-type {
	border-bottom: none;
}

#get-rated {
	-webkit-animation-duration: 2s;
	-webkit-animation-delay: 2s;
	-webkit-animation-iteration-count: infinite;
}
</style>
</head>
<body
	style="background-image: url(/images/background.jpg); background-repeat: repeat;">
	<%@ include file="/main-nav.html"%>
	<br />
	<br />
	<br /><br/>
	<div class="container" style="margin-bottom: 2%;">
		<div class="row">
			<div class="col-sm-3 no-padding">
				<div class="col-sm-12 no-padding-div"
					style="padding-top: 0px; border: 1px gray solid">
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px gray solid">
						<div class="filter-heading">
							<h4>Refine</h4>
						</div>
						<div class="col-sm-12 form-group">
							<input placeholder="Keyword, Name, Email"
								class="form-control keyword" name="title">
						</div>
						<div class="col-sm-12 form-group">
							<input type="button" value="Search"
								class="form-control btn btn-success form-member">
						</div>
					</div>
					<div class="col-sm-12 no-padding-div">
						<div class="filter-heading">
							<h4 style="margin-bottom: 0px">Filter Your Search</h4>
						</div>
						<div class="filter-component">
							<div class="filter-header" style="border-top: none">
								<span>Location</span> <span
									class="filter-arrow glyphicon glyphicon-chevron-down pull-right"></span>
							</div>
							<div class="filter-values">
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Abia">Abia</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Abuja">Abuja</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Adamawa">Adamawa</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Anambra">Anambra</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Akwa Ibom">Akwa Ibom</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Bauchi">Bauchi</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Bayelsa">Bayelsa</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Benue">Benue</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Borno">Borno</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Cross River">Cross River</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Delta">Delta</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Ebonyi">Ebonyi</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Enugu">Enugu</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Edo">Edo</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Ekiti">Ekiti</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Gombe">Gombe</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Imo">Imo</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Jigawa">Jigawa</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Kaduna">Kaduna</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Kano">Kano</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Katsina">Katsina</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Kebbi">Kebbi</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Kogi">Kogi</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Kwara">Kwara</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Lagos">Lagos</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Nasarawa">Nasarawa</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Niger">Niger</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Ogun">Ogun</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Ondo">Ondo</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Osun">Osun</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Oyo">Oyo</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Plateau">Plateau</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Rivers">Rivers</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Sokoto">Sokoto</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Taraba">Taraba</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Yobe">Yobe</label>
								</div>
								<div class="checkbox col-sm-6">
									<label><input class="form-member" type="checkbox"
										name="location" value="Zamfara">Zamfara</label>
								</div>

							</div>
						</div>
						<div class="filter-component">
							<div class="filter-header">
								<span>Job Type</span> <span
									class="filter-arrow glyphicon glyphicon-chevron-down pull-right"></span>
							</div>
							<div class="filter-values">
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										name="jobType" value="301">Freelance</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										name="jobType" value="302">Full Time</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										name="jobType" value="303">Internship</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										name="jobType" value="304">Part Time</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										name="jobType" value="305">Permanent</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										name="jobType" value="306">Temporary</label>
								</div>

							</div>
						</div>
						<div class="filter-component">
							<div class="filter-header">
								<span>Career Level</span> <span
									class="filter-arrow glyphicon glyphicon-chevron-down pull-right"></span>
							</div>
							<div class="filter-values">
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="101" name="careerLevel">Student
										(Undergraduate/Graduate)</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="102" name="careerLevel">Entry Level</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="103" name="careerLevel">Experienced
										(Non-Managerial)</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="104" name="careerLevel">Manager
										(Manager/Supervisor of Staff)</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="105" name="careerLevel">Executive
										(SVP,VP,Department Head etc)</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="106" name="careerLevel">Senoir Executive
										(President, CFO. etc)</label>
								</div>
							</div>

						</div>
						<div class="filter-component">
							<div class="filter-header">
								<span>Highest Education Level</span> <span
									class="filter-arrow glyphicon glyphicon-chevron-down pull-right"></span>
							</div>
							<div class="filter-values slim-scroll">
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										name="jobCategory" value="501">Higher National Diploma</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										name="jobCategory" value="502">Bachelor's Degree</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										name="jobCategory" value="503">Master's Degree</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										name="jobCategory" value="504">Post Graduate Diploma</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										name="jobCategory" value="505">Doctorate</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										name="jobCategory" value="506">Professional</label>
								</div>

							</div>
						</div>
						<div class="filter-component">
							<div class="filter-header">
								<span>Salary Range</span> <span
									class="filter-arrow glyphicon glyphicon-chevron-down pull-right"></span>
							</div>
							<div class="filter-values">
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="201" name="salaryRange">10,000 - 50,000</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="202" name="salaryRange">50,000 - 100,000</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="203" name="salaryRange">100,000 - 300,000</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="204" name="salaryRange">300,000 - 500,000</label>
								</div>
							</div>
						</div>

						<div class="filter-component">
							<div class="filter-header">
								<span>Years Of Experience</span> <span
									class="filter-arrow glyphicon glyphicon-chevron-down pull-right"></span>
							</div>
							<div class="filter-values">
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="401" name="experience">0 - 1 year</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="402" name="experience">0 - 2 years</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="403" name="experience">1 - 3 years</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="404" name="experience">2 - 5 years</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="405" name="experience">3 - 5 years</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="406" name="experience">5 - 10 years</label>
								</div>
								<div class="checkbox">
									<label><input class="form-member" type="checkbox"
										value="407" name="experience">more than 10 years</label>
								</div>
							</div>
						</div>



					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="row" style="border: 1px solid black">
					<div class="col-sm-6"> </div>
					<div class="col-sm-6" >
						<button class="btn btn-primary pull-right">
							Save Search
						</button>
			 		</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.webui-popover.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script src="/js/main.js"></script>
	<script src="/js/bootstrap-rating.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".call-no-assessment").click(function(e) {
				e.preventDefault();
				$("#myModal1").modal();
			});

			$("#see-saved-jobs").click(function(event) {
				event.preventDefault();
				$("#saved-jobs-div").slideToggle();

			});
			$("#see-applied-jobs").click(function(event) {
				event.preventDefault();
				$("#applied-jobs-div").slideToggle();

			});

		});
	</script>

</body>