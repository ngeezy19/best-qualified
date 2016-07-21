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
<title>Create Post</title>
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
				action="<%=blobstoreService.createUploadUrl("/bq/admin/create-post")%>"
				enctype="multipart/form-data">

				<div class="col-md-12">
					<h3>Create Post</h3>
				</div>

				<div class="col-md-8">


					<div class="form-group">
						<label for="community">Community</label> <select id="item" name="item">
							<c:forEach var="item" items="${getCommunity}">
								<option value="${item.key }">${item.value}</option>
							</c:forEach>

						</select>
					</div>


					<div class="form-group">
						<label for="long-desc">Body:</label>
						<textarea name="body" rows="10" class="form-control tiny"></textarea>
					</div>

					<div class="form-group">
						<input type="file" name="image" class="form-control"> <i>Max
							size = 2MB</i>
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
	<script type="text/javascript">
		
	</script>

</body>
</html>