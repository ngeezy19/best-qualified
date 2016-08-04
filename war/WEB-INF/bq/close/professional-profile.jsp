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
.editable-div {
	margin: 3px 0px;
}

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
		<div class="col-sm-7">
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
							<div class="col-sm-12 text-muted">
								<span class="inline-output"><c:out value='${user.email}' /></span>
							</div>
							<div class="col-sm-12 editable-div">
								<input value="tagline" class="h-input" type="hidden" /> <input
									value="${user.tagline}" class="input" /> <span class="output">
									<c:choose>
										<c:when test='${empty user.tagline}'>
											<span style="color: orange">Write your tagline</span>
										</c:when>
										<c:otherwise>
											<c:out value='${user.tagline}' />
										</c:otherwise>
									</c:choose>
								</span> <span class="glyphicon glyphicon-pencil edit-tool"></span>
							</div>
							<div class="col-sm-12 editable-div">
								<input value="current-employer" class="h-input" type="hidden" />
								<input value="${professionalProfile.currentEmployer}"
									class="input" /> <span class="output"> <c:choose>
										<c:when test='${empty professionalProfile.currentEmployer}'>
											<span style="color: orange">Who is your current
												employer?</span>
										</c:when>
										<c:otherwise>
											<c:out value='${professionalProfile.currentEmployer}' />
										</c:otherwise>
									</c:choose>
								</span> <span class="glyphicon glyphicon-pencil edit-tool"></span>
							</div>

							<div class="col-sm-12 editable-div">
								<input value="phone" class="h-input" type="hidden" /> <input
									value="${user.phone}" class="input" /> <span class="output">
									<c:choose>
										<c:when test='${empty user.phone}'>
											<span style="color: orange">Enter a contact phone
												number</span>
										</c:when>
										<c:otherwise>
											<c:out value='${user.phone}' />
										</c:otherwise>
									</c:choose>
								</span> <span class="glyphicon glyphicon-pencil edit-tool"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-5">
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


			<div class="col-sm-12 card-panel no-padding-div">

				<h4 style="margin-bottom: 4%; font-weight: bold; color: #666666"
					class="">Other Information</h4>

				<div class="col-sm-12 editable-div">
					<label>Current State:</label> <input value="current-state"
						class="h-input" type="hidden" /> <select
						value="${uppb.currentState}" class="input" ><%@ include file="/partial/states.html"%></select> <span
						class="output"> <c:choose>
							<c:when test='${empty uppb.currentState}'>
								<span style="color: orange">Which state do you stay?</span>
							</c:when>
							<c:otherwise>
								<c:out value='${uppb.currentState}' />
							</c:otherwise>
						</c:choose>
					</span> <span class="glyphicon glyphicon-pencil edit-tool"></span>
				</div>

				<div class="col-sm-12 editable-div">
					<label>Current Country:</label> <input value="current-country"
						class="h-input" type="hidden" /> <input
						value="${uppb.currentCountry}" class="input" /> <span
						class="output"> <c:choose>
							<c:when test='${empty uppb.currentCountry}'>
								<span style="color: orange">Enter current country</span>
							</c:when>
							<c:otherwise>
								<c:out value='${uppb.currentCountry}' />
							</c:otherwise>
						</c:choose>
					</span> <span class="glyphicon glyphicon-pencil edit-tool"></span>
				</div>

				<div class="col-sm-12 editable-div">
					<label>Nationality:</label> <input value="nationality"
						class="h-input" type="hidden" /> <input
						value="${uppb.nationality}" class="input" /> <span class="output">
						<c:choose>
							<c:when test='${empty uppb.nationality}'>
								<span style="color: orange">Enter Nationality</span>
							</c:when>
							<c:otherwise>
								<c:out value='${uppb.nationality}' />
							</c:otherwise>
						</c:choose>
					</span> <span class="glyphicon glyphicon-pencil edit-tool"></span>
				</div>

				<div class="col-sm-12 editable-div">
					<label>State of Origin:</label> <input value="state-of-origin"
						class="h-input" type="hidden" /> <select
						value="${uppb.stateOfOrigin}" class="input"><%@ include file="/partial/states.html"%></select>
					<span class="output"> <c:choose>
							<c:when test='${empty uppb.stateOfOrigin}'>
								<span style="color: orange">Select state of origin</span>
							</c:when>
							<c:otherwise>
								<c:out value='${uppb.stateOfOrigin}' />
							</c:otherwise>
						</c:choose>
					</span> <span class="glyphicon glyphicon-pencil edit-tool"></span>
				</div>

				<div class="col-sm-12 editable-div">
					<label>Gender:</label> <input value="gender" class="h-input"
						type="hidden" /> <input value="${uppb.gender}" class="input" />
					<span class="output"> <c:choose>
							<c:when test='${empty uppb.gender}'>
								<span style="color: orange">Select your gender</span>
							</c:when>
							<c:otherwise>
								<c:out value='${uppb.gender}' />
							</c:otherwise>
						</c:choose>
					</span> <span class="glyphicon glyphicon-pencil edit-tool"></span>
				</div>

				<div class="col-sm-12 editable-div">
					<label>Years of Experience:</label> <input value="experience"
						class="h-input" type="hidden" /> <input
						value="${uppb.yearOfExperience}" class="input" /> <span
						class="output"> <c:choose>
							<c:when test='${empty uppb.yearOfExperience}'>
								<span style="color: orange">Select years of experience</span>
							</c:when>
							<c:otherwise>
								<c:out value='${uppb.yearOfExperience}' />
							</c:otherwise>
						</c:choose>
					</span> <span class="glyphicon glyphicon-pencil edit-tool"></span>
				</div>

				<div class="col-sm-12 editable-div">
					<label>Career Level:</label> <input value="career-level"
						class="h-input" type="hidden" /> <input
						value="${uppb.careerLevel}" class="input" /> <span class="output">
						<c:choose>
							<c:when test='${empty uppb.careerLevel}'>
								<span style="color: orange">Select years career level</span>
							</c:when>
							<c:otherwise>
								<c:out value='${uppb.careerLevel}' />
							</c:otherwise>
						</c:choose>
					</span> <span class="glyphicon glyphicon-pencil edit-tool"></span>
				</div>

			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.webui-popover.min.js"></script>
	<script src="/js/main.js"></script>
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".input").hide();
		});
		$(".editable-div").mouseenter(function() {
			$(this).find(".edit-tool").show();
		});

		$(".editable-div").mouseleave(function() {
			$(this).find(".edit-tool").hide();
		});

		$(".edit-tool").click(function() {
			var me = $(this);
			var par = me.closest(".editable-div");
			var inp = par.find(".input");
			var out = par.find(".output");
			$(".input").hide();
			$(".output").show();
			inp.show();
			inp.focus();
			out.hide();
			me.hide();
			par.off();
		});

		$(".input").keyup(function(e) {

			var me = $(this);
			var par = me.closest(".editable-div");
			var hInp = par.find(".h-input");
			var out = par.find(".output");

			var x = hInp.val();
			var y = me.val();

			if (e.keyCode == 13) {
				$.ajax({
					url : "/bq/close/update-profile",
					method : "POST",
					data : {
						"param" : x,
						"value" : y
					},
					success : function() {
						out.html(y);
					},
					complete : function() {
						out.show();
						me.hide();
						par.mouseenter(function() {
							$(this).find(".edit-tool").show();
						});

						par.mouseleave(function() {
							$(this).find(".edit-tool").hide();
						});
					}
				});
			}
		});
	</script>
</body>
</html>