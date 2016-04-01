<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>New Job</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" href="/styles/admin.css">
<link rel="stylesheet" href="/styles/jquery-ui.min.css">
<link rel="stylesheet" href="/styles/multiple-select.css">
</head>
<body>
	<div class="container-fluid main-header">
		<h3>Best Qualified Dashboard</h3>
	</div>
	<div class="container">
		<div class="row module">
			<div class="col-sm-12 " style="margin-bottom: 4%;">
				<h3>New Job</h3>
				<hr style="margin-top: 0px; border-top-color: blue" />

				<form action="/bq/admin/create-new-job" method="post">
					<c:choose>
						<c:when test="${not empty newJobError}">
							<div class="alert alert-danger">
								<p>
									<c:out value='${newJobError}' />
								</p>
							</div>
						</c:when>
						<c:when test="${not empty newJobSaved}">
							<div class="alert alert-success">
								<p>
									<c:out value='${newJobSaved}' />
								</p>
							</div>
						</c:when>
					</c:choose>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Company Name:*</label> <input class="form-control"
								name="company-name" type="text" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Application closing date:</label> <input
								class="form-control datepicker" name="close-date" type="text" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Company Website:</label> <input class="form-control"
								name="website" type="text" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Allow LinkedIn Applications</label>
							<div class="checkbox">
								<label style="font-style: italic; font-size: 0.9em; color: #777"><input
									type="checkbox" value="true" name="allow-linkedIn">Do you want to
									allow employees to apply with their LinkedIn profile?</label>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Company Location:</label> <input class="form-control"
								name="location" type="text" />
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<label>Allow Facebook Applications</label>
							<div class="checkbox">
								<label style="font-style: italic; font-size: 0.9em; color: #777"><input
									type="checkbox" value="true" name="allow-facebook">Do you want to
									allow employees to apply with their Facebook profile?</label>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Company LinkedIn:</label> <input class="form-control"
								name="company-linkedin" type="text" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Education Level:</label> <select class="form-control"
								name="educational-level">
								<option value="hnd">Higher National Diploma</option>
								<option value="bsc">Bachelor's Degree</option>
								<option value="mba">Master's Degree</option>
								<option value="pgd">Post Graduate Diploma</option>
								<option value="phd">Doctorate</option>
								<option value="pro">professional</option>
							</select>
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<label>Company Google+:</label> <input class="form-control"
								name="company-google-plus" type="text" />
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<label>Salary:</label> <select class="form-control" name="salary">
								<option value="sal1">10,000 - 50,000</option>
								<option value="sal2">50,000 - 100,000</option>
								<option value="sal3">100,000 - 300,000</option>
								<option value="val4">300,000 - 500,000</option>
							</select>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Company Facebook:</label> <input class="form-control"
								name="company-facebook" type="text" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Application Email or URL:</label> <input
								class="form-control" name="application-email-url" type="text" />
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<label>Company Twitter:</label> <input class="form-control"
								name="company-twitter" type="text" />
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<label>Career Level:</label> <select class="form-control"
								name="career-level">
								<option value="career1">Student
									(Undergraduate/Graduate)</option>
								<option value="career2">Entry Level</option>
								<option value="career3">Experienced (Non-Managerial)</option>
								<option value="career4">Manager (Manager/Supervisor of
									Staff)</option>
								<option value="career5">Executive (SVP,VP,Department
									Head etc)</option>
								<option value="career6">Senoir Executive (President,
									CFO. etc)</option>
							</select>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Company Tagline:</label> <input class="form-control"
								name="company-tagline" type="text" />
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label>Job Region:</label> <select class="form-control "
								name="job-region">
								<option>Abia</option>
								<option>Abuja</option>
								<option>Adamawa</option>
								<option>Anambra</option>
								<option>Akwa Ibom</option>
								<option>Bauchi</option>
								<option>Bayelsa</option>
								<option>Benue</option>
								<option>Borno</option>
								<option>Cross River</option>
								<option>Delta</option>
								<option>Ebonyi</option>
								<option>Enugu</option>
								<option>Edo</option>
								<option>Ekiti</option>
								<option>Gombe</option>
								<option>Imo</option>
								<option>Jigawa</option>
								<option>Kaduna</option>
								<option>Kano</option>
								<option>Katsina</option>
								<option>Kebbi</option>
								<option>Kogi</option>
								<option>Kwara</option>
								<option>Lagos</option>
								<option>Nasarawa</option>
								<option>Niger</option>
								<option>Ogun</option>
								<option>Ondo</option>
								<option>Osun</option>
								<option>Oyo</option>
								<option>Plateau</option>
								<option>Rivers</option>
								<option>Sokoto</option>
								<option>Taraba</option>
								<option>Yobe</option>
								<option>Zamfara</option>
							</select>
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<label>Years of Experience:</label> <select class="form-control"
								name="job-experience">
								<option value="exp1">1 year</option>
								<option value="exp2">2 years</option>
								<option value="exp3">3 years</option>
								<option value="exp4">4 years</option>
								<option value="exp5">5-10 years</option>
								<option value="exp6">more than 10 years</option>
							</select>
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<label>Job Title:</label> <input class="form-control"
								name="job-title" type="text" />
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<label>Job Type:</label> <select class="form-control"
								name="job-type">
								<option value="jobType1">Freelance</option>
								<option value="jobType2">Full Time</option>
								<option value="jobType3">Internship</option>
								<option value="jobType4">Part Time</option>
								<option value="jobType5">Permanent</option>
								<option value="jobType6">Temporary</option>
							</select>
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<label style="display: block;">Job Category:</label> <select
								multiple="multiple"
								style="display: block; width: 100%; box-sizing: border-box"
								name="job-category" id="job-category">
								<option value="125">Administration/ Office/ Operations</option>
								<option value="907">Advertising/ PR / Marketing</option>
								<option value="6563">Agriculture / Agro Allied</option>
								<option value="2658">Analyst/ Quality Control</option>
								<option value="228">Automotive/ Car Services</option>
								<option value="89">Aviation/ Airline</option>
								<option value="3">Banking</option>
								<option value="336">Construction / Mining</option>
								<option value="11">Consulting</option>
								<option value="53">Customer Service</option>
								<option value="28">Driving / Haulage</option>
								<option value="50">Engineering</option>
								<option value="40">Executive / Management</option>
								<option value="9">Finance / Accounting</option>
								<option value="1879">Freelance / Data Entry</option>
								<option value="353">Government Agencies</option>
								<option value="12">Graduate /Freshers</option>
								<option value="1184">Hospitality / Food Services</option>
								<option value="2022">HSE/ Safety/ Risk Management</option>
								<option value="118">Human Resources / Recruitment</option>
								<option value="4">ICT/ Software</option>
								<option value="240">Internship/ Industrial Training</option>
								<option value="92">Law/ Legal</option>
								<option value="1532">Manufacturing/ Production</option>
								<option value="308">Maritime Services / Shipping</option>
								<option value="345">Media / Art</option>
								<option value="269">Medical/ Health</option>
								<option value="1490">Military / Para-Military</option>
								<option value="351">NGO / Community Services</option>
								<option value="7">Oil and Gas</option>
								<option value="15">Other</option>
								<option value="2759">Procurement/ Purchasing</option>
								<option value="1642">Programming / Web development</option>
								<option value="2334">Project Management</option>
								<option value="946">Research/ Survey</option>
								<option value="13">Sales / Business Development</option>
								<option value="192">Secretarial / PA</option>
								<option value="124">Security / Intelligence</option>
								<option value="333">Surveying / Real Estate / Property</option>
								<option value="146">Teaching / Education Services</option>
								<option value="82">Technical/ Artisan</option>
								<option value="10">Telecom</option>
								<option value="34950">Tourism / Travels</option>
								<option value="1033">Transport / Logistics / Supply</option>

							</select>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="form-group">
							<label>Company Description:</label>
							<textarea rows="3" class="form-control"
								name="company-description"></textarea>
						</div>
					</div>

					<div class="col-sm-12">
						<div class="form-group">
							<label>Job Description:</label>
							<textarea rows="3" class="form-control" name="job-description"></textarea>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="form-group">
							<label>Extra Information</label>
							<textarea id="additional-properties" name="extra-info"></textarea>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="form-group">
							<input type="submit" value="Submit" class="btn btn-primary" />
						</div>
					</div>
				</form>
			</div>

		</div>

	</div>
	<script type="text/javascript" src="/js/jquery-1.11.2.min.js"></script>
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script src="/js/jquery-ui.min.js"></script>
	<script src="/js/main.js"></script>
	
	<script src="/js/multiple-select.js"></script>
	<script type="text/javascript">
		tinymce.init({
			selector : '#additional-properties'
		});
		$(document).ready(function() {
			$( ".normal-select" ).selectmenu();
			$( ".datepicker" ).datepicker({
			      changeMonth: true,
			      changeYear: true
			    });
			$('#job-category').multipleSelect();

		});
	</script>
</body>
</html>