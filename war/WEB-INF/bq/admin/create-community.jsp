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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Create Community</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" href="/styles/admin.css">
<link rel="stylesheet" href="/styles/jquery-ui.min.css">
<link rel="stylesheet" href="/styles/multiple-select.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<form method="post"
				action="<%=blobstoreService.createUploadUrl(
					"/bq/admin/create-community", options)%>"
				enctype="multipart/form-data">
				<c:choose>
					<c:when test="${not empty communitySuccess }">
						<div class="alert alert-success">${ communitySuccess }</div>
					</c:when>
					<c:when test="${not empty communityError }">
						<div class="alert alert-danger">${ communityError }</div>
					</c:when>
				</c:choose>

				<div class="col-md-12">
					<h3>Create Community</h3>
				</div>

				<div class="col-md-8">


					<div class="form-group">
						<label for="name">Name of Community:</label> <input
							class="form-control" name="name">
					</div>

					<div class="form-group">
						<label for="short-desc">Short Description:</label>
						<textarea name="short-desc" rows="3" class="form-control tiny"></textarea>
					</div>

					<div class="form-group">
						<label for="long-desc">Long Description:</label>
						<textarea name="long-desc" rows="10" class="form-control tiny"></textarea>
					</div>

					<div class="form-group">
						<label for="topics">Topics:</label> <input class="form-control"
							name="topics">
					</div>

					<div class="form-group">
						<input type="file" name="image" class="form-control"> <i>Max
							size = 2MB</i>
					</div>

					<div class="form-group">
						<input type="file" name="wallpaper" class="form-control">
						<i>Max size = 2MB</i>
					</div>

					<div>
						<input type="checkbox" name="public-private" value="true">
						Make community public<BR>
					</div>

					<button type="submit" class="btn btn-default">Enter</button>
				</div>
			</form>
		</div>
	</div>

	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script>
		tinymce.init({
			selector : '.tiny'
		});
	</script>

</body>
</html>