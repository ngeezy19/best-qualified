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

h4 {
	margin: 0px;
	margin-bottom: 6px !important;
}
</style>
</head>
<body
	style="background-image: url(/images/background.jpg); background-repeat: repeat;">
	<%@ include file="/main-nav.html"%>
	<div class="container dashboard-body">
		<br /> <br /> <br /> <br />
		<div class="col-sm-8">
			<div class="row ">

				<div class="col-sm-12 card-panel no-padding-div">

					<h4 style="margin-bottom: 4%; font-weight: bold; color: #666666">Personal
						Information</h4>
					<div class="row">
						<div class="col-sm-3">
							<img alt="" src="/images/unknown-user.jpg"
								class="img img-responsive"
								style="width: 100%; margin: 2%; margin-top: 4%;">
						</div>
						<div class="col-sm-9" style="padding-top: 2%;">
							<div class="col-sm-12 profile-field-div editable-div"
								style="font-size: 14pt; font-weight: bold;">
								<span class="inline-output"><c:out
										value="${user.firstName}" /> <c:out value="${user.lastName}" /></span>
								<span class="inline-input"><input id="first-name"
									value="${user.firstName}" style="width: 40%;" /> <input
									id="last-name" value="${user.lastName}" style="width: 40%;" /></span><span
									class="glyphicon glyphicon-pencil edit-tool"></span>
							</div>
							<div class="col-sm-12 profile-field-div editable-div">
								<span class="inline-output"><c:out value='${user.email}' /></span>
							</div>
							<div class="col-sm-12 profile-field-div editable-div">
								<c:choose>
									<c:when test='${empty user.tagline}'>
										<span class="inline-output" style="color: orange">Write
											your tagline</span>
									</c:when>
									<c:otherwise>
										<span class="inline-output"><c:out
												value='${user.tagline}' /></span>
									</c:otherwise>
								</c:choose>
								<span class="inline-input"> <input id="tagline"
									value="${user.tagline}" class="gen-inline-input" />
								</span><span class="glyphicon glyphicon-pencil edit-tool"></span>
							</div>
							<div class="col-sm-12 profile-field-div editable-div">
								<c:choose>
									<c:when test='${empty professionalProfile.currentEmployer}'>
										<span class="inline-output" style="color: orange">Who
											is your current employer?</span>
									</c:when>
									<c:otherwise>
										<span class="inline-output"><c:out
												value='${professionalProfile.currentEmployer}' /></span>
									</c:otherwise>
								</c:choose>
								<span class="inline-input"> <input id="current-employer"
									class="gen-inline-input"
									value="${professionalProfile.currentEmployer}" />
								</span><span class="glyphicon glyphicon-pencil edit-tool"></span>
							</div>

							<div class="col-sm-12 profile-field-div editable-div">
								<c:choose>
									<c:when test='${empty user.phone}'>
										<span class="inline-output" style="color: orange">Enter
											a contact phone number</span>
									</c:when>
									<c:otherwise>
										<span class="inline-output"><c:out
												value='${user.phone}' /></span>
									</c:otherwise>
								</c:choose>
								<span class="inline-input"> <input id="phone"
									value="${user.phone}" class="gen-inline-input" />
								</span><span class="glyphicon glyphicon-pencil edit-tool"></span>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="row">

				<div class="col-sm-2 ">
					<div class="card-panel">
						<img alt="" src="/images/profile-summary.png"
							class="img img-responsive" style="width: 80%; margin: 0 auto">
					</div>
				</div>
				<div class="col-sm-10 card-panel">
					<div class="col-sm-12 no-padding-div">
						<h4 style="margin-bottom: 4%; font-weight: bold; color: #666666"
							class="editable-div">
							Profile Summary<span class="glyphicon glyphicon-pencil edit-tool"></span>
						</h4>

						<div class="col-sm-12 editable-div">
							<c:choose>
								<c:when test='${empty uppb.profileSummary}'>
									<div class="inline-output">Write a summary for your
										profile</div>
								</c:when>
								<c:otherwise>
									<span class="glyphicon glyphicon-pencil edit-tool pull-right"></span>
									<div class="inline-output">${uppb.profileSummary}</div>
								</c:otherwise>
							</c:choose>
							<div class="inline-input">
								<textarea id="profile-summary" rows="10" style="width: 100%;"
									class="tiny gen-inline-input">${uppb.profileSummary}</textarea>
							</div>

						</div>
					</div>
				</div>

			</div>
			<div class="row">
				<div class="col-sm-2">
					<div class="card-panel">
						<img alt="" src="/images/work-experience.png"
							class="img img-responsive" style="width: 80%; margin: 0 auto">
					</div>
				</div>
				<div class="col-sm-10 card-panel">
					<div class="col-sm-12 no-padding-div">
						<h4 style="margin-bottom: 4%; font-weight: bold; color: #666666"
							class="">Work Experience</h4>

						<div class="col-sm-12 no-padding-div">
							<span class="text-primary add-new" style="cursor: pointer;">Add
								new</span>
						</div>

						<div class="col-sm-12 no-padding-div">

							<div class="form-div">
								<form class="work-experience-form">
									<div>
										<label>Organization Name:</label><br /> <input
											id="organization" name="organization" style="width: 70%;">
									</div>
									<div>
										<label>Position Held:</label><br /> <input name="position"
											id="position" style="width: 70%;">
									</div>
									<div>
										<label>Time</label><br /> <select name="start-month"
											id="start-month">
											<option>January</option>
											<option>February</option>
											<option>March</option>
											<option>April</option>
											<option>May</option>
											<option>June</option>
											<option>July</option>
											<option>August</option>
											<option>September</option>
											<option>October</option>
											<option>November</option>
											<option>December</option>
										</select> <select name="start-year" id="start-year">
											<option>2000</option>
											<option>2001</option>
											<option>2002</option>
											<option>2003</option>
											<option>2004</option>
											<option>2005</option>
											<option>2006</option>
											<option>2007</option>
											<option>2008</option>
											<option>2009</option>
											<option>2010</option>
											<option>2011</option>
											<option>2012</option>
											<option>2013</option>
											<option>2014</option>
											<option>2015</option>
											<option>2016</option>
										</select> <label>To</label> <select name="end-month" id="end-month">
											<option>January</option>
											<option>February</option>
											<option>March</option>
											<option>April</option>
											<option>May</option>
											<option>June</option>
											<option>July</option>
											<option>August</option>
											<option>September</option>
											<option>October</option>
											<option>November</option>
											<option>December</option>
										</select> <select name="end-year" id="end-year">
											<option>2000</option>
											<option>2001</option>
											<option>2002</option>
											<option>2003</option>
											<option>2004</option>
											<option>2005</option>
											<option>2006</option>
											<option>2007</option>
											<option>2008</option>
											<option>2009</option>
											<option>2010</option>
											<option>2011</option>
											<option>2012</option>
											<option>2013</option>
											<option>2014</option>
											<option>2015</option>
											<option>2016</option>
											<option>Current</option>
										</select>
									</div>
									<!-- 	<div>
											<label>Job Responsibilities</label><br />
											<textarea name="jobResponsibility" rows="10" id="job-desc"
												style="width: 70%;" class="tiny"></textarea>
										</div>  -->
									<div style="margin-top: 2%; margin-bottom: 2%;">
										<input type="button"
											class="btn btn-xs btn-primary save-work-experience"
											value="Save work experience"> <input
											class="btn btn-xs btn-danger cancel-button" value="Cancel">
									</div>
								</form>
							</div>
						</div>

						<div class="col-sm-12 work-experience-div ">
							<c:set var='index' value='1' />
							<c:forEach var="item" items="${uppb.workExperience}">
								<div class="col-sm-12 module-div"
									<c:if test="${index < fn:length(uppb.workExperience)}">style="border-bottom: 1px #d1d1d1 solid"</c:if>>
									<c:set var='index' value='${index+1}' />
									<h4 class="position">
										<c:out value='${item.position}' />
									</h4>
									<h5 class="company-name" style="font-family: calibri">
										<c:out value='${item.company}' />
									</h5>
									<h5 style="font-family: calibri">
										From <span class="start-month"> <c:out
												value='${item.startMonth}' /></span> <span class="start-year">
											<c:out value='${item.startYear}' />
										</span> to <span class="end-month"> <c:out
												value='${item.endMonth}' /></span> <span class="end-year">
											<c:out value='${item.endYear}' />
										</span>
									</h5>
									<input type="hidden" id="item" value="work-experience" /> <input
										type="hidden" id="web-key" value="${item.safeKey}" />
									<p>
										<a class="delete-item" href="<c:url value='#' />">Delete</a>
									</p>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-2">
					<div class="card-panel">
						<img alt="" src="/images/education.png" class="img img-responsive"
							style="width: 80%; margin: 0 auto">
					</div>
				</div>

				<div class="col-sm-10 card-panel">
					<div class="col-sm-12 no-padding-div">
						<h4 style="margin-bottom: 4%; font-weight: bold; color: #666666"
							class="">Education</h4>
						<div class="col-sm-12 no-padding-div">
							<span class="text-primary add-new" style="cursor: pointer;">Add
								new</span>
						</div>
						<div class="col-sm-12 no-padding-div">

							<div class="form-div" style="display: none;">
								<form class="education-form">
									<div>
										<label>School Name:</label><br /> <input id="institution"
											name="institution" style="width: 70%;">
									</div>
									<div>
										<label>Course:</label><br /> <input name="course" id="course"
											style="width: 70%;">
									</div>
									<div>
										<label>Certificate Earned:</label><br /> <input
											placeholder="" name="certificate" id="certificate"
											style="width: 70%;">
									</div>
									<div>
										<label>Additional Information:</label><br /> <input
											placeholder="" name="extra" id="extra" style="width: 70%;">
									</div>
									<div>
										<label>Time</label><br /> <select name="start-month"
											id="start-month">
											<option>January</option>
											<option>February</option>
											<option>March</option>
											<option>April</option>
											<option>May</option>
											<option>June</option>
											<option>July</option>
											<option>August</option>
											<option>September</option>
											<option>October</option>
											<option>November</option>
											<option>December</option>
										</select> <select name="start-year" id="start-year">
											<option>2000</option>
											<option>2001</option>
											<option>2002</option>
											<option>2003</option>
											<option>2004</option>
											<option>2005</option>
											<option>2006</option>
											<option>2007</option>
											<option>2008</option>
											<option>2009</option>
											<option>2010</option>
											<option>2011</option>
											<option>2012</option>
											<option>2013</option>
											<option>2014</option>
											<option>2015</option>
											<option>2016</option>
										</select> <label>To</label> <select name="end-month" id="end-month">
											<option>January</option>
											<option>February</option>
											<option>March</option>
											<option>April</option>
											<option>May</option>
											<option>June</option>
											<option>July</option>
											<option>August</option>
											<option>September</option>
											<option>October</option>
											<option>November</option>
											<option>December</option>
										</select> <select name="end-year" id="end-year">
											<option>2000</option>
											<option>2001</option>
											<option>2002</option>
											<option>2003</option>
											<option>2004</option>
											<option>2005</option>
											<option>2006</option>
											<option>2007</option>
											<option>2008</option>
											<option>2009</option>
											<option>2010</option>
											<option>2011</option>
											<option>2012</option>
											<option>2013</option>
											<option>2014</option>
											<option>2015</option>
											<option>2016</option>
											<option>Current</option>
										</select>
									</div>

									<div style="margin-top: 2%; margin-bottom: 2%;">
										<input type="button"
											class="btn btn-xs btn-primary save-education"
											value="Save Education"> <input
											class="btn btn-xs btn-danger cancel-button" type="button"
											value="Cancel">
									</div>
								</form>
							</div>
						</div>
						<div class="col-sm-12 education-div">
							<c:set var='edIndex' value='1' />
							<c:forEach var="item" items="${uppb.education}">
								<div class="col-sm-12 module-div"
									<c:if test="${edIndex < fn:length(uppb.education)}">style="border-bottom: 1px #d1d1d1 solid"</c:if>>
									<c:set var='edIndex' value='${edIndex+1}' />
									<h4 class="instituition">
										<c:out value='${item.institution}' />
									</h4>
									<h5 class="course" style="font-family: calibri">
										<c:out value='${item.course}' />
										<c:choose>
											<c:when test="${empty item.course}">
												<c:out value='${item.qualification}' />
											</c:when>
											<c:otherwise>
												<c:if test='${not empty item.qualification  }'>
												(
									<c:out value='${item.qualification}' />
									)
											</c:if>
											</c:otherwise>
										</c:choose>
									</h5>
									<h5 style="font-family: calibri">
										From <span class="start-month"> <c:out
												value='${item.startMonth}' /></span> <span class="start-year">
											<c:out value='${item.startYear}' />
										</span> to <span class="end-month"> <c:out
												value='${item.endMonth}' /></span> <span class="end-year">
											<c:out value='${item.endYear}' />
										</span>
									</h5>
									<input type="hidden" id="item" value="education" /> <input
										type="hidden" id="web-key" value="${item.safeKey}" />
									<p>
										<a class="delete-item" href="#">Delete</a>
									</p>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-2">
					<div class="card-panel">
						<img alt="" src="/images/certificate-award.png"
							class="img img-responsive" style="margin: 0 auto; width: 80%">
					</div>
				</div>
				<div class="col-sm-10 card-panel">
					<div class="col-sm-12 no-padding-div">
						<h4 style="margin-bottom: 4%; font-weight: bold; color: #666666"
							class="">Awards</h4>

						<div class="col-sm-12 no-padding-div">
							<span class="text-primary add-new" style="cursor: pointer;">Add
								new</span>
						</div>

						<div class="col-sm-12 no-padding-div">


							<div class="form-div">
								<form class="award-form">
									<div>
										<label>Award Name:</label><br /> <input id="award"
											name="award" style="width: 70%;">
									</div>
									<div>
										<label>Additional Information:</label><br /> <input
											placeholder="" name="extra" id="extra" style="width: 70%;">
									</div>
									<div>
										<label>Time</label><br /> <select name="start-month"
											id="start-month">
											<option>January</option>
											<option>February</option>
											<option>March</option>
											<option>April</option>
											<option>May</option>
											<option>June</option>
											<option>July</option>
											<option>August</option>
											<option>September</option>
											<option>October</option>
											<option>November</option>
											<option>December</option>
										</select> <select name="start-year" id="start-year">
											<option>2000</option>
											<option>2001</option>
											<option>2002</option>
											<option>2003</option>
											<option>2004</option>
											<option>2005</option>
											<option>2006</option>
											<option>2007</option>
											<option>2008</option>
											<option>2009</option>
											<option>2010</option>
											<option>2011</option>
											<option>2012</option>
											<option>2013</option>
											<option>2014</option>
											<option>2015</option>
											<option>2016</option>
										</select>
									</div>

									<div style="margin-top: 2%; margin-bottom: 2%;">
										<input type="button" class="btn btn-xs btn-primary save-award"
											value="Save Award"> <input
											class="btn btn-xs btn-danger cancel-button" value="Cancel">
									</div>
								</form>
							</div>
						</div>
						<div class="col-sm-12 award-div">
							<c:set var='awIndex' value='1' />
							<c:forEach var="item" items="${uppb.awards}">
								<div class="col-sm-12 module-div"
									<c:if test="${edIndex < fn:length(uppb.awards)}">style="border-bottom: 1px #d1d1d1 solid"</c:if>>
									<c:set var='awIndex' value='${awIndex+1}' />
									<h4 class="name">
										<c:out value='${item.name}' />
									</h4>
									<h5 class="extra" style="font-family: calibri">
										<c:out value='${item.description}' />
									</h5>
									<h5 style="font-family: calibri">
										<span class="start-month"> <c:out value='${item.month}' /></span>
										<span class="start-year"> <c:out value='${item.year}' />
										</span>
									</h5>
									<input type="hidden" id="item" value="award" /> <input
										type="hidden" id="web-key" value="${item.safeKey}" />
									<p>
										<a class="delete-item" href="#">Delete</a>
									</p>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-2">
					<div class="card-panel">
						<img alt="" src="/images/certificate-award.png"
							class="img img-responsive" style="margin: 0 auto; width: 80%">
					</div>
				</div>
				<div class="col-sm-10 card-panel">
					<div class="col-sm-12 no-padding-div">
						<h4 style="margin-bottom: 4%; font-weight: bold; color: #666666"
							class="">Certifications</h4>

						<div class="col-sm-12 no-padding-div">
							<span class="text-primary add-new" style="cursor: pointer;">Add
								new</span>
						</div>

						<div class="col-sm-12 no-padding-div">

							<div class="form-div">
								<form class="award-form">
									<div>
										<label>Certification Name:</label><br /> <input id="award"
											name="award" style="width: 70%;">
									</div>
									<div>
										<label>Additional Information:</label><br /> <input
											placeholder="" name="extra" id="extra" style="width: 70%;">
									</div>
									<div>
										<label>Time</label><br /> <select name="start-month"
											id="start-month">
											<option>January</option>
											<option>February</option>
											<option>March</option>
											<option>April</option>
											<option>May</option>
											<option>June</option>
											<option>July</option>
											<option>August</option>
											<option>September</option>
											<option>October</option>
											<option>November</option>
											<option>December</option>
										</select> <select name="start-year" id="start-year">
											<option>2000</option>
											<option>2001</option>
											<option>2002</option>
											<option>2003</option>
											<option>2004</option>
											<option>2005</option>
											<option>2006</option>
											<option>2007</option>
											<option>2008</option>
											<option>2009</option>
											<option>2010</option>
											<option>2011</option>
											<option>2012</option>
											<option>2013</option>
											<option>2014</option>
											<option>2015</option>
											<option>2016</option>
										</select>
									</div>

									<div style="margin-top: 2%; margin-bottom: 2%;">
										<input type="button" class="btn btn-xs btn-primary save-award"
											value="Save Award"> <input
											class="btn btn-xs btn-danger cancel-button" value="Cancel">
									</div>
								</form>
							</div>
						</div>
						<div class="col-sm-12 award-div">
							<c:set var='awIndex' value='1' />
							<c:forEach var="item" items="${uppb.awards}">
								<div class="col-sm-12 module-div"
									<c:if test="${edIndex < fn:length(uppb.awards)}">style="border-bottom: 1px #d1d1d1 solid"</c:if>>
									<c:set var='awIndex' value='${awIndex+1}' />
									<h4 class="name">
										<c:out value='${item.name}' />
									</h4>
									<h5 class="extra" style="font-family: calibri">
										<c:out value='${item.description}' />
									</h5>
									<h5 style="font-family: calibri">
										<span class="start-month"> <c:out value='${item.month}' /></span>
										<span class="start-year"> <c:out value='${item.year}' />
										</span>
									</h5>
									<input type="hidden" id="item" value="award" /> <input
										type="hidden" id="web-key" value="${item.safeKey}" />
									<p>
										<a class="delete-item" href="#">Delete</a>
									</p>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="col-sm-4">
			<div class="col-sm-12 card-panel no-padding-div">

				<h4 style="margin-bottom: 4%; font-weight: bold; color: #666666"
					class="">Curriculum Vitae</h4>
				<c:choose>
					<c:when test="${empty uppb.cv}">
						<p class="file-name">You have not uploaded your CV.</p>
						<p>
							<a class="upload-link upload-link-1" href="#">Upload CV</a> <a
								class="upload-link upload-link-2" href="#"
								style="display: none;">Change</a> <input type="hidden"
								name="old-key" id="old-key">
						</p>
					</c:when>
					<c:otherwise>
						<p class="file-name">
							<a target="_blank"
								href="<c:url value='/bq/close/get-cv?safe-key=${uppb.cvSafeString}' />"><c:out
									value='${uppb.cv}' /></a>
						</p>
						<p>
							<a class="upload-link" href="#">Change</a>
						</p>
					</c:otherwise>
				</c:choose>
				<div id="upload-cv-div" style="display: none">
					<form method="post" id="cv-form">
						<div class="form-group">
							<input name="cv-file" type="file" class="form-control">
						</div>
						<input type="hidden" name="old-key" value="${uppb.cvSafeString}">
						<div class="form-group">
							<input class="btn btn-default upload-cv" type="button"
								value="Upload">
						</div>
					</form>
				</div>

			</div>
			<!-- 	<div class="col-sm-12 dashboard-row no-padding-div">
				<iframe
					src="/images/ad1/negotiatn_ext.html"
					width="336" height="280" scrolling="no" frameBorder='0'></iframe>
			</div>  -->

			<div class="col-sm-12 card-panel no-padding-div">

				<h4 style="margin-bottom: 4%; font-weight: bold; color: #666666"
					class="">Other Information</h4>

				<div class="col-sm-12 editable-div">
					<label>Current State:</label>

					<c:choose>
						<c:when test='${empty uppb.currentState}'>
							<div>
								<span style="color: orange">Select the State you reside
									in</span>

							</div>
						</c:when>
						<c:otherwise>
							<span class="inline-output"><c:out
									value='${uppb.currentState}' /></span>
						</c:otherwise>
					</c:choose>
					<span class="inline-input" style="display: none;"> <select class="update">
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

					</span><span class="glyphicon glyphicon-pencil edit-tool"></span>
				</div>

				<div class="col-sm-12 editable-div">
					<label>Current Country:</label>
					<c:choose>
						<c:when test='${empty uppb.currentCountry}'>
							<span class="inline-output" style="color: orange">Enter
								the Country you currently reside in</span>
						</c:when>
						<c:otherwise>
							<span class="inline-output"><c:out
									value='${uppb.currentCountry}' /></span>
						</c:otherwise>
					</c:choose>
					<span class="inline-input"> <input id="phone"
						value="${uppb.currentCountry}" class="gen-inline-input" />
					</span><span class="glyphicon glyphicon-pencil edit-tool"></span>
				</div>

				<div class="col-sm-12 editable-div">
					<label>Nationality:</label>
					<c:choose>
						<c:when test='${empty uppb.nationality}'>
							<span class="inline-output" style="color: orange">Enter
								your Nationality</span>
						</c:when>
						<c:otherwise>
							<span class="inline-output"><c:out
									value='${uppb.nationality}' /></span>
						</c:otherwise>
					</c:choose>
					<span class="inline-input"> <input id="nationality"
						value="${uppb.nationality}" class="gen-inline-input" />
					</span><span class="glyphicon glyphicon-pencil edit-tool"></span>
				</div>

				<div class="col-sm-12 editable-div">
					<label>State of Origin:</label>

					<c:choose>
						<c:when test='${empty uppb.stateOfOrigin}'>
							<div>
								<span style="color: orange">Select your State of Origin:</span>

							</div>
						</c:when>
						<c:otherwise>
							<span class="inline-output"><c:out
									value='${uppb.stateOfOrigin}' /></span>
						</c:otherwise>
					</c:choose>
					<span class="inline-input" style="display: none;"> <select class="update">
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

					</span><span class="glyphicon glyphicon-pencil edit-tool"></span>
				</div>

				<div class="col-sm-12 editable-div">

					<label>Gender:</label>
					<c:choose>
						<c:when test='${empty user.gender}'>
							<div>
								<span style="color: orange">Select Gender</span>

							</div>
						</c:when>
						<c:otherwise>
							<span class="inline-output"><c:out value='${user.gender}' /></span>
						</c:otherwise>
					</c:choose>
					<span class="inline-input" style="display: none;"> <select class="update"
						id="gender">
							<option>Female</option>
							<option>Male</option>
					</select>

					</span><span class="glyphicon glyphicon-pencil edit-tool"></span>

				</div>



				<div class="col-sm-12 editable-div">
					<label>Years of Experience:</label>

					<c:choose>
						<c:when test='${empty uppb.yearOfExperience}'>
							<div>
								<span style="color: orange">Select Years of Experience</span>

							</div>
						</c:when>
						<c:otherwise>
							<span class="inline-output"><c:out
									value='${uppb.yearOfExperience}' /></span>
						</c:otherwise>
					</c:choose>
					<span class="inline-input" style="display: none;"> <select class="update"
						id="yearsofexp">
							<option>0 - 1 year</option>
							<option>0 - 2 years</option>
							<option>1 - 3 years</option>
							<option>2 - 5 years</option>
							<option>3 - 5 years</option>
							<option>5 - 10 years</option>
							<option>more than 10 years</option>
					</select>

					</span><span class="glyphicon glyphicon-pencil edit-tool"></span>

				</div>

				<div class="col-sm-12 editable-div">
					<label>Career Level:</label>

					<c:choose>
						<c:when test='${empty uppb.careerLevel}'>
							<div>
								<span style="color: orange">Career Level:</span>

							</div>
						</c:when>
						<c:otherwise>
							<span class="inline-output"><c:out
									value='${uppb.careerLevel}' /></span>
						</c:otherwise>
					</c:choose>

					<span class="inline-input" style="display: none;"> <select class="update"

						id="careerlevel">
							<option>Student (Undergraduate/Graduate)</option>
							<option>Entry Level</option>
							<option>Experienced (Non-Managerial)</option>
							<option>Manager (Manager/Supervisor of
								Staff)</option>
							<option>Executive (SVP,VP,Department Head
								etc)</option>
							<option>Senior Executive (President,
								CFO. etc)</option>

					</select>

					</span><span class="glyphicon glyphicon-pencil edit-tool"></span>

				</div>
			</div>
		</div>

	</div>
	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.webui-popover.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							/*tinymce.init({
								selector : '.tiny'
							});*/

							$(".delete-item").on('click', function(e) {
								e.preventDefault();
								var par = $(this).closest(".module-div");
								var x = par.find("#item").val();
								var y = par.find("#web-key").val();
								$.ajax({
									url : "/bq/close/general-delete",
									data : {
										"key" : y,
										"item" : x
									},
									method : "POST",
									success : function() {
										par.remove();
									}
								});
							});
							$(".cancel-button").click(function() {
								$(this).closest(".inline-input").hide();
							});
							$(".upload-cv").click(function() {
								$(this).prop('disabled', true);
								$("#cv-form").submit();
							});
							$("#cv-form")
									.on(
											'submit',
											function(e) {
												var cov = $(".upload-cv");
												/*cov.waitMe({
													effect : 'ios',
													color : 'gray',
													sizeW : '15',
													sizeH : '15'
												});*/
												var x = $(this).attr('action');

												$
														.ajax({
															url : x,
															type : 'POST',
															dataType : "json",
															data : new FormData(
																	this),
															processData : false,
															contentType : false,
															success : function(
																	data) {

																$(".file-name")
																		.html(
																				"<a target='_blank' href='<c:url value='/bq/close/get-cv?safe-key="
																						+ data.safeKey
																						+ "' />'>"
																						+ data.fileName
																						+ "</a>");
																$(
																		".upload-link-1")
																		.hide();
																$(
																		".upload-link-2")
																		.show();
																$("#old-key")
																		.val(
																				data.safeKey);
																$(
																		"#upload-cv-div")
																		.slideToggle();
															},
															error : function(
																	jqXHR,
																	status,
																	errorThrown) {
																alert("error");
															},
															complete : function() {
																cov
																		.prop(
																				'disabled',
																				false);
															}
														});
												e.preventDefault();
											});
							$(".upload-link").click(function(e) {
								e.preventDefault();
								$.ajax({
									url : "/bq/close/get-file-upload-url",
									success : function(data) {

										$("#cv-form").prop("action", data);
										$("#upload-cv-div").slideToggle();
									}
								});
							});
							$(".editable-div").mouseenter(function() {
								$(this).find(".edit-tool").show();
							});

							$(".editable-div").mouseleave(function() {
								$(this).find(".edit-tool").hide();
							});

							$(".edit-tool").click(function() {
								var parent = $(this).closest(".editable-div");
								parent.find(".inline-output").hide();
								var inputs = parent.find(".inline-input");
								inputs.show();
								$(this).hide();

							});

							$("#first-name").keyup(function(event) {
								if (event.keyCode == 13) {
									$("#last-name").focus();
								}
							});

							$("#last-name")
									.keyup(
											function(event) {
												if (event.keyCode == 13) {

													var name = $("#first-name")
															.val()
															+ " "
															+ $(this).val();
													var parent = $(this)
															.parent().parent();
													var output = parent
															.find(".inline-output");
													var inputs = parent
															.find(".inline-input");
													inputs.hide();
													$
															.ajax({
																url : '/bq/close/update-profile',
																method : 'POST',
																data : {
																	"param" : $(
																			this)
																			.prop(
																					"id"),
																	"first-name" : $(
																			"#first-name")
																			.val(),
																	"last-name" : $(
																			this)
																			.val()
																},
																success : function() {
																	output
																			.text(name);
																},
																complete : function() {
																	output
																			.show();
																	output
																			.css(
																					"color",
																					"black");
																}
															});

												}
											});

							$(".gen-inline-input")
									.keyup(
											function(event) {
												if (event.keyCode == 13) {

													var name = $(this).val();
													var parent = $(this)
															.closest(
																	".editable-div");
													var output = parent
															.find(".inline-output");
													var inputs = parent
															.find(".inline-input");
													inputs.hide();
													$
															.ajax({
																url : '/bq/close/update-profile',
																method : 'POST',
																data : {
																	"param" : $(
																			this)
																			.prop(
																					"id"),
																	"value" : name
																},
																success : function() {
																	output
																			.html(name);
																},
																complete : function() {
																	output
																			.show();
																	output
																			.css(
																					"color",
																					"black");
																}
															});

												}
											});

							$(".save-work-experience")
									.on(
											'click',
											function() {
												$(this).prop("value",
														"Saving...");
												var form = $(this)
														.closest(
																".work-experience-form");
												var parent = $(this).closest(
														".editable-div");
												var gp = parent.parent();
												var inputs = parent
														.find(".inline-input");
												$
														.ajax({
															url : "/bq/close/save-work-experience",
															data : form
																	.serialize(),
															method : 'POST',
															success : function(
																	data) {

																inputs.hide();
																var str = '<div class="col-sm-12"><h4 class="position">'
																		+ $(
																				"#position")
																				.val()
																		+ '</h4><h5 class="company-name" style="font-family: calibri">'
																		+ $(
																				"#organization")
																				.val()
																		+ '</h5><h5 style="font-family: calibri">';
																var str1 = 'From <span class="start-month">'
																		+ $(
																				"#start-month")
																				.val()
																		+ ' </span> <span class="start-year">'
																		+ $(
																				"#start-year")
																				.val()
																		+ '</span> to <span class="end-month">'
																		+ $(
																				"#end-month")
																				.val()
																		+ '</span> <span class="end-year">'
																		+ $(
																				"#end-year")
																				.val()
																		+ '</span></h5><input type="hidden" id="item"  value="work-experience"/>'
																		+ '<input type="hidden" id="web-key"  value="'+data+'" />'
																		+ '<p><a class="delete-item" href="<c:url value='#' />">Delete</a></p>';
																str = str
																		+ str1;
																gp
																		.find(
																				".work-experience-div")
																		.prepend(
																				str);
															},

															complete : function() {
																$(this)
																		.prop(
																				"value",
																				"Save work experience");
															}
														});
											});

							$(".save-education")
									.on(
											'click',
											function() {
												$(this).prop("value",
														"Saving...");
												var form = $(this).closest(
														".education-form");
												var parent = $(this).closest(
														".editable-div");
												var gp = parent.parent();
												var inputs = parent
														.find(".inline-input");
												$
														.ajax({
															url : "/bq/close/add-education",
															data : form
																	.serialize(),
															method : 'POST',
															success : function() {
																inputs.hide();
																var str = '<div class="col-sm-12"><h4 class="instituition">'
																		+ $(
																				"#institution")
																				.val()
																		+ '</h4><h5 class="course" style="font-family: calibri">'
																		+ $(
																				"#course")
																				.val()
																		+ ' ('
																		+ $(
																				"#certificate")
																				.val()
																		+ ')<h5 style="font-family: calibri">'
																		+ $(
																				"#extra")
																				.val()
																		+ '</h5>'
																		+ '</h5><h5 style="font-family: calibri">';
																var str1 = 'From <span class="start-month">'
																		+ $(
																				"#start-month")
																				.val()
																		+ ' </span> <span class="start-year">'
																		+ $(
																				"#start-year")
																				.val()
																		+ '</span> to <span class="end-month">'
																		+ $(
																				"#end-month")
																				.val()
																		+ '</span> <span class="end-year">'
																		+ $(
																				"#end-year")
																				.val()
																		+ '</span></h5>';
																str = str
																		+ str1;
																gp
																		.find(
																				".education-div")
																		.prepend(
																				str);
															},

															complete : function() {
																$(this)
																		.prop(
																				"value",
																				"Save Education")
															}
														});
											});
							$(".save-award")
									.on(
											'click',
											function() {
												$(this).prop("value",
														"Saving...");
												var form = $(this).closest(
														".award-form");
												var parent = $(this).closest(
														".editable-div");
												var gp = parent.parent();
												var inputs = parent
														.find(".inline-input");
												$
														.ajax({
															url : "/bq/close/add-award",
															data : form
																	.serialize(),
															method : 'POST',
															success : function() {
																inputs.hide();
																var str = '<div class="col-sm-12"><h4 class="award">'
																		+ $(
																				"#award")
																				.val()
																		+ '</h4>'
																		+ '<h5 style="font-family: calibri">'
																		+ $(
																				"#extra")
																				.val()
																		+ '</h5>'
																		+ '</h5><h5 style="font-family: calibri">';
																var str1 = '<span class="start-month">'
																		+ $(
																				"#start-month")
																				.val()
																		+ ' </span> <span class="start-year">'
																		+ $(
																				"#start-year")
																				.val()
																		+ '</span></h5>';
																str = str
																		+ str1;
																gp
																		.find(
																				".award-div")
																		.prepend(
																				str);
															},

															complete : function() {
																$(this)
																		.prop(
																				"value",
																				"Save Award")
															}
														});
											});
						});
	</script>
	<script type="text/javascript">
		$(".add-new").click(function() {

			var parent = $(this).closest(".card-panel");
			parent.find(".form-div").slideDown();
		});
		$(".cancel-button").click(function() {
			var parent = $(this).closest(".card-panel");
			parent.find(".form-div").slideUp();
		});

		$(".update").change(function() {

			var par = $(this).closest(".editable-div");
			par.find(".inline-output").text($(this).val());
			$(this).hide();
			par.find(".inline-output").show();

		});
		
		
	</script>
</body>
</html>