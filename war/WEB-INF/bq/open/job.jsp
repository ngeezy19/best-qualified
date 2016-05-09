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
<link rel="canonical"
	href="http://localhost:8888/bq/open/job?job-key=${jobInformation.webKey}">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="1082599418027-i7l89ubpe432n7lfiu9jus3cc0a99vqs.apps.googleusercontent.com">
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

.filter li {
	list-style: none;
	font-family: arial;
	border-bottom: 1px gray solid;
	padding: 3%;
}

.filter:last-child {
	border-bottom: none !important;
}
</style>
</head>
<body
	style="background-image: url(/images/background.jpg); background-repeat: repeat;">
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<script>
		window.twttr = (function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0], t = window.twttr || {};
			if (d.getElementById(id))
				return t;
			js = d.createElement(s);
			js.id = id;
			js.src = "https://platform.twitter.com/widgets.js";
			fjs.parentNode.insertBefore(js, fjs);

			t._e = [];
			t.ready = function(f) {
				t._e.push(f);
			};

			return t;
		}(document, "script", "twitter-wjs"));
	</script>
	<%@ include file="/main-nav.html"%>
	<div class="container dashboard-body"
		style="margin-top: 8%; margin-bottom: 2%;">
		<div class="col-sm-12" style="margin-bottom: 2%">
			<div class="col-sm-12 dashboard-section no-padding-div"
				style="padding-bottom: 0px; padding-top: 0px">
				<div class="col-sm-3"
					style="background-color: gray; color: white; font-family: arial; font-weight: bold; text-align: center; height: 4.4em">
					<img alt="Find a job" src="/images/find_a_job.png">
				</div>
				<form action="<c:url value='/bq/open/job-search' />">
					<div class="col-sm-7" style="margin-top: 1%;">
						<div class="form-group">
							<input class="form-control" placeholder="jobs"/ >
						</div>
					</div>
					<div class="col-sm-2" style="margin-top: 1%;">
						<div class="form-group">
							<input type="submit" value="Search" class="btn btn-primary"/ >
						</div>
					</div>
					<div class="col-sm-12" style="background-color: gray; color: white">
						<div class="col-sm-12" style="text-align: right">Advanced
							Search</div>
					</div>
				</form>
			</div>
		</div>
		<div class="col-sm-8">
			<c:if test="${noCV}">
				<div class="bq-alert bq-alert-warning">
					<p>You have to update your profile and upload your CV.</p>
					<p>
						Go to your<a
							href="<c:url value='/bq/closed/init-professional-profile'/>">
							profile</a>
					</p>
				</div>
			</c:if>
			<c:if test="${cvSent}">
				<div class="bq-alert bq-alert-success">
					<p>Your Application has been sent successfully, Good Luck.</p>
				</div>
			</c:if>
			<div class="col-sm-12 dashboard-section" style="margin-bottom: 2%">
				<div class="col-sm-12">
					<div class="col-sm-3">
						<img alt="" src="${jobInformation.pictureUrl}"
							class="img img-responsive">
					</div>
					<div class="col-sm-9">
						<h4>
							<a href="#"><c:out value="${jobInformation.jobTitle}" /></a>
						</h4>
						<h5 style="font-family: calibri">
							<c:out value="${jobInformation.companyName}" />
						</h5>
						<h5>
							<i class="text-danger" style="font-family: calibri">Posted <c:out
									value="${jobInformation.datePosted}" /></i>
						</h5>
						<p>

							<c:choose>
								<c:when test="${not empty professionalDashboard.professionalLevel}">
									<a
										href="<c:url value='/bq/closed/job/application?job-key=${jobInformation.webKey}' />"
										class="btn btn-primary">Apply</a>
								</c:when>
								<c:otherwise>
									<button type="button" class="btn btn-info" data-toggle="modal"
										data-target="#myModal">Start Assessment Test</button>
								</c:otherwise>
							</c:choose>


							<a class="btn btn-success">Save</a>
						</p>
					</div>
					<div class="col-sm-12">
						<hr />
					</div>
					<div class="col-sm-12">

						<p>${jobInformation.jobDesc}</p>
						<p>${jobInformation.extraInfo}</p>
						<p>
							<a
								href="<c:url value='/bq/closed/job/application?app-url=${jobInformation.applicationUrl}' />"
								class="btn  btn-primary">Apply</a> <a class="btn  btn-success">Save</a>
						</p>
					</div>
					<div class="row">
						<div class="col-md-12" style="text-align: center; padding: 2%;">
							<div class="fb-share-button"
								style="line-height: 0.7; vertical-align: baseline; display: inline-block;"
								data-href="/bq/open/job?job-key=${jobInformation.webKey}"
								data-layout="button"></div>

							<script src="//platform.linkedin.com/in.js"
								type="text/javascript">
								lang: en_US
							</script>
							<script type="IN/Share"
								data-url="http://localhost:8888/bq/open/job?job-key=${jobInformation.webKey}"></script>
							<div class="g-plus" data-action="share" data-annotation="none"
								data-href="http://localhost:8888/bq/open/job?job-key=${jobInformation.webKey}"></div>
							<a class="twitter-share-button"
								href="https://twitter.com/intent/tweet"></a>
							<div style="display: inline-block;">
								<a
									href="mailto:?Subject=Job recommendation from Best Qualified&amp;Body=Hello, Here%20is%20a%20job%20you%20may%20like%20${jobInformation.pageUrl}">
									<img src="/images/email-big.png"
									style="vertical-align: baseline;" alt="Email" />
								</a>
							</div>
						</div>
					</div>


				</div>
			</div>
			<c:if test="${not empty jobInformation.companyDesc}">
				<div class="col-sm-12 dashboard-section">
					<h4 class="text-danger">
						About
						<c:out value='${jobInformation.companyName}' />
					</h4>
					<div class="col-sm-3">
						<img alt="" src="${jobInformation.pictureUrl}"
							class="img img-responsive">
					</div>
					<div class="col-sm-9">
						<p ${jobInformation.companyDesc}</p>
					</div>
				</div>
			</c:if>
		</div>
		<div class="col-sm-4">
			<div class="col-sm-12 discussion-sidebar">
				<h4 style="border-bottom: 1px gray solid">Job Summary</h4>
				<strong style="display: block;">Company</strong>
				<p>
					<c:out value='${jobInformation.companyName}' />
				</p>
				<strong style="display: block;">Job Level</strong>
				<p>
					<c:out value='${jobInformation.careerLevel}' />
				</p>
				<strong style="display: block;">Location</strong>
				<p>
					<c:out value='${jobInformation.location}' />
				</p>
				<!-- <strong style="display: block;">Industry</strong>
				<p><c:out value='${jobInformation.location}' /></p> -->
				<strong style="display: block;">Job Type</strong>
				<p>
					<c:out value='${jobInformation.jobType}' />
				</p>
				<strong style="display: block;">Mininum Qualification</strong>
				<p>
					<c:out value='${jobInformation.qualification}' />
				</p>
				<strong style="display: block;">Prefered Years of
					Experience</strong>
				<p>
					<c:out value='${jobInformation.experience}' />
				</p>
				<strong style="display: block;">Application Deadline</strong>
				<p>
					<c:out value='${jobInformation.deadline}' />
				</p>
			</div>
			<c:if test="${not empty jobInformation.relatedJobs}">
				<div class="col-sm-12 dashboard-section">
					<div class="col-sm-12" style="border-bottom: 1px gray solid">
						<div class="col-sm-3">
							<img alt="" src="/images/company.png" class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<h4>Sales Manager</h4>
							<h5>Flex Sales Company</h5>
							<h5>
								Posted 3 mins ago <a class="btn btn-primary pull-right">View</a>
							</h5>
						</div>

					</div>
				</div>
			</c:if>

		</div>



	</div>

	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Select your level of experience</h4>
				</div>
				<div class="modal-body">
					<form id="exp-level-form"
						action="<c:url value='/bq/close/get-assessment-questions'/>">
						<select name="exp-level">
							<option>Beginner</option>
							<option>Intermediate</option>
							<option>Advanced</option>
						</select> <input class="btn btn-info" type="submit" value="Go for test">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
</body>
</html>