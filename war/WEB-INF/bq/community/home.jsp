<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252">
<title>Best Qualified</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" href="/styles/main.css">
<link rel="stylesheet" href="/styles/waitMe.css">
<link rel="stylesheet" href="/styles/style.css">
<link rel="stylesheet" href="/styles/font-awesome.min.css">
<link rel="stylesheet" href="/styles/bootflat.min.css">
<link rel="stylesheet" href="/styles/comi.css">
<style>
.features-div li {
	list-style: none;
}

.features-div {
	font-family: ProximaNova-Regular, Helvetica, Arial, sans-serif;
	color: #333;
	padding-top: 2%;
	padding-bottom: 2%;
}

.features-div h2 {
	padding-bottom: 2%;
}

.features-div ul {
	padding-left: 0px;
}

.features-div ul li {
	font-family: ProximaNova-Regular, Helvetica, Arial, sans-serif;
	color: #515151;
	font-size: 18px;
	line-height: 24px;
	list-style-position: outside;
	margin-bottom: 10px;
}

.features-div a {
	width: 10em;
	margin-top: 2%;
}

.features-div h4 {
	letter-spacing: 1.5px;
	font-size: 16px;
	color: #f67e33;
	font-family: ProximaNova-Regular, Helvetica, Arial, sans-serif;
	text-transform: uppercase;
}

.feature-img-div {
	padding-top: 2%;
	padding-bottom: 2%;
}

.alt-div-odd {
	background-color: rgb(240, 242, 245)
}

.col-centered {
	float: none;
	margin: 0 auto;
}

/*SHRINK*/
.shrink img {
	height: 100%;
	width: 100%;
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	-ms-transition: all 1s ease;
	transition: all 1s ease;
}

.shrink img:hover {
	width: 80%;
	height: 80%;
}

div.transbox {
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.3);
	border: 1px solid black;
}

div.transbox form {
	margin: 0 auto;
	margin-top: 2%;
	font-weight: bold;
	color: #000000;
	width: 90% !important;
}

div.transbox form input {
	font-weight: normal;
	margin-right: 0.75em;
	border: 1px solid black;
}

.index-first-header {
	text-align: center;
	font-family: ProximaNova-Regular, Helvetica, Arial, sans-serif;
	background-color: rgb(245, 247, 211);
	margin: 0 auto;
	padding: 30px 15px;
	color: black;
}

.index-first-header h1 strong {
	font-family: ProximaNova-Regular, Helvetica, Arial,
		sans-serif !important;
	margin-bottom: 0;
}

.index-first-header h2 {
	font-family: ProximaNova-Regular, Helvetica, Arial,
		sans-serif !important;
	margin-top: 0;
}

.footer-connect-with-us {
	box-sizing: border-box;
	max-width: 1280px;
	width: 100%;
	margin: 20px auto 0;
	padding: 0;
	display: block;
	list-style: none;
}

.sub-section-1 {
	margin: 0 30px;
	line-height: 3.125rem;
	border-top: 1px solid #eaeaea;
	color: #777;
	display: block;
	font-size: .9375rem;
	text-align: center;
}

.section-1-cta {
	outline: dotted thin;
	font-family: arial;
	font-weight: 400;
	background-color: #fff !important;
	color: #4990c7 !important;
	border: 1px solid #4990c7 !important;
	-webkit-transition: border-color 200ms ease-in, color 200ms ease-in;
	transition: border-color 200ms ease-in, color 200ms ease-in;
	font-size: 1em;
	font-weight: 400;
	display: block;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-o-box-sizing: border-box;
	-ms-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-moz-background-clip: padding;
	-webkit-background-clip: padding-box;
	text-align: center;
	vertical-align: middle;
	margin: 0 auto 20px;
	padding: 1%;
	white-space: nowrap;
	cursor: pointer;
	width: 100%;
	max-width: 320px;
	text-decoration: none;
}

.quick-search-list li {
	display: inline;
	padding: 2%;
}

.quick-search-list li a {
	color: white;
}

body {
	overflow-x: hidden;
}
</style>

</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top"
		style="background: #3BAFDA; border-bottom-color: #4FC1E9">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" style="color: white" href="#">Best
					Qualified</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#"><span
							class="glyphicon glyphicon-home" style="color: white;"></span></a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Get Hired<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Jobs Search</a></li>
							<li><a href="#">Browse Jobs</a></li>
							<li><a href="#">Advanced Search</a></li>
							<li><a href="#">Saved Jobs</a></li>
							<li><a href="#">Apply History</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle" href="#"
						data-toggle="dropdown">Training<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Free Courses</a></li>
							<li><a href="#">Coporate Training</a></li>
							<li><a href="#">Workshops</a></li>
							<li><a href="#">Professional Associations</a></li>
							<li><a href="#">Sales &amp; Marketing Certifications</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle" href="#"
						data-toggle="dropdown">Career Advice<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Career Blog</a></li>
							<li><a href="#">Career Guide</a></li>
							<li><a href="#">Find a Coach/Mentor</a></li>
							<li><a href="#">Assessments</a></li>
						</ul></li>
					<li><a href="#">Community</a></li>
				</ul>



				<ul class="nav navbar-nav navbar-right">
					<li><a href="http://best-qualified.appspot.com/sign-up"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="http://best-qualified.appspot.com/sign-in"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>


			</div>
		</div>
	</nav>





	<div class="content hide popover-content" id="popover-content">
		<ul style="padding: none !important">
			<li style="list-style: none;"><a
				href="http://best-qualified.appspot.com/bq/closed/init-dashboard">Dashboard</a></li>
			<li style="list-style: none;"><a
				href="http://best-qualified.appspot.com/bq/closed/init-professional-profile">Profile</a></li>
			<li style="list-style: none;"><a
				href="http://best-qualified.appspot.com/bq/close/new-project">New
					Project</a></li>
			<li style="list-style: none;"><a
				href="http://best-qualified.appspot.com/logout">Logout</a></li>
		</ul>
	</div>



	<br>
	<br>


	<!-- carousel -->
	<div id="my_carousel" class="carousel fade" data-ride="carousel">
		<!-- methods: data-interval="3000" // seconds between transitions; set to "0" to make it not automatic
					  data-pause="false" // "hover" is the default
					  data-wrap="false" // "true" is the default
		-->

		<!-- indicators -->
		<!-- <ol class="carousel-indicators">-->
		<!-- .active makes that carousel image the first to be shown in the rotation -->
		<!-- data-target referrs to id of carousel; data-slide-to referrs to slide number in array starting with 0 -->
		<!--	<li data-target="#my_carousel" data-slide-to="0" class="active"></li>
				<li data-target="#my_carousel" data-slide-to="1" class=""></li>
				<li data-target="#my_carousel" data-slide-to="2" class=""></li>
			</ol>
			-->

		<!-- carousel images -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="/images/bq-slide-1.jpg" alt="carousel_image_4">
			</div>
			<div class="item">
				<img src="/images/bq-slide-2.jpg" alt="carousel_image_2">
			</div>
			<div class="item">
				<img src="/images/bq-slide-3.jpg" alt="carousel_image_1">
			</div>

		</div>

		<!-- side buttons -->
		<!-- href referrs to the id of the carousel -->
		<a class="left carousel-control" href="#my_carousel" role="button"
			data-slide="prev"> <!--<span class="glyphicon glyphicon-chevron-left"></span> -->
		</a> <a class="right carousel-control" href="#my_carousel" role="button"
			data-slide="next"> <!--<span class="glyphicon glyphicon-chevron-right"></span>-->
		</a>

	</div>
	<!-- end .carousel -->
	
	<br /><br /><br />

	<div class="container">
	<div class="row" style="">
		<div class="col-md-9" id="blogodo">
		
         <div class="media">
                <a class="pull-left" href="#"><img class="media-object img-rounded" src="images/am.png" width="320" height="214"></a>
                    <div class="media-body">
                      <h3 class="media-heading" id="lol">COMMUNITY</h3>
                   
                      <p style="text-align:justify;">The BQ community provides many ways for you to connect with a world of Sales & Marketing experts. Whether it is through membership, national events or the BQ social media channels. The BQ brings Sales & Marketing professionals together to build networks, relationships and solve market place challenges.</p>
                    </div>
            </div>
				<br><br>
            <div>
            <h3>Connect Through Membership List </h3>
            	<table class="table table-striped">
    <thead>
      <tr>
        <th>AMA</th>
        <th>NIMN</th>
        <th>LIPSR</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><b>APCON</td></b>
        <td><b>WISCAR</td></b>
        <td><b>FSED</td></b>
      </tr>
      <tr>
        <td><b>CIM</td></b>
        <td><b>NIPR</td></b>
        <td><b>CIPR</td></b>
      </tr>
      <tr>
        <td><b>CMMP</td></b>
        <td><b>CIPS</td></b>
        <td><b>CAS</td></b>
      </tr>
      <tr>
        <td><b>SMC</td></b>
        <td><b>GAP/GAIQ</td></b>
        <td><b>CMI</td></b>
      </tr>
      <tr>
        <td><b>SCRUM</td></b>
        <td><b>HUBSPOT</td></b>
        <td><b>DMI</td></b>
      </tr>
    </tbody>
  </table>
            </div>
           <br>


            <div style="background-image: url('img/comi/3.png');">
            	<h3>Top Contributors</h3>
            	<div class="row">

            		<div class="col-md-4">
		            		<div class="media">
		                     <a href="#"><img class="media-object img-circle pull-left" src="images/46.jpg" width="130" height="130"></a>
			                    <div class="media-body">
			                    <br><br>
			                      <h5 class="media-heading  pull-left">Delight Chika</h5>
			                      <p class="pull-left">Top Content Writer</p>
			                    </div>
	            			</div>
            		</div>
            		<div class="col-md-4">
            			<div class="media">
		                   <a href="#"><img class="media-object img-circle pull-left" src="images/73.jpg" width="130" height="130"></a>
			                    <div class="media-body">
			                    <br><br>
			                      <h5 class="media-heading  pull-left">Ugo Chukwudi</h5>
			                      <p class="pull-left">Fastest Reply</p>
			                    </div>
	            			</div>
            		</div>
            		<div class="col-md-4">
            			<div class="media">
		                     <a href="#"><img class="media-object img-circle pull-left" src="images/3.jpg" width="130" height="130"></a>
			                    <div class="media-body">
			                    <br><br>
			                      <h5 class="media-heading  pull-left">Stephen Dappa</h5>
			                      <p class=" pull-left">Number 1 Rookie</p>
			                    </div>
	            			</div>
            		</div>

            	</div>
            </div>

            
		</div>
		<div class="col-md-3">
			<div class="well soweto" style="background: rgba(78,189,163,0.13); padding:20px;">
			 <h3 class="media-heading" id="lols">Which company has the best work enviroment</h3>
			
					
				<div class="checkbox">
	  				<label><input type="checkbox" value="">First Bank Nigeria</label>
				</div>
				<div class="checkbox">
	  				<label><input type="checkbox" value="">Zenith</label>
				</div>
				<div class="checkbox">
	  				<label><input type="checkbox" value="">Workforce</label>
				</div>
				<div class="checkbox">
	  				<label><input type="checkbox" value="">Mtn Nigeria</label>
				</div>
				<div class="checkbox">
	  				<label><input type="checkbox" value="">Cheveron</label>
				</div>

	  				<button class="btn btn-info">
	  					Vote
	  				</button>              
            </div>

            <div class="well">
            	<form role="form">
  <div class="form-group">
  <p>Member Log In |</p>
    <input type="email" class="form-control" id="email" placeholder="email">
  </div>
  <div class="form-group">
    <input type="password" class="form-control" id="pwd" placeholder="password">
  </div>

  <button type="submit" class="btn btn-default">Submit</button>
</form>
            </div>

			<div class="well">
				            <a class="twitter-timeline"  href="https://twitter.com/FRANKDUPR33" data-widget-id="554987493125554176">Tweets by @BestQualified</a>
            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
          
			</div>

				
			</div>
		</div>
	</div>
</div>
	<br>
	<br>










	<br>
	<br>
	<br>






































	<div class="container-fluid" id="footer-div">
		<div class="row">
			<div class="col-sm-12" id="footer-main-div">
				<div class="col-sm-3">
					<div>
						<img alt="Best Qualified" src="/images/bq-logo.png"
							class="img img-responsive">
					</div>
					<p style="color: white">We are the first career website
						dedicated exclusively to sales and marketing professionals in
						Africa. We match sales professionals with employers and sales
						recruiters throughout Africa.</p>
				</div>
				<div class="col-sm-3">
					<h4>Quick Links</h4>
					<ul style="color: white">
						<li>Certifications</li>
						<li>Coaching</li>
						<li>Community</li>
						<li>Jobs</li>
						<li>Professional Associations</li>
						<li>Training</li>
					</ul>
				</div>
				<div class="col-sm-3">
					<h4>Lorem ipsum dolor</h4>
					<ul>
						<li>Fusce vitae rutrum</li>
						<li>menaeos etiam sagittis</li>
						<li>a massa dolor leo augue</li>
						<li>justo ad risus id orci in euismod</li>
						<li>a massa dolor leo augue</li>
					</ul>
				</div>
				<div class="col-sm-3">
					<div id="mailing-list-div" style="text-align: center">
						<h4 class="glyphicon glyphicon-envelope"
							style="padding-right: 3%; padding-bottom: 0; margin-bottom: 0; margin-top: 0px; color: white;"></h4>
						<small class=""
							style="font-size: 14pt; font-weight: bold; color: white">
							Subscribe</small>
						<div>
							<p style="text-align: left; color: white">Subscribe to our
								newsletter to get the latest updates right to your inbox.</p>
						</div>
						<div id="mailing-list-msg-div"></div>
						<form id="newsletter-subscribe-form">
							<div class="form-group">
								<input id="mailing-list-email" name="email"
									placeholder="EMAIL ADDRESS" class="form-control" type="email">
							</div>
						</form>
						<div class="form-group">
							<input id="add-mailing-list" value="SIGN ME UP"
								class="form-control btn btn-warning" type="button">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row" id="footer-base">
			<div class="col-sm-12 col-md-9">
				<p>© 2016 BEST QUALIFIED - ALL RIGHTS RESERVED</p>
			</div>
			<div class="col-sm-12 col-md-3">
				<ul class="footer-connect-with-us">
					<li><img alt="" src="/images/facebook.png"></li>
					<li><img alt="" src="/images/twitter.png"></li>
					<li><img alt="" src="/images/googleplus.png"></li>
					<li><img alt="" src="/images/linkedin.png"></li>
				</ul>
			</div>
		</div>
	</div>


	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>



</body>
</html>