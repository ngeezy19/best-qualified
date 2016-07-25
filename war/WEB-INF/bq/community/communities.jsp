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
				
				<h3 class= "headingstyle">All Communities</h3>
					<div class="row">
					
					
						<c:forEach var="item" items="${cpBean.communities}">
							<div class="col-sm-3">

								<div id="hint" class="card-panel">
									<div>
										<a href='<c:url value="/community?webkey=${item.webSafeKey}" />'> <img class=img-responsive src="${item.image}"></a>

									</div>
									<div>
										<a style="text-decoration: none;" href='<c:url value="/community?webkey=${item.webSafeKey}" />'>
											<h3>
												<c:out value="${item.name}" />
											</h3>
										</a>
									</div>
									<hr class="style15">
									<div>
										<a style="text-decoration: none;" href='<c:url value="/community?webkey=${item.webSafeKey}" />'>
											<p>${item.shortDesc}</p>
										</a>
									</div>
									<div>
										<a style="text-decoration: none;" href="#">
											<p>${fn:length(members)} members</p>
										</a>
									</div>
									<div class="">
										<a style="text-decoration: none;" href="#">JOIN</a>
									</div>
								</div>
							</div>
						</c:forEach>
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