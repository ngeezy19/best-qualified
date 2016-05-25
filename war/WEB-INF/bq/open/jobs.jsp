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
.filter-values {
	display: none;
}

.filter-heading h4 {
	margin-top: 0px;
	padding-top: 5px;
	padding-bottom: 5px;
	color: white;
	background-color: #4FC1E9;
	text-align: center;
	border-bottom: 1px #3BAFDA solid;
}

#job-alert-modal label {
	color: darkgreen;
	font-family: calibri;
	font-size: 10pt;
}

.filter-header {
	padding: 2%;
	background-color: #eaeaea;
	cursor: pointer;
	border-top: 1px gray solid;
}

.filter-header:hover {
	background-color: #dedede;
}

.filter-values {
	border-top: 1px gray solid;
	padding: 2%;
	max-height: 200px;
	overflow: auto;
}

.list-bullet {
	border: 1px red #8CC152;
	padding: 4px;
	background-color: #A0D468;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	color: white !important
}
</style>
</head>
<body>
	<%@ include file="/main-nav.html"%>
	<div class="container dashboard-body"
		style="margin-top: 10px; padding: 3%; margin-bottom: 2%; border-bottom: 1px #cacaca solid;  width: 100%; padding-top: 4%; padding-bottom:none; background-image: url('/images/concrete_seamless.png')">
		<div class="row">
			<div class="col-sm-12">
				<h1 class="" style="font-family: arial; color: #a349a4">Get
					hired in industries of your choice.</h1>
			</div>
			<div class="col-sm-5" style="color: white;">

				<ul style="color: black">
					<li style="list-style: none"><h4>
							<span style="margin-right: 2%;"
								class="glyphicon glyphicon-ok list-bullet"></span>Start your
							exciting career journey here.
						</h4></li>
					<li style="list-style: none"><h4>
							<span style="margin-right: 2%;"
								class="glyphicon glyphicon-ok list-bullet"></span>There's
							nothing wrong with trying something new.
						</h4></li>
					<li style="list-style: none"><h4>
							<span style="margin-right: 2%;"
								class="glyphicon glyphicon-ok list-bullet"></span>A variety of
							career choices are available.
						</h4></li>
				</ul>
			</div>
			<div class="col-sm-7" style="padding-top: 2%;">
				<div class="col-sm-12 no-padding-div"
					style="background-color: rgba(255, 206, 84, 0.5); border-radius: 5px; -moz-border-radius: 5px; -webkit-border-radius: 5px">
					<div class="col-sm-4"
						style="background-color: rgba(246,187,56,0.6); padding: 1%">
						<img class="img img-responsive" src="/images/find_a_job.png">
					</div>
					<div class="col-sm-8" style="padding: 2%; padding-top: 3%;">

						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Keyword, Job title"> <span
								class="input-group-btn">
								<button class="btn btn-secondary btn-success" type="button">Go!</button>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-3 no-padding-div"
				style="padding-top: 0px; border: 1px gray solid">
				<div class="col-sm-12 no-padding-div"
					style="border-bottom: 1px gray solid">
					<div class="filter-heading">
						<h4>Find A Job</h4>
					</div>
					<div class="col-sm-12 form-group">
						<input placeholder="Keyword, Job Title" class="form-control">
					</div>
					<div class="col-sm-12 form-group">
						<input type="submit" value="Search"
							class="form-control btn btn-success">
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
						<div class="filter-values slim-scroll">
							<div class="checkbox">
								<label><input type="checkbox" value="">Abia</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Abuja</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Adamawa</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Anambra</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Akwa Ibom</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Bauchi</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Bayelsa</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Benue</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Borno</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Cross
									River</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Delta</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Ebonyi</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Enugu</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Edo</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Ekiti</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Gombe</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Imo</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Jigawa</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Kaduna</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Kano</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Katsina</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Kebbi</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Kogi</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Kwara</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Lagos</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Nasarawa</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Niger</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Ogun</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Ondo</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Osun</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Oyo</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Plateau</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Rivers</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Sokoto</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Taraba</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Yobe</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Zamfara</label>
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
								<label><input type="checkbox" value="">Freelance</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Full Time</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Internship</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Part Time</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Permanent</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Temporary</label>
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
								<label><input type="checkbox">Student
									(Undergraduate/Graduate)</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox">Entry Level</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox">Experienced
									(Non-Managerial)</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox">Manager
									(Manager/Supervisor of Staff)</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox">Senoir Executive
									(President, CFO. etc)</label>
							</div>
						</div>

					</div>
					<div class="filter-component">
						<div class="filter-header">
							<span>Job Category</span> <span
								class="filter-arrow glyphicon glyphicon-chevron-down pull-right"></span>
						</div>
						<div class="filter-values slim-scroll">
							<div class="checkbox">
								<label><input type="checkbox" value="50">Accounting
									/ Audit / Tax</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="72">Administration
									&amp; Office Support</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="107">Agriculture/Farming</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="53">Banking
									/ Finance / Insurance</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="83">Building
									Design/Architecture</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="54">Construction</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="84">Consulting/Business
									Strategy &amp; Planning</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="85">Creatives(Arts,
									Design, Fashion)</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="82">Customer
									Service</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="76">Education/Teaching/Training</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="56">Engineering</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="79">Executive/Top
									Management</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="66">Healthcare/Pharmaceutical</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="59">Hospitality/Leisure/Travels</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="60">Human
									Resources</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="61">Information
									Technology</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="67">Legal</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="101">Logistics
									/ Transportation</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="58">Manufacturing
									/ Production</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="51">Marketing
									/ Advertising / Communications</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="81">NGO/Community
									Services &amp; Dev</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="68">Oil&amp;Gas/Mining/Energy</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="74">Project/Programme
									Management</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="105">QA&amp;QC
									/ HSE</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="70">Real
									Estate / Property</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="103">Research</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="71">Sales/Business
									Development</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="106">Supply
									Chain / Procurement</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="77">Telecommunications</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="104">Vocational
									Trade and Services</label>
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
								<label><input type="checkbox" value="">50,000 -
									100,000</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">100,000 -
									300,000</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">300,000 -
									500,000</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Unspecified</label>
							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="col-sm-6"></div>
			<div class="col-sm-3">
				<div class="col-sm-12 no-padding-div" data-toggle="modal"
					data-target="#job-alert-modal"
					style="border: 2px purple solid; cursor: pointer;">
					<img class="img img-responsive" src="/images/job-alert.jpg">
				</div>
			</div>
		</div>
	</div>

	<div id="job-alert-modal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content"
				style="background-image: url(/images/free-job-alert.png); background-size: 100% 100%;">
				<div class="modal-header" style="border-bottom: none;">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">

					<div class="row">
						<div class="col-sm-5"></div>
						<div class="col-sm-7 no-padding-div" style="margin-top: 5%;">
							<h3
								style="text-align: center; font-weight: bolder; color: purple; font-family: arial">Sign
								Up for free Job alerts</h3>
							<div class="col-sm-6  form-group ">
								<label>Job Location: </label> <input class="form-control"
									placeholder="">
							</div>
							<div class="col-sm-6 form-group ">
								<label>Industry of your choice: </label> <input
									class="form-control" placeholder="">
							</div>
							<div class="col-sm-6 form-group ">
								<label>Salary Range: </label> <input class="form-control"
									placeholder="">
							</div>
							<div class="col-sm-6 form-group">
								<label>Are you open to travel?: </label> <input
									class="form-control" placeholder="">
							</div>
							<div class="col-sm-12 form-group">
								<label>Email: </label> <input class="form-control"
									placeholder="">
							</div>
							<div class="col-sm-12 form-group" style="text-align: center">

								<input class="btn btn-lg btn-warning" value="Sign Up Now">
							</div>
						</div>

					</div>
				</div>

			</div>

		</div>
	</div>
	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/jquery-ui.min.js"></script>
	<script src="/js/jquery.slimscroll.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.webui-popover.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('#slim-scroll').slimScroll({
								height : '250px'
							});
							$(".filter-header")
									.click(
											function() {

												var par = $(this).closest(
														".filter-component");
												par.find(".filter-values")
														.slideToggle();
												$(this)
														.find(".filter-arrow")
														.toggleClass(
																"glyphicon glyphicon-chevron-down glyphicon glyphicon-chevron-up");
											});
						});
	</script>
</body>
</html>