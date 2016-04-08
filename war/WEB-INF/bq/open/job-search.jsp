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
<body style="background-color: #f1f1f1">
	<%@ include file="/main-nav.html"%>
	<div class="container dashboard-body" style="margin-top: 8%; margin-bottom: 2%;">

		<div class="col-sm-10">
			<div class="col-sm-12 dashboard-section">
				<div class="col-sm-3">
					<h4 style="border-bottom: 1px gray solid">Filter Search</h4>
					<div class="form-group">
						<label>Keyword</label> <input value="" class="form-control" /> <label>Company</label>
						<input value="" class="form-control" /> <label>Title</label> <input
							value="" class="form-control" /> <label>Location</label> <input
							value="" class="form-control" />
						<div class="form-group" style="margin-top: 2%;">
							<input class="btn btn-primary" value="Search">
						</div>
					</div>
					<hr />
					<ul class="filter" style="padding: 0px">
						<li>Date Posted <span style="font-size: 10pt"
							class="glyphicon glyphicon-triangle-bottom pull-right"></span></li>
						<li>
							<div class="checkbox">
								<label><input type="checkbox" value="">All</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">1 day ago
									(14)</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">2 - 7
									days ago (7)</label>
							</div>
							<div class="checkbox disabled">
								<label><input type="checkbox" value="">8 - 14
									days ago (15)</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">15 - 30
									days ago (25)</label>
							</div>

						</li>
						<li>Industry <span style="font-size: 10pt"
							class="glyphicon glyphicon-triangle-bottom pull-right"></span></li>
						<li>Experience <span
							style="font-size: 10pt; border-bottom: 0px"
							class="glyphicon glyphicon-triangle-bottom pull-right"></span>
							<div class="checkbox">
								<label><input type="checkbox" value="">All</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Entry
									level (14)</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Internship
									(7)</label>
							</div>
							<div class="checkbox disabled">
								<label><input type="checkbox" value="">Associate
									(15)</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Director
									(25)</label>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="">Executive
									(25)</label>
							</div>
						</li>
					</ul>
				</div>
				<div class="col-sm-9" style="border-left: 1px gray solid">
					<h4 style="border-bottom: 1px gray solid">35 results found for
						Sales Manager</h4>
					<div class="col-sm-12">
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
						<div class="col-sm-12" style="border-bottom: 1px gray solid">
							<div class="col-sm-3">
								<img alt="" src="/images/company.png" class="img img-responsive">
							</div>
							<div class="col-sm-9">
								<h4>Sales Representative</h4>
								<h5>Sales Professionals Company</h5>
								<h5>
									Posted yesterday <a href="<c:url value='/bq/open/job' />" class="btn btn-primary pull-right">View</a>
								</h5>
							</div>

						</div>
						<div class="col-sm-12" style="border-bottom: 1px gray solid"">
							<div class="col-sm-3">
								<img alt="" src="/images/company.png" class="img img-responsive">
							</div>
							<div class="col-sm-9">
								<h4>Senoir Sales Executive</h4>
								<h5>Promasidor Ltd</h5>
								<h5>
									Posted 2 days ago <a href="<c:url value='/bq/open/job' />" class="btn btn-primary pull-right">View</a>
								</h5>
							</div>

						</div>
						<div class="col-sm-12" style="border-bottom: 1px gray solid">
							<div class="col-sm-3">
								<img alt="" src="/images/company.png" class="img img-responsive">
							</div>
							<div class="col-sm-9">
								<h4>Sales Manager</h4>
								<h5>Flex Sales Company</h5>
								<h5>
									Posted 3 mins ago <a href="<c:url value='/bq/open/job' />" class="btn btn-primary pull-right">View</a>
								</h5>
							</div>

						</div>
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
						<div class="col-sm-12" style="border-bottom: 1px gray solid">
							<div class="col-sm-3">
								<img alt="" src="/images/company.png" class="img img-responsive">
							</div>
							<div class="col-sm-9">
								<h4>Sales Representative</h4>
								<h5>Sales Professionals Company</h5>
								<h5>
									Posted yesterday <a class="btn btn-primary pull-right">View</a>
								</h5>
							</div>

						</div>
						<div class="col-sm-12" style="border-bottom: 1px gray solid">
							<div class="col-sm-3">
								<img alt="" src="/images/company.png" class="img img-responsive">
							</div>
							<div class="col-sm-9">
								<h4>Sales Representative</h4>
								<h5>Sales Professionals Company</h5>
								<h5>
									Posted yesterday <a class="btn btn-primary pull-right">View</a>
								</h5>
							</div>

						</div>
						<div class="col-sm-12"
							style="padding-top: 2%; padding-bottom: 2%;">View More</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-2">
			<div class="col-sm-12" style="background-color: gray; height: 40em">
				<h3>Cross Promo Ads</h3>
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