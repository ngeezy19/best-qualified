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
<br><br><br><br><br><br><br>
 <div class="row">
    <div class="container">
    <div class="col-md-12">
		<h3>USER SETTINGS</h3>
	</div>
	<br><br><br><br>
      <div class="col-md-12">
 

<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#home">Users</a></li>
  <li><a data-toggle="tab" href="#menu1">New User</a></li>
</ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
    <div class="col-md-8">
<table class="table table-striped">
  <thead>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Registered at</th>
      <th>Actions</th>
    </tr>
  </thead>
  <tbody>
      <tr>
        <td>1</td>
        <td>Ugo Chika</td>
        <td>04/06/2016 11:0345 UTC</td>
        <td>
          <a href="" style="color:red;"><span class="glyphicon glyphicon-trash"></span></a>
          <a href="" ><span class="glyphicon glyphicon-eye-open"></span></a>
        </td>
      </tr>
       <tr>
        <td>2</td>
        <td>Steve Banner</td>
        <td>04/06/2016 11:0345 UTC</td>
        <td>
          <a href="" style="color:red;"><span class="glyphicon glyphicon-trash"></span></a>
          <a href="" ><span class="glyphicon glyphicon-eye-open"></span></a>
        </td>
      </tr>
       <tr>
        <td>3</td>
        <td>Nonso Chukwudi Chika</td>
        <td>04/06/2016 11:0345 UTC</td>
        <td>
          <a href="" style="color:red;"><span class="glyphicon glyphicon-trash"></span></a>
          <a href="" ><span class="glyphicon glyphicon-eye-open"></span></a>
        </td>
      </tr>
  </tbody>
</table>
</div>
<div class="col-md-4">
	  <h4>Profile Summary</h4>
  		<div class="well">
  			<div class="media headlines">
                        <a class="pull-left" href="#"><img class="media-object img-rounded" src="/images/elyse.png" width="147" height="147"></a>
                        <div class="media-body">
                          <h4 class="media-heading"><strong>Bisi Oloye</strong></h4>
                          <h5 class="job"><b>Status:</b> Searching </h5>
                          <h5 class="job"><b>Age:</b> 26</h5>
                          <h5 class="job"><b>Location:</b> Lagos</h5>
                          <h5 class="job"><b>Experience Level:</b> Professional</h5>
                           <h5 class="job"><b>Phone no:</b> 09088736102</h5>
                          <h5 class="job"><b>Last Seen:</b> 36mins ago</h5>
                          <h5 class="job"><b><a href="#">view full profile</a></b></h5>
						       
                        </div>
                 </div>
		</div>
</div>
  </div>
  <div id="menu1" class="tab-pane fade">
    <div class="col-md-6">
	 	<form role="form">
  <div class="form-group">
    <label for="email">User Name:</label>
    <input type="email" class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd">
  </div>
  <div class="checkbox">
  		<p><b>User Role:</b></p>
	  	<label><input type="checkbox" value="">Author</label>
	  	<label><input type="checkbox" value="">Editor</label>
	  	<label><input type="checkbox" value="">Admin</label>
</div>
 
  <button type="submit" class="btn btn-default">Create</button>
</form>
</div>
  </div>
</div>
      </div>
      
    
    </div>
  </div>
  <script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>
</body>
</html>