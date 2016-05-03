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
					<div class="col-sm-12 dashboard-project"
						style="border-bottom: 1px solid #d1d1d1">
						<h4 style="margin-bottom: 1%; font-weight: bold; color: #666666">
							<span class="project-output"><c:out
									value='${projectBean.name}' /></span><span class="project-input"><input class="form-control"
								value="${projectBean.name}" /></span>
						</h4>
						<p class="text-muted"
							style="font-family: calibri; font-size: 10pt">
							<i><span class="project-output text-muted">created <c:out
										value='${projectBean.dateCreated}' /></span></i>
						</p>
						<div>
							<span class="project-output">${projectBean.description}</span>
							<div class="project-input form-group">
								<textarea class="form-control" rows="3" cols="">${projectBean.description}</textarea>
							</div>
						</div>
						<p>
							<span class="project-output"><a class="pull-right edit"
								href="#">Edit</a></span> <span class="project-input save-project"><a
								class="pull-right save" href="#">Save</a></span>
						</p>
					</div>
					<div class="col-sm-12 dashboard-project "
						style="border-bottom: 1px solid #d1d1d1; padding-top: 2%;">
						<div class="col-sm-12 project-output no-padding-div">
							<div class="col-sm-12 no-padding-div">
								<h4 class="text-muted project-output"
									style="font-size: 12pt; font-family: calibri;">Job Post</h4>
							</div>
							<c:if test='${not empty projectBean.job.jobTitle}'>
								<div class="col-sm-12 no-padding-div">
									<label class="text-muted"><strong>Title: </strong></label>
									<c:out value="${projectBean.job.jobTitle}" />
								</div>
							</c:if>
							<c:if test='${not empty projectBean.job.closingDate}'>
								<div class="col-sm-12 no-padding-div">
									<label class="text-muted"><strong>Closing
											Date: </strong></label>
									<c:out value="${projectBean.job.closingDate}" />
								</div>
							</c:if>
							<c:if test='${not empty projectBean.job.educationLevel}'>
								<div class="col-sm-12 no-padding-div">
									<label class="text-muted"><strong>Education
											Level: </strong></label>
									<c:out value="${projectBean.job.educationLevel}" />
								</div>
							</c:if>

							<c:if test='${not empty projectBean.job.careerLevel}'>
								<div class="col-sm-12 no-padding-div">
									<label class="text-muted"><strong>Career
											Level: </strong></label>
									<c:out value="${projectBean.job.careerLevel}" />
								</div>
							</c:if>

							<c:if test='${not empty projectBean.job.jobType}'>
								<div class="col-sm-12 no-padding-div">
									<label class="text-muted"><strong>Job Type: </strong></label>
									<c:out value="${projectBean.job.jobType}" />
								</div>
							</c:if>

							<c:if test='${not empty projectBean.job.applicationUrl}'>
								<div class="col-sm-12 no-padding-div">
									<label class="text-muted"><strong>Application
											URL: </strong></label>
									<c:out value="${projectBean.job.applicationUrl}" />
								</div>
							</c:if>

							<c:if test='${not empty projectBean.job.jobCategory}'>
								<div class="col-sm-12 no-padding-div">
									<label class="text-muted"><strong>Area of
											Specialization: </strong></label>
									<c:out value="${projectBean.job.jobCategory}" />
								</div>
							</c:if>

							<c:if test='${not empty projectBean.job.salaryRange}'>
								<div class="col-sm-12 no-padding-div">
									<label class="text-muted"><strong>Salary
											Range: </strong></label>
									<c:out value="${projectBean.job.salaryRange}" />
								</div>
							</c:if>

							<c:if test='${projectBean.job.allowLinkedInApplication}'>
								<div class="col-sm-12 no-padding-div">
									<label class="text-muted"><strong>Allow
											LinkedIn application :</strong></label>
									<c:out value="${projectBean.job.allowLinkedInApplication}" />
								</div>
							</c:if>
							<c:if test='${not empty projectBean.job.description.value}'>
								<div class="col-sm-12 no-padding-div">
									${projectBean.job.description.value}</div>
							</c:if>
							<p>
								<span class="project-output"><a class="pull-right edit"
									href="#">Edit</a></span> <span class="project-input save-project"><a
									class="pull-right save" href="#">Save</a></span>
							</p>

						</div>
						<div class="col-sm-12 dashboard-project project-input"
							style=" padding-top: 2%;">

							<div class="col-sm-12">
								<p class="text-muted project-input"
									style="font-size: 10pt; font-family: calibri;">
									<i>All fields marked with an asterisk are compulsory</i>
								</p>
							</div>
							<div class="col-sm-6 form-group">
								<label>Title<span class="project-input"> *</span></label> <input
									name="job-title" class="form-control"
									value="${projectBean.job.jobTitle}">
							</div>
							<div class="col-sm-6  form-group">
								<label>Application Closing Date <span
									class="project-input"> *</span></label> <input name="closing-date"
									class="form-control datepicker">
							</div>
							<div class="col-sm-6 form-group">
								<label>Education Level</label> <select class="form-control"
									name="education-level">
									<option>${projectBean.job.educationLevel}</option>
									<option>Higher National Diploma</option>
									<option>Bachelor's Degree</option>
									<option>Master's Degree</option>
									<option>Post Graduate Diploma</option>
									<option>Doctorate</option>
									<option>professional</option>
								</select>
							</div>
							<div class="col-sm-6 form-group">
								<label>Year of Experience</label> <select class="form-control"
									name="job-experience">
									<option>${projectBean.job.educationLevel}</option>
									<option>0 - 1 year</option>
									<option>0 - 2 years</option>
									<option>1 - 3 years</option>
									<option>2 - 5 years</option>
									<option>3 - 5 years</option>
									<option>5 - 10 years</option>
									<option>more than 10 years</option>
								</select>
							</div>
							<div class="col-sm-6 form-group">
								<label>Career Level</label><select class="form-control"
									name="career-level">
									<option>${projectBean.job.careerLevel}</option>
									<option>Student (Undergraduate/Graduate)</option>
									<option>Entry Level</option>
									<option>Experienced (Non-Managerial)</option>
									<option>Manager (Manager/Supervisor of Staff)</option>
									<option>Executive (SVP,VP,Department Head etc)</option>
									<option>Senoir Executive (President, CFO. etc)</option>
								</select>
							</div>
							<div class="col-sm-6 form-group">
								<label>Job Type</label> <select class="form-control"
									name="job-type">
									<option>${projectBean.job.jobType}</option>
									<option>Freelance</option>
									<option>Full Time</option>
									<option>Internship</option>
									<option>Part Time</option>
									<option>Permanent</option>
									<option>Temporary</option>
								</select>
							</div>
							<div class="col-sm-6 form-group">
								<label>Application Email or URL *</label> <input
									value="${projectBean.job.applicationUrl}"
									name="application-url" class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								<label>Area of Specialization</label> <select
									class="form-control" name="job-category" id="job-category">
									<option>${projectBean.job.jobCategory}</option>
									<option>Administration/ Office/ Operations</option>
									<option>Advertising/ PR / Marketing</option>
									<option>Agriculture / Agro Allied</option>
									<option>Analyst/ Quality Control</option>
									<option>Automotive/ Car Services</option>
									<option>Aviation/ Airline</option>
									<option>Banking</option>
									<option>Construction / Mining</option>
									<option>Consulting</option>
									<option>Customer Service</option>
									<option>Driving / Haulage</option>
									<option>Engineering</option>
									<option>Executive / Management</option>
									<option>Finance / Accounting</option>
									<option>Freelance / Data Entry</option>
									<option>Government Agencies</option>
									<option>Graduate /Freshers</option>
									<option>Hospitality / Food Services</option>
									<option>HSE/ Safety/ Risk Management</option>
									<option>Human Resources / Recruitment</option>
									<option>ICT/ Software</option>
									<option>Internship/ Industrial Training</option>
									<option>Law/ Legal</option>
									<option>Manufacturing/ Production</option>
									<option>Maritime Services / Shipping</option>
									<option>Media / Art</option>
									<option>Medical/ Health</option>
									<option>Military / Para-Military</option>
									<option>NGO / Community Services</option>
									<option>Oil and Gas</option>
									<option>Other</option>
									<option>Procurement/ Purchasing</option>
									<option>Programming / Web development</option>
									<option>Project Management</option>
									<option>Research/ Survey</option>
									<option>Sales / Business Development</option>
									<option>Secretarial / PA</option>
									<option>Security / Intelligence</option>
									<option>Surveying / Real Estate / Property</option>
									<option>Teaching / Education Services</option>
									<option>Technical/ Artisan</option>
									<option>Telecom</option>
									<option>Tourism / Travels</option>
									<option>Transport / Logistics / Supply</option>

								</select>
							</div>
							<div class="col-sm-6 form-group">
								<label>Salary</label> <select class="form-control" name="salary">
									<option>${projectBean.job.salaryRange}</option>
									<option>10,000 - 50,000</option>
									<option>50,000 - 100,000</option>
									<option>100,000 - 300,000</option>
									<option>300,000 - 500,000</option>
									<option>Unspecified</option>
								</select>
							</div>
							<div class="col-sm-6 form-group">
								<div class="checkbox">
									<label><input type="checkbox" name="allow-LinkedIn"
										value="true"
										<c:if test='${projectBean.job.allowLinkedInApplication}'> checked</c:if>>Allow
										applicants with LinkedIn profile</label>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<label>Extra Information (Job description, roles,
										duties, etc)<span class="project-input"> *</span>
									</label>
									<textarea class="tiny" id="additional-properties"
										name="extra-info">${projectBean.job.description.value}</textarea>
								</div>
							</div>
							<p>
							<span class="project-output"><a class="pull-right edit"
								href="#">Edit</a></span> <span class="project-input save-project"><a
								class="pull-right save" href="#">Save</a></span>
						</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="col-sm-12 dashboard-section no-padding-div"
				style="margin-bottom: 2%;">
				<iframe src="/images/ad1/negotiatn_ext.html" width="336"
					height="280" scrolling="no" frameBorder='0'></iframe>
			</div>
		</div>

	</div>


	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery-ui.min.js"></script>
	<script src="/js/jquery.webui-popover.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<!-- <script src="/js/autosize.js"></script>  -->
	<script src="/js/main.js"></script>
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			tinymce.init({
				selector : '.tiny'
			});
			$(".edit").click(function(e) {
				e.preventDefault();
				var par = $(this).closest(".dashboard-project");
				par.find(".project-output").toggle();
				par.find(".project-input").toggle();
			});

			$(".save-project").click(function(e) {
				e.preventDefault();
				var par = $(this).closest(".dashboard-project");
				par.find(".project-output").toggle();
				par.find(".project-input").toggle();
			});
		});
	</script>
</body>