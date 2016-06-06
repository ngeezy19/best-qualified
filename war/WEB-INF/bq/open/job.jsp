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
<body>
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
		style="height: 350px; padding: 3%; margin-bottom: 2%; border-bottom: 1px #cacaca solid; width: 100%; padding-top: 4%; padding-bottom: none; background-image: url('/images/concrete_seamless.png')"></div>
	<div class="container dashboard-body"
		style="width: 80%; margin: 0 auto; margin-top: -300px; margin-bottom: 2%;">

		<div class="row">
			<div class="col-md-12" style="text-align: center; padding: 2%;">
				<div class="fb-share-button"
					style="line-height: 0.7; vertical-align: baseline; display: inline-block;"
					data-href="/bq/open/job?job-key=${jobInformation.webKey}"
					data-layout="button"></div>

				<script src="//platform.linkedin.com/in.js" type="text/javascript">
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
						<img src="/images/email-big.png" style="vertical-align: baseline;"
						alt="Email" />
					</a>
				</div>
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
			<div class="col-sm-12"
				style="margin-bottom: 2%; background-color: white; padding-top: 2%; border: 1px #cacaca solid">
				<div class="col-sm-12 no-padding-div">
					<div class="col-sm-12 no-padding-div"
						style="background-color: rgba(255, 200, 45, 0.5)">
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
								<a
									href="<c:url value='/bq/closed/job/application?job-key=${jobInformation.webKey}' />"
									class="btn btn-primary">Apply</a> <a class="btn btn-success">Save</a>
							</p>
						</div>
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
			<div class="col-sm-12 discussion-sidebar"
				style="background-color: rgba(57, 255, 20, 0.6)">
				<h4 style="border-bottom: 1px gray solid">Job Summary</h4>
				<c:if test='${not empty jobInformation.companyName}'>
					<strong style="display: block;">Company</strong>
					<p>
						<c:out value='${jobInformation.companyName}' />
					</p>
				</c:if>

				<c:if test='${not empty jobInformation.careerLevel}'>
					<strong style="display: block;">Job Level</strong>
					<p>
						<c:out value='${jobInformation.careerLevel}' />
					</p>
				</c:if>

				<c:if test='${not empty jobInformation.location}'>
					<strong style="display: block;">Location</strong>
					<p>
						<c:out value='${jobInformation.location}' />
					</p>
				</c:if>
				<c:if test='${not empty jobInformation.industry}'>
					<strong style="display: block;">Industry</strong>
					<p>
						<c:out value='${jobInformation.industry}' />
				</c:if>

				<c:if test='${not empty jobInformation.jobType}'>
					<strong style="display: block;">Job Type</strong>
					<p>
						<c:out value='${jobInformation.jobType}' />
					</p>
				</c:if>

				<c:if test='${not empty jobInformation.qualification}'>
					<strong style="display: block;">Mininum Qualification</strong>
					<p>
						<c:out value='${jobInformation.qualification}' />
					</p>
				</c:if>

				<c:if test='${not empty jobInformation.experience}'>
					<strong style="display: block;">Prefered Years of
						Experience</strong>
					<p>
						<c:out value='${jobInformation.experience}' />
					</p>
				</c:if>

				<c:if test='${not empty jobInformation.deadline}'>
					<strong style="display: block;">Application Deadline</strong>
					<p>
						<c:out value='${jobInformation.deadline}' />
					</p>
				</c:if>

			</div>
			<c:if test="${not empty jobInformation.relatedJobs}">
				<div class="col-sm-12 dashboard-section no-padding-div"
					style="border: 2px orange solid; padding-top: 0px; padding-bottom: 0px">
					<div class="col-sm-12 no-padding-div"
						style="background-color: orange; color: white; font-weight: bold; text-align: center;">
						<h4>Related Jobs</h4>
					</div>
					<c:forEach var="item" items="${jobInformation.relatedJobs}">
						<div class="col-sm-12 no-padding-div"
							style="border-bottom: 1px #e1e1e1 solid; margin-top: 2%;">
							<div class="col-sm-3">
								<a href="/bq/open/job?job-key=${item.jobKey}"><img alt=""
									src="${item.pictureUrl}" class="img img-responsive"></a>
							</div>
							<div class="col-sm-9 no-padding-div" style="padding-right: 2%;">

								<a href="/bq/open/job?job-key=${item.jobKey}"><c:out
										value="${item.jobTitle}" /></a>

								<h5
									style="font-family: calibri; margin-top: 2px; margin-bottom: 0px">
									<c:out value="${item.companyName}" />
								</h5>
								<h5 style="margin-top: 5px">
									<strong class="text-success"><c:out
											value='${item.location}' /></strong> <i style="font-family: calibri"
										class="text-danger pull-right">Posted <c:out
											value="${item.postedTime}" />
									</i>

								</h5>
							</div>

						</div>
					</c:forEach>
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