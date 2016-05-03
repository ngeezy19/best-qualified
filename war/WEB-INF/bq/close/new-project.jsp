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
					<div class="col-sm-12">
						<h4 style="margin-bottom: 4%; font-weight: bold; color: #666666">New
							Project</h4>
						<p class="text-muted"
							style="font-family: calibri; font-size: 10pt">
							<i>Organize your activities, manage your job posts, save
								profiles and search results.</i>
						</p>
					</div>
					<div class="col-sm-12">
						<form action="<c:url value='/bq/close/save-project' />"  id="new-project-form" method="post">
							<div class="form-group">
								<label style="display: block;">Name *</label> <input type="text"
									class="form-control" name="project-name">
							</div>
							<div class="form-group">
								<label style="display: block;">Description</label>
								<textarea  class="form-control"
									name="project-description"></textarea>
							</div>

							<div class="col-sm-12  no-padding-div">

								<fieldset>
									<h5 class="form-inputs-header">
										<a href="#" style="text-decoration: none">Post a Job</a>
									</h5>

									<div class="form-inputs" style="display: none">
										<div class="col-sm-12">
											<p class="text-muted"
												style="font-size: 10pt; font-family: calibri"><i>If you
												choose to post a job, all fields marked with an asterisk are
												compulsory</i></p>
										</div>
										<div class="col-sm-6 form-group">
											<label>Title *</label> <input name="job-title"
												class="form-control">
										</div>
										<div class="col-sm-6  form-group">
											<label>Application Closing Date *</label> <input
												name="closing-date" 
												class="form-control datepicker">
										</div>
										<div class="col-sm-6 form-group">
											<label>Education Level</label> <select class="form-control"
												name="education-level">
												<option></option>
												<option>Higher National Diploma</option>
												<option>Bachelor's Degree</option>
												<option>Master's Degree</option>
												<option>Post Graduate Diploma</option>
												<option>Doctorate</option>
												<option>professional</option>
											</select>
										</div>
										<div class="col-sm-6 form-group">
											<label>Year of Experience</label> <select
												class="form-control" name="job-experience">
												<option></option>
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
												<option></option>
												<option>Student (Undergraduate/Graduate)</option>
												<option>Entry Level</option>
												<option>Experienced (Non-Managerial)</option>
												<option>Manager (Manager/Supervisor of Staff)</option>
												<option>Executive (SVP,VP,Department Head etc)</option>
												<option>Senior Executive (President, CFO. etc)</option>
											</select>
										</div>
										<div class="col-sm-6 form-group">
											<label>Job Type</label> <select class="form-control"
												name="job-type">
												<option></option>
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
												name="application-url" class="form-control">
										</div>
										<div class="col-sm-6 form-group">
											<label>Area of Specialization</label> <select
												class="form-control" name="job-category" id="job-category">
												<option></option>
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
											<label>Salary</label> <select class="form-control"
												name="salary">
												<option></option>
												<option>10,000 - 50,000</option>
												<option>50,000 - 100,000</option>
												<option>100,000 - 300,000</option>
												<option>300,000 - 500,000</option>
												<option>Unspecified</option>
											</select>
										</div>
										<div class="col-sm-6 form-group">
											<div class="checkbox">
												<label><input type="checkbox" name="allow-LinkedIn" value="true">Allow
													applicants with LinkedIn profile</label>
											</div>
										</div>
										<div class="col-sm-12">
											<div class="form-group">
												<label>Extra Information (Job description, roles,
													duties, etc) *</label>
												<textarea class="tiny" id="additional-properties"
													name="extra-info"></textarea>
											</div>
										</div>
									</div>
								</fieldset>
							</div>
							<div class="col-sm-12  no-padding-div">
								<fieldset>
									<h5 class="form-inputs-header">
										<a href="#" style="text-decoration: none" id="">Add Company
											Information</a>
									</h5>

									<div class="form-inputs" style="display: none">
										<div class="col-sm-12">
											<p class="text-muted"
												style="font-size: 10pt; font-family: calibri">If you
												choose to add a company, all fields marked with an
												asterisk are compulsory</p>
										</div>
										<div class="col-sm-6 form-group">
											<label>Name *</label> <input name="company-name"
												class="form-control">
										</div>
										<div class="col-sm-6  form-group">
											<label>Website</label> <input name="company-website"
												class="form-control">
										</div>
										<div class="col-sm-6 form-group">
											<label>Location</label> <input name="company-location"
												class="form-control">
										</div>
										<div class="col-sm-6 form-group">
											<label>Tagline</label> <input name="company-tagline"
												class="form-control">
										</div>
										<div class="col-sm-6 form-group">
											<label>Facebook</label> <input name="company-facebook"
												class="form-control">
										</div>
										<div class="col-sm-6 form-group">
											<label>Google +</label> <input name="company-google"
												class="form-control">
										</div>
										<div class="col-sm-6 form-group">
											<label>LinkedIn</label> <input name="company-linkedin"
												class="form-control">
										</div>
										<div class="col-sm-6 form-group">
											<label>Twitter</label> <input name="company-twitter"
												class="form-control">
										</div>
										<div class="col-sm-12">
											<div class="form-group">
												<label>Company Description *</label>
												<textarea class="tiny" name="company-description"></textarea>
											</div>
										</div>
										<div class="col-sm-12 form-group">
											<label>Company Logo</label> <input type="file" name="company-logo"
												class="form-control" >
											<div class="checkbox">
												<label><input type="checkbox" value="">Use
													the company logo in my profile</label>
											</div>
										</div>
									</div>
								</fieldset>
							</div>
							<div class=" form-group">
								<p>

									<input id="save-project-btn" type="submit" class="btn btn-xs btn-success" value='Save Project'>
								</p>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>



		<div class="col-sm-4">
			<div class="col-sm-12 dashboard-section no-padding-div"
				style="margin-bottom: 2%;">
				<iframe src="/images/ad1/negotiatn_ext.html"
					width="336" height="280" scrolling="no" frameBorder='0'></iframe>
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
			//autosize($('textarea'));
			$(".form-inputs-header").click(function(e) {
				e.preventDefault();
				$(this).closest('fieldset').find(".form-inputs").slideToggle();
			});
		});
		tinymce.init({
			selector : '.tiny'
		});
		$(".datepicker").datepicker({
			changeMonth : true,
			changeYear : true
		});
		
		$("#company-info").click(function(e) {
			e.preventDefault();
			$.ajax({
				url : '/bq/close/get-file-upload-url?param=new-project',
				success : function(data) {
					$("#new-project-form").prop("action",data);
				}
			});
		});
		
		/*$("#save-project-btn").click(function() {
			$(this).prop('disabled', true);
			$(this).val("Saving Project...");
			$("#new-project-form").submit();
		});
		$("#new-project-form").on('submit', function(e) {
			
			
			var x = $(this).attr('action');
			$.ajax({
				url : x,
				method: "POST",
				data : new FormData(this),
				processData : false,
				contentType : false,
				success : function(data) {
					alert(data);
				}, 
				error : function(xhr) {
					alert(xhr.statusText);
				},
				complete : function() {
					$("#save-project-btn").prop('disabled', false);
					$("#save-project-btn").val("Save Project");
				}
				
			});
			e.preventDefault();
		});*/
	</script>

</body>