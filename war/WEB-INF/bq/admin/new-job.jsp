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
									type="checkbox" value="true" name="allow-linkedIn">Do
									you want to allow employees to apply with their LinkedIn
									profile?</label>
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
									type="checkbox" value="true" name="allow-facebook">Do
									you want to allow employees to apply with their Facebook
									profile?</label>
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
								<option>Higher National Diploma</option>
								<option>Bachelor's Degree</option>
								<option>Master's Degree</option>
								<option>Post Graduate Diploma</option>
								<option>Doctorate</option>
								<option>professional</option>
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
								<option value="201">10,000 - 50,000</option>
								<option value="201">50,000 - 100,000</option>
								<option value="201">100,000 - 300,000</option>
								<option value="201">300,000 - 500,000</option>
								<option value="201">Unspecified</option>
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
								<option value="101">Student (Undergraduate/Graduate)</option>
								<option value="102">Entry Level</option>
								<option value="103">Experienced (Non-Managerial)</option>
								<option value="104">Manager (Manager/Supervisor of Staff)</option>
								<option value="105">Executive (SVP,VP,Department Head etc)</option>
								<option value="106">Senoir Executive (President, CFO. etc)</option>
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
								<option>0 - 1 year</option>
								<option>0 - 2 years</option>
								<option>1 - 3 years</option>
								<option>2 - 5 years</option>
								<option>3 - 5 years</option>
								<option>5 - 10 years</option>
								<option>more than 10 years</option>
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
								<option>Freelance</option>
								<option>Full Time</option>
								<option>Internship</option>
								<option>Part Time</option>
								<option>Permanent</option>
								<option>Temporary</option>
							</select>
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<label style="display: block;">Job Category:</label> <select
								multiple="multiple"
								style="display: block; width: 100%; box-sizing: border-box"
								name="job-category" id="job-category">
								<option value="50">Accounting / Audit / Tax</option>
								<option value="72">Administration &amp; Office Support</option>
								<option value="107">Agriculture/Farming</option>
								<option value="53">Banking / Finance / Insurance</option>
								<option value="83">Building Design/Architecture</option>
								<option value="54">Construction</option>
								<option value="84">Consulting/Business Strategy &amp;
									Planning</option>
								<option value="85">Creatives(Arts, Design, Fashion)</option>
								<option value="82">Customer Service</option>
								<option value="76">Education/Teaching/Training</option>
								<option value="56">Engineering</option>
								<option value="79">Executive / Top Management</option>
								<option value="66">Healthcare / Pharmaceutical</option>
								<option value="59">Hospitality / Leisure / Travels</option>
								<option value="60">Human Resources</option>
								<option value="61">Information Technology</option>
								<option value="67">Legal</option>
								<option value="101">Logistics / Transportation</option>
								<option value="58">Manufacturing / Production</option>
								<option value="51">Marketing / Advertising /
									Communications</option>
								<option value="81">NGO/Community Services &amp; Dev</option>
								<option value="68">Oil&amp;Gas / Mining / Energy</option>
								<option value="74">Project / Programme Management</option>
								<option value="105">QA&amp;QC / HSE</option>
								<option value="70">Real Estate / Property</option>
								<option value="103">Research</option>
								<option value="71">Sales/Business Development</option>
								<option value="106">Supply Chain / Procurement</option>
								<option value="77">Telecommunications</option>
								<option value="104">Vocational Trade and Services</option>

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
							<textarea class="tiny" rows="3" class="form-control"
								name="job-description"></textarea>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="form-group">
							<label>Extra Information</label>
							<textarea class="tiny" id="additional-properties"
								name="extra-info"></textarea>
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
			selector : '.tiny'
		});
		$(document).ready(function() {
			$(".normal-select").selectmenu();
			$(".datepicker").datepicker({
				changeMonth : true,
				changeYear : true
			});
			$('#job-category').multipleSelect();

		});
	</script>
</body>
</html>