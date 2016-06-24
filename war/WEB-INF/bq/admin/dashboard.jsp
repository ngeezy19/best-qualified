<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Best Qualified Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" href="/styles/font-awesome.min.css">
</head>
<body>
	<div class="container">
		<div class="row" style="margin-top: 2%; padding: 10%; text-align: center;">
			<div class="col-sm-3">
				<a class="text-muted" href="<c:url value='/bq/admin/new-job' />"><i class="fa fa-briefcase fa-5x" aria-hidden="true"></i></a>
				<h4><a class="text-muted" href="<c:url value='/bq/admin/new-job' />">Jobs</a></h4>
			</div>
			<div class="col-sm-3">
				<a class="text-muted" href="<c:url value='/bq/admin/article' />"><i class="fa fa-files-o fa-5x" aria-hidden="true"></i></a>
				<h4><a class="text-muted" href="<c:url value='/bq/admin/article' />">Articles</a></h4>
			</div>
			<div class="col-sm-3">
				<a class="text-muted" href="<c:url value='/bq/admin/users' />"><i class="fa fa-users fa-5x" aria-hidden="true"></i></a>
				<h4><a class="text-muted" href="<c:url value='/bq/admin/users' />">Users</a></h4>
			</div>
			<div class="col-sm-3">
				<a class="text-muted" href="<c:url value='/bq/admin/users' />"><i class="fa fa-user-md fa-5x" aria-hidden="true"></i></a>
				<h4><a class="text-muted" href="<c:url value='/bq/admin/users' />">Coach</a></h4>
			</div>
		</div>
		<div class="row" style="margin-top: 2%; padding: 10%; text-align: center;">
			<div class="col-sm-3">
				<a class="text-muted" href="<c:url value='/bq/admin/create-reading-list' />"><i class="fa fa-book fa-5x" aria-hidden="true"></i></a>
				<h4><a class="text-muted" href="<c:url value='/bq/admin/create-reading-list' />">Reading List</a></h4>
			</div>
		</div>
		
	</div>
</body>
</html>