<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page
	import="com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService"%>
<%@ page import="com.google.appengine.api.blobstore.UploadOptions"%>

<%
	BlobstoreService blobstoreService = BlobstoreServiceFactory
			.getBlobstoreService();
	UploadOptions options = UploadOptions.Builder
			.withMaxUploadSizeBytesPerBlob(2 * 1024 * 1024)
			.maxUploadSizeBytes(2 * 1024 * 1024);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252">
<title>New Post</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" href="/styles/main.css">
<link rel="stylesheet" href="/styles/waitMe.css">
<link rel="stylesheet" href="/styles/font-awesome.min.css">
<link rel="stylesheet" href="/styles/comi.css">
<style>
.new-post-icon {
	width: 40px;
	height: 40px;
	border-radius: 50px;
	background-color: #c1899b;
	color: white;
	line-height: 40px;
	text-align: center;
	float: left;
	margin-right: 2%;
}
</style>
</head>
<%!String[] colors = {};%>

<body style="background-color: #edeff5">
	<%@ include file="/main-nav.html"%>
	<br>
	<br>


	<div class="container-fluid" style="margin-top: 0.8em;">
		<div class="row">
			<div class="col-sm-3">

				<div
					style="width: 300px; position: fixed; height: 100%; background-color: blue">
					<div class="row">
						<div class="col-sm-12 no-padding-div">
							<img src="${communityBean.image}" alt=""
								class="img img-responsive">
						</div>

					</div>
					<div class="row">
						<div class="col-sm-12 no-padding-div"
							style="background-color: #983b59; color: white; padding: 2%; text-align: center;">
							<h3 style="margin: 0px">${communityBean.name}</h3>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12"
							style="width: 100%; background-color: #59983b; color: white; padding: 2%; text-align: center;">${communityBean.shortDesc}</div>
					</div>
					<div class="row">
						<div class="col-sm-12"
							style="height: 800px; background-color: #d7ddea; padding: 3%;">
							<h3 style="color: #3b5998; text-align: center;">About</h3>
							<p>${communityBean.longDesc}</p>
						</div>
					</div>
				</div>

			</div>



			<div class="col-sm-9" style="margin-top: 1%;">

				<div class="row card-panel"
					style="width: 75%; margin: 0 auto; margin-top: 8%;">
					<div class="col-sm-12 no-padding-div">
						<div style="width: 10%; float: left; height: auto; margin: 1%;">
							<img alt="" src="/images/unknown-user.jpg"
								class="img img-responsive img-circle">
						</div>
						<h5
							style="float: left; margin: 0px; padding: 4%; padding-right: 0px">
							<c:out value='${user.firstName }' />
							<c:out value='${user.lastName }' />
							<i style="margin-left: 2%; margin-right: 2%;"
								class="fa fa-caret-right" aria-hidden="true"></i> <span
								style="color: green">${communityBean.name}</span>
						</h5>
						<div style="clear: left;"></div>
					</div>
					<form method="post" enctype="multipart/form-data"
						action="<%=blobstoreService.createUploadUrl("/bq/close/new-post", options)%>">
						<div class="col-sm-12 no-padding-div"
							style="padding-top: 5px; padding-bottom: 5px">

							<div class="form-group">
								<textarea rows="6" cols="" class="form-control" id="post-text"
									name="body" placeholder="What's on your mind?"></textarea>
							</div>
							<div class="form-group">
								<input type="hidden" name="webkey"
									value="${communityBean.webSafeKey}"> <label>Add
									an image</label> <input type="file" name="image" class="form-control">
							</div>

						</div>
						<div class="col-sm-12">
							<input type="submit" class="btn btn-success" value="POST">
						</div>
					</form>

				</div>
			</div>
		</div>

	</div>







	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>

	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>



</body>
</html>