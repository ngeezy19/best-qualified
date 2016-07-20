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

body,html {
	height: 100%;
}

body {
	padding: 0;
	margin: 0;
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

.wrapper {
	overflow: hidden;
}

section {
	
	-moz-transition: all 200ms ease-in;
	-webkit-transition: all 200ms ease-in;
	-o-transition: all 200ms ease-in;
	transition: all 200ms ease-in;
}

.divnav {
	
	position: fixed;
	top: 40;
	left: 0;
	width: 200px;
	height: 100%;
	margin: 0 0 0 -250px;
	-moz-transition: all 200ms ease-in;
	-webkit-transition: all 200ms ease-in;
	-o-transition: all 200ms ease-in;
	transition: all 200ms ease-in;
	margin-right:-100px;
}

.divnav ul {
	width: 250px;
	height: 100%;
	padding: 0;
	margin: 0;
	list-style: none;
	background: #365998;
	overflow: hidden;
}

.divnav li {
	margin: 0;
}

.divnav a {
	color: #fff;
	font-size: 1em;
	font-family: 'helvetica neue', helvetica, arial, sans-serif;
	text-decoration: none;
	display: block;
	padding: 12px 15px;
	font-weight: 300;
	letter-spacing: 2px;
	border-bottom: 1px solid #333;
}

.divnav a:hover {
	background: #111;
}

.hint {
	display: none;
}

.card-panel:hover .hint {
	display: block;
}

label {
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
	position: fixed;
	top: 65px;
	left: 0px;
	-moz-transition: all 200ms ease-in;
	-webkit-transition: all 200ms ease-in;
	-o-transition: all 200ms ease-in;
	transition: all 200ms ease-in;
	z-index: 500;
}

input[type="checkbox"] {
	display: none;
}

input[type="checkbox"]:checked ~ .divnav {
	margin: 0;
}

input[type="checkbox"]:checked ~ label {
	left: 260px;
}

input[type="checkbox"]:checked ~ section {
	-webkit-transform: translate3d(260px, 0, 0);
	-moz-transform: translate3d(260px, 0, 0);
	-o-transform: translate3d(260px, 0, 0);
	transform: translate3d(260px, 0, 0);
}

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


		<div class="wrapper">
			<input type="checkbox" id="navigation" /> <label for="navigation">
				&#9776;</label>


			<div class="divnav">
				<ul>
					<li><a href="#">HOME</a></li>
					<li><a href="#">COMMUNITIES</a></li>
					<li><a href="#">ARTICLES</a></li>
					<c:if test="${not empty user }">
						<li><a href="#">PROFILE</a></li>
					</c:if>
					<c:if test="${not empty user }">
						<li><a href="#">PEOPLE</a></li>
					</c:if>
					<li><a href="#">HELP</a></li>
				</ul>
			</div>

			<section style="width:70%; margin: 0 auto;">
				
				<h3 class= "headingstyle">Popular Communities</h3>
					<div class="row">
					
					
						<c:forEach var="item" items="${communityPageBean.communities}">
							<div class="col-sm-3">

								<div id="hint" class="card-panel">
									<div>
										<a href="#"> <img class=img-responsive src="${item.image}"></a>

									</div>
									<div>
										<a style="text-decoration: none;" href="#">
											<h3>
												<c:out value="${item.name}" />
											</h3>
										</a>
									</div>
									<hr class="style15">
									<div>
										<a style="text-decoration: none;" href="#">
											<p>${item.shortDesc}</p>
										</a>
									</div>
									<div>
										<a style="text-decoration: none;" href="#">
											<p>${fn:length(members)}members</p>
										</a>
									</div>
									<div class="">
										<a style="text-decoration: none;" href="#">JOIN</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="row">
						<h3 class= "headingstyle">Trending Posts</h3>
						<div class="col-sm-9">
							<c:forEach var="item" items="${communityPageBean.posts}">
								<div class="media card-panel">
									<a class="pull-left"
										href='<c:url value="bq/network/get-post?id=${item.webkey}" />'><img
										class="media-object img-rounded" src="${item.pictureUrl}"
										width="130" height="130"></a>
									<div class="media-body">
										<a
											href='<c:url value="bq/network/get-post?id=${item.webkey}" />'><h3
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
												href='<c:url value="bq/network/get-post?id=${item.webkey}" />'><i
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
	</div>



	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>

</body>
</html>