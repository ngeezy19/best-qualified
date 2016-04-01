<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>New Misc Properties</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" href="/styles/admin.css">
</head>
<body>
	<div class="container-fluid main-header">
		<h3>Best Qualified Dashboard</h3>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<div class="col-sm-12 module">
					<h4>Career Level</h4>
					<div id=""></div>
					<form action="">
						<div class="form-group">
							<label>Level Name:</label> <input type="text" name="career-level"
								class="form-control" />
						</div>
						<div class="form-group">
							<input type="submit" value="Save" class="btn btn-primary">
						</div>
					</form>
				</div>
				<div class="col-sm-12 module">
					<h4>Education Level</h4>
					<div id=""></div>
					<form action="">
						<div class="form-group">
							<label>Level:</label> <input type="text" name="education-level-name"
								class="form-control" />
						</div>
						<div class="form-group">
							<label>Abbreviation:</label> <input type="text" name="education-level-abbr"
								class="form-control" />
						</div>
						<div class="form-group">
							<input type="submit" value="Save" class="btn btn-primary">
						</div>
					</form>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="col-sm-12 module">
					<h4>Job Category</h4>
					<div id=""></div>
					<form action="">
						<div class="form-group">
							<label>Category Name:</label> <input type="text" name="job-category-name"
								class="form-control" />
						</div>
						<div class="form-group">
							<input type="submit" value="Save" class="btn btn-primary">
						</div>
					</form>
				</div>
				<div class="col-sm-12 module">
					<h4>Job Region</h4>
					<div id=""></div>
					<form action="">
						<div class="form-group">
							<label>State:</label> <input type="text" name="state"
								class="form-control" />
						</div>
						<div class="form-group">
							<label>Country:</label> <input type="text" name="country"
								class="form-control" />
						</div>
						<div class="form-group">
							<input type="submit" value="Save" class="btn btn-primary">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>