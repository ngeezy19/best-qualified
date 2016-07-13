
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Reading List</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" href="/styles/admin.css">
<link rel="stylesheet" href="/styles/jquery-ui.min.css">
<link rel="stylesheet" href="/styles/multiple-select.css">
</head>
<body>
<div class="container">
		<div class="row">
			<form
				action="<%=blobstoreService
					.createUploadUrl("/bq/admin/save-reading-list",options)%>"
				method="post" enctype="multipart/form-data">
				<div class="col-md-12">
					<h3>Create Reading List</h3>
				</div>
				<div class="col-md-8">
				

					<div class="form-group">
						<label for="title">Book Title:</label> <input class="form-control"
							name="title">
					</div>
					
					<div class="form-group">
						<label for="author">Author:</label> <input class="form-control"
							name="author">
					</div>
					
					<div class="form-group">
						<label for="publisher">Publisher:</label> <input class="form-control"
							name="publisher">
					</div>
					
					<div class="form-group">
						<label for="link">Link To Purchase:</label> <input class="form-control"
							name="link">
					</div>
					
					<div class="form-group">
						<label for="description">Description:</label>
						<textarea name="description" rows="10" class="form-control tiny"></textarea>
					</div>
					
					
						<div class="form-group">
							<input type="file" name="image" class="form-control">
							<i>Max size = 2MB</i>
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