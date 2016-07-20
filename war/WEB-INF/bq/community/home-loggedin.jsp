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

* { padding: 0; margin: 0; }
body { font-family: sans-serif; }
a { text-decoration: none; color: #00A5CC; }
li { list-style-type: none; }

header { 
	width: 100%; 
	height: 50px; 
	margin: auto;
	border-bottom: 1px solid #EEE;
}
#brand {
	
	line-height: 50px;
	color: #E5DAC0;
	font-size: 25px;
	font-weight: bolder;
   margin: 0 0 0 6px;
}
nav { width: 100%; text-align: center; }
nav a { 
	display: block; 
	padding: 15px 0;
	border-bottom: 1px solid #C3AA6E;
	color: #F0EADC;
}
nav a:hover { background: #E5DAC0; color: #FFF; }
nav li:last-child a { border-bottom: none; }

/*-----------------------------------------*/

.menu {
	width: 240px;
	height: 100%;
	position: absolute;
	background: #D9C9A3;
	left: -240px;
	transition: all .3s ease-in-out;
	-webkit-transition: all .3s ease-in-out;
	-moz-transition: all .3s ease-in-out;
	-ms-transition: all .3s ease-in-out;
	-o-transition: all .3s ease-in-out;
	
}
.menu-icon {
	padding: 10px 20px;
	background: #E5DAC0;
	color: #987D3E;
	cursor: pointer;
	float: left;
	margin: 6px 6px 0 0;
	border-radius: 5px;
}
#menuToggle { display: none; }

#menuToggle:checked ~ .menu { position: absolute; left: 0; }

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
	
	<input type="checkbox" id="menuToggle">
<label for="menuToggle" class="menu-icon">&#9776;</label>

<header>
<div id="brand">
<div class="col-sm-6 pull-right icons">
					<i class="fa fa-facebook" aria-hidden="true"></i><i
						class="fa fa-google-plus" aria-hidden="true"></i><i
						class="fa fa-twitter" aria-hidden="true"></i><i
						class="fa fa-linkedin" aria-hidden="true"></i>
				</div>
</div>
</header>

<nav class="menu">
	<ul >
    	<li><a href="#">HOME</a></li>
        <li><a href="#">COMMUNITIES</a></li>
        <li><a href="#">ARTICLES</a></li>
        <li><a href="#">PROFILE</a></li>
        <li><a href="#">PEOPLE</a></li>
        <li><a href="#">HELP</a></li>
    </ul>
</nav>
		
		</div>

	
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>

</body>
</html>