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
<title>Best Qualified Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" href="/styles/admin.css">
<link rel="stylesheet" href="/styles/jquery-ui.min.css">
<link rel="stylesheet" href="/styles/multiple-select.css">

</head>
<body>
	<br>
	<br>
	<br>

	<div class="container">
		<div class="row">
			<form
				action="<%=blobstoreService
					.createUploadUrl("/bq/admin/create-article",options)%>"
				method="post" enctype="multipart/form-data">
				<div class="col-md-12">
					<h3>Create New Article</h3>
				</div>
				<div class="col-md-8">

					<div class="form-group">
						<label for="title">Title:</label> <input class="form-control"
							name="title">
					</div>
					<div class="form-group">
						<label for="post">Post:</label>
						<textarea name="post" rows="10" class="form-control tiny"></textarea>
					</div>
					<button type="submit" class="btn btn-default">Publish</button>

				</div>

				<div class="col-md-4">
					<h4>Categories</h4>
					<div class="well">
						<div class="checkbox">
							<label><input type="checkbox" name="category"
								value="SALES">Sales</label>
						</div>
						<div class="checkbox">
							<label><input type="checkbox" name="category"
								value="MARKETING">Marketing</label>
						</div>
						<div class="checkbox">
							<label><input type="checkbox" name="category"
								value="PUBLIC_RELATIONS">Public Relations</label>
						</div>
						<div class="checkbox">
							<label><input type="checkbox" name="category"
								value="ADVERTISING">Advertising</label>
						</div>
						<div class="checkbox">
							<label><input type="checkbox" name="category"
								value="CREATIVES">Creatives</label>
						</div>
					</div>
					<h4>Featured Image</h4>
					<div class="well">
						<div class="form-group">
							<input type="file" name="image" class="form-control">
							<i>Max size = 2MB</i>
						</div>
					</div>
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