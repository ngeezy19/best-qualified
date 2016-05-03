<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Browse Profiles</title>
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
		<div class="row">
			<div class="col-sm-3 dashboard-section">
				<div class="col-sm-12">
					<h4 style="border-bottom: 1px #d1d1d1 solid">Filter Search</h4>
					<div class="form-group">
						<label>Keyword</label> <input name="searchString"
							class="form-control" /> <label>Location</label> <input
							name="company" class="form-control" /> <label>Job Title</label> <input
							name="title" class="form-control" /> <label>Company</label> <input
							name="location" class="form-control" />
							<label>Qualification</label> <select>
								<option></option>
												<option>Higher National Diploma</option>
												<option>Bachelor's Degree</option>
												<option>Master's Degree</option>
												<option>Post Graduate Diploma</option>
												<option>Doctorate</option>
												<option>professional</option>
							</select>
							<label>Years of Experience</label> <select>
								<option></option>
												<option></option>
												<option>0 - 1 year</option>
												<option>0 - 2 years</option>
												<option>1 - 3 years</option>
												<option>2 - 5 years</option>
												<option>3 - 5 years</option>
												<option>5 - 10 years</option>
												<option>more than 10 years</option>
							</select>
						<div class="form-group" style="margin-top: 2%;">
							<input type="submit" class="btn btn-primary form-control"
								value="Search">
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 dashboard-section"></div>
			<div class="col-sm-3 dashboard-section"></div>
		</div>

	</div>
	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.webui-popover.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>

</body>