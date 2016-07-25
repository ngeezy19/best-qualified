<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252">
<title>Best Qualified Community</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" href="/styles/main.css">
<link rel="stylesheet" href="/styles/waitMe.css">
<link rel="stylesheet" href="/styles/font-awesome.min.css">
<link rel="stylesheet" href="/styles/comi.css">
<style type="text/css">
.icons i {
	margin-right: 2%;
}

.icons {
	text-align: right;
}


body {
	
	background-color: #f9f5fb;
}

h1,p,li {
	font-family: 'helvetica neue', helvetica, arial, sans-serif;
	color: #222;
	margin: 0 0 1em;
}

section li {
	margin: 0 0 10px;
}

h1 {
	font-size: 2.5em;
	font-weight: 300;
}

p {
	font-size: 1em;
	line-height: 1.5em;
}

.divnav {
	height: 100%; /* 100% Full-height */
    width: 0; /* 0 width - change this with JavaScript */
    position: fixed; /* Stay in place */
    z-index: 1; /* Stay on top */
    top: 1;
    left: 0;
    background-color: #365998; /*not Black*/
    overflow-x: hidden; /* Disable horizontal scroll */
    padding-top: 60px; /* Place content 60px from the top */
    transition: 0.5s; /* 0.5 second transition effect to slide in the sidenav */
}

.divnav a {
	
	font-family: 'helvetica neue', helvetica, arial, sans-serif;
	
	padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s
}

.divnav a:hover {
	color: #f1f1f1;
}

.hint {
	display: none;
}

.card-panel:hover .hint {
	display: block;
}

.closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px !important;
    margin-left: 50px;
}
/* label {
	display: block;
	font-family: 'helvetica neue', helvetica, arial, sans-serif;
	font-weight: 700;
	background: #365998;
	width: 42px;
	height: 42px;
	line-height: 42px;
	color: #fff;
	text-align: center;
	font-size: 2em;
	line-height: 1.1em;
	top: 65px;
	left: 0px;
}	
*/

hr.style15 {
	border-top: 4px double #8c8b8b;
	text-align: center;
}

.headingstyle {
	background: #897aff;
	border-width: 1px;
	color: #fff;
	border-style: solid;  
	font-size: 16px;
    border-color: #897a90;
    padding: 5px 15px;
    margin-bottom: 20px;
}

hr.style15:after {
	content: '\002665';
	display: inline-block;
	position: relative;
	top: -15px;
	padding: 0 10px;
	background: #f0f0f0;
	color: #8c8b8b;
	font-size: 18px;
}
.lspan{
	display: block;
	font-family: 'helvetica neue', helvetica, arial, sans-serif;
	font-weight: 700;
	background: #365998;
	width: 42px;
	height: 42px;
	line-height: 42px;
	color: #fff;
	text-align: center;
	font-size: 2em;
	line-height: 1.1em;
	margin-left:-20px;
	top: 0px;
	left: 0px;
}

#main {
    transition: margin-left .5s;
    padding: 20px;
}

@media screen and (max-height: 450px) {
    .divnav {padding-top: 15px;}
    .divnav a {font-size: 18px;}
}

</style>
</head>

<body>
	<%@ include file="/main-nav.html"%>
	<br>
	<br>
	<div class="container-fluid">
		<div class="row">

			<br>

		</div>
	</div>
	
	<div class="container-fluid">


		<!-- div class="wrapper">
			<input type="checkbox" id="navigation" /> <label for="navigation">
				&#9776;&times;</label-->


			<div class="divnav" id = "mySidenav">
				
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&#9776;</a>
					<a href="/bq/general-community">HOME</a>
					<a href="/bq/community/comms">COMMUNITIES</a>
					<a href="/bq/community/article">ARTICLES</a>
					<c:if test="${not empty user }">
						<a href="#">PROFILE</a>
					</c:if>
					<c:if test="${not empty user }">
						<a href="#">MY NETWORK</a>
					</c:if>
					<a href="#">HELP</a>
			</div>
			
			<a href="#"><div class="lspan" onclick="openNav()">&#9776; </div></a>

			<section style="width:90%; margin: 0 auto;">
					<div class="row">
						<h3 class= "headingstyle" >Articles from the Community</h3>
						<div class="col-sm-9">
							<c:forEach var="item" items="${artPageBean.posts}">
								<div class="media card-panel" style="margin: auto; width: 100%">
									<a class="pull-left"
										href='<c:url value="/community?id=${item.webkey}" />'><img
										class="media-object img-rounded" src="${item.pictureUrl}"
										width="130" height="130"></a>
									<div class="media-body">
										<a
											href='<c:url value="/community?id=${item.webkey}" />'><h3
												class="media-heading" id="lol">${item.title}</h3></a>
										<p
											style="color: #983b59; font-family: calibri; letter-spacing: 3px">
											<span style="margin-left: 5px;"><i class="fa fa-user"></i>
												BEST-QUALIFIED</span> <span><i class="fa fa-clock-o"></i> <c:out
													value='${item.postDate}' /></span> <span><i
												class="fa fa-comments"></i><a> 0</a></span>
										</p>
										<p>
											${item.snippet}<span><a
												href='<c:url value="/community?id=${item.webkey}" />'><i
													class="fa fa-angle-double-right" aria-hidden="true"></i></a></span>
										</p>

										<p id="socialo">
											<span id="fb"> <a href=""><i
													class="fa fa-facebook-square" aria-hidden="true"
													style="color: #3b5998;"></i> Share</a></span> <span id="tw"><a
												href=""><i class="fa fa-twitter-square"
													aria-hidden="true" style="color: #00aced;"></i> Tweet</a></span> <span
												id="go"><a href=""><i
													class="fa fa-google-plus-square" aria-hidden="true"
													style="color: #F43222;"></i> Share</a></span>

										</p>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>

				
			</section>

		</div>

	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>

	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script type="text/javascript">
	function openNav() {
	    document.getElementById("mySidenav").style.width = "250px";
	    document.getElementById("main").style.marginLeft = "250px";
	}

	/* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
	function closeNav() {
	    document.getElementById("mySidenav").style.width = "0";
	    document.getElementById("main").style.marginLeft = "0";
	}
	</script>

</body>
</html>