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
<title>Edit Project</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" href="/styles/jquery-ui.min.css">
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

p {
	margin-bottom: 0px;
}
</style>
</head>
<body
	style="background-image: url(/images/background.jpg); background-repeat: repeat;">
	<%@ include file="/main-nav.html"%>
	<div class="container" style="margin-top: 6%;">
		<div class="col-sm-offset-2 col-sm-8">
			<div class="card-panel">
			<form method="post"
					action="<%=blobstoreService.createUploadUrl(
					"/bq/close/recruiter/project/save", options)%>"
					enctype="multipart/form-data">
					
				<div class="row">
					<div class="form-group col-sm-12">
						<p class="text-info"
							style="font-size: 12pt; margin-bottom: 4px; font-weight: bold;">
							Update Project:
							<c:out value='${projectBean.name}' />
						</p>
						<p class="text-info" style="color: red; font-size: 10pt">*
							Manage your Job posts and Applicants</p>
						<p class="text-info" style="color: red; font-size: 10pt">* All
							fields with asterisk (*) are required</p>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-12">
						<div class="msg-div"></div>
					</div>
				</div>
					<div class="row">

						<div class="form-group col-sm-12">
							<input name="project-key" type="hidden" value="${projectBean.webKey}">
							<input class="form-control" name="project-name"
								value='${projectBean.name}' placeholder="* Project Name"
								required="required" />

						</div>
						<div class="form-group col-sm-12">
							<textarea rows="2" class="form-control"
								name="project-description" placeholder="Project Description">${projectBean.description}</textarea>
						</div>
					</div>


					<div class="row">
						<div class="form-group col-sm-12">
							<p class="text-info" style="font-size: 12pt; font-weight: bold;">
								Job Information: <span style="color: green"><c:out
										value='${projectBean.job.title}' /></span>
							</p>

						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-sm-6">
							<input class="form-control" name="job-title"
								value="${projectBean.job.title}" placeholder="* Job Title"
								required="required" />
						</div>
						<div class="form-group col-sm-6">
							<select class="form-control" required="required"
								name="job-location">
								<option>${projectBean.job.location}</option>
								<%@ include file="/partial/states.html"%>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6">
							<input class="form-control" name="application-url"
								value="${projectBean.job.applicationUrl}"
								placeholder="* Application URL/ Email" required="required" />
						</div>
						<div class="form-group col-sm-6">
							<input class="form-control datepicker"
								value="${projectBean.job.applicationDeadline}"
								name="application-deadline" required="required"
								placeholder="* Application Deadline" />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-12">
							<textarea rows="4" class="form-control" required="required"
								style="white-space: pre-wrap" name="job-role"
								placeholder="* Job Role/Responsibilities">${projectBean.job.jobRole}</textarea>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-12">
							<textarea rows="4" class="form-control" required="required"
								style="white-space: pre-wrap" name="job-description"
								placeholder="* Job Description">${projectBean.job.jobDesc}</textarea>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6">
							<select class="form-control" name="career-level"
								required="required">
								<option>${projectBean.job.careerLevel}</option>
								<option value="101">Student (Undergraduate/Graduate)</option>
								<option value="102">Entry Level</option>
								<option value="103">Experienced (Non-Managerial)</option>
								<option value="104">Manager (Manager/Supervisor of
									Staff)</option>
								<option value="105">Executive (SVP,VP,Department Head
									etc)</option>
								<option value="106">Senior Executive (President, CFO.
									etc)</option>
							</select>
						</div>
						<div class="form-group col-sm-6">
							<select required="required" class="form-control"
								name="education-level">
								<option>${projectBean.job.educationLevel}</option>
								<option value="501">Higher National Diploma</option>
								<option value="502">Bachelor's Degree</option>
								<option value="503">Master's Degree</option>
								<option value="504">Post Graduate Diploma</option>
								<option value="505">Doctorate</option>
								<option value="506">Professional</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6">
							<select class="form-control" required="required" name="job-type">
								<option>${projectBean.job.jobType}</option>
								<option value="301">Freelance</option>
								<option value="302">Full Time</option>
								<option value="303">Internship</option>
								<option value="304">Part Time</option>
								<option value="305">Permanent</option>
								<option value="306">Temporary</option>
							</select>
						</div>
						<div class="form-group col-sm-6">
							<select class="form-control" name="salary">
								<option>${projectBean.job.salaryRange}</option>
								<option value="201">10,000 - 50,000</option>
								<option value="202">50,000 - 100,000</option>
								<option value="203">100,000 - 300,000</option>
								<option value="204">300,000 - 500,000</option>
								<option value="205">Unspecified</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6">
							<select class="form-control" name="experience">
								<option>${projectBean.job.yearsOfExperience}</option>
								<option value="401">0 - 1 year</option>
								<option value="402">0 - 2 years</option>
								<option value="403">1 - 3 years</option>
								<option value="404">2 - 5 years</option>
								<option value="405">3 - 5 years</option>
								<option value="406">5 - 10 years</option>
								<option value="407">7 - 10 years</option>
								<option value="408">More than 10 years</option>
							</select>
						</div>
						<div class="form-group col-sm-6">
							<div class="checkbox">
								<label
									style="font-style: italic; color: #777; font-family: calibri; font-size: 10pt"><input
									type="checkbox" value="true" name="allow-linkedIn"
									<c:if test="${projectBean.job.applyWithLinkedIn}">checked</c:if>>Applicants
									can apply with their LinkedIn profile?</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-12">
							<input class="form-control" value='${projectBean.job.skills}'
								name="skills" placeholder="Skills" />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-12">
							<p class="text-info"
								style="font-size: 12pt; margin-bottom: 4px; font-weight: bold;">
								Company Information: <span><c:out
										value='${projectBean.companyName}' /></span>
							</p>

						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-6">
							<input class="form-control" name="company-name"
								value="${projectBean.companyName}" placeholder="Company Name" />
						</div>
						<div class="form-group col-sm-6">
							<input class="form-control" name="company-website"
								value="${projectBean.companyName}" placeholder="Company Website" />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-12">
							<span style="font-size: 10pt; color: red">Company Logo
								(Recommended size: 120px by 120px)</span> <input class="form-control"
								name="company-logo" placeholder="Company Logo" type="file" />
						</div>

					</div>
					<div class="row">
						<div class="form-group col-sm-12">
							<textarea rows="4" class="form-control"
								name="company-description" placeholder="Company Description">${projectBean.companyDesc}</textarea>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-sm-12">
							<input type="Submit" value="Update"
								class="btn btn-success mj-butt"> <input type="button"
								value="Back" class="btn btn-primary"
								onClick="javascript:history.back(1)">
						</div>
					</div>
				</form>
			</div>

		</div>


	</div>


	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.webui-popover.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/jquery-ui.min.js"></script>
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script type="text/javascript">
		$(".datepicker").datepicker({
			changeMonth : true,
			changeYear : true
		});
	</script>

</body>