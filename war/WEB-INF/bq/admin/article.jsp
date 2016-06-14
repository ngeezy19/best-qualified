<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
<br><br><br><br><br><br><br><br><br><br>
 <div class="row">
    <div class="container">
    <div class="col-md-12">
		<h3>Create New Article</h3>
	</div>
      <div class="col-md-8">
    <form role="form">
  <div class="form-group">
    <label for="title">Title:</label>
    <input type="title" class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="post">Post:</label>
    <textarea name="post" id="" cols="30" rows="10" class="form-control tiny" ></textarea>
  </div>
  <button type="submit" class="btn btn-default">Publish</button>
</form>
      </div>
      
      <div class="col-md-4">
      <h4>Categories</h4>
  		<div class="well">
  			<div class="checkbox">
	  			<label><input type="checkbox" value="">Sales</label>
			</div>
			<div class="checkbox">
	  			<label><input type="checkbox" value="">Marketing</label>
			</div>
			<div class="checkbox">
	  			<label><input type="checkbox" value="">Workforce</label>
			</div>
			<div class="checkbox">
	  			<label><input type="checkbox" value="">Recruitment</label>
			</div>
		</div>
	   </div>
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