<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252">
<title>${item.title}</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" href="/styles/main.css">
<link rel="stylesheet" href="/styles/waitMe.css">
<link rel="stylesheet" href="/styles/font-awesome.min.css">
<link rel="stylesheet" href="/styles/comi.css">

</head>
<body style="background-color: #edeff5">
	<%@ include file="/main-nav.html"%>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class=""></div>
			<div class="col-sm-offset-2 col-sm-8">
				<div class="card-panel" style="margin-bottom: 2%; width: 100%">
					<h3 class="text-primary" style="text-align: center" id="lol">${currentArticle.title}</h3>
					<div>
						<img
						class="media-object img-rounded" src="${currentArticle.pictureUrl}" style="width: 100%; margin: 0 auto">
					</div>
					
					<div>
						
						<p
							style="color: #983b59; font-family: calibri; letter-spacing: 3px; text-align: center; margin: 2%;">
							<span style="margin-left: 5px;"><i class="fa fa-user"></i>
								BEST-QUALIFIED</span> <span><i class="fa fa-clock-o"></i> <c:out
									value='${currentArticle.postDate}' /></span> <span><i
								class="fa fa-comments"></i><a> 0</a></span>
						</p>
						<p>
							${currentArticle.body}<span><a
								href='<c:url value="/community?id=${currentArticle.webkey}" />'></a></span>
						</p>

						<p id="socialo">
							<span id="fb"> <a href=""><i
									class="fa fa-facebook-square" aria-hidden="true"
									style="color: #3b5998;"></i> Share</a></span> <span id="tw"><a
								href=""><i class="fa fa-twitter-square" aria-hidden="true"
									style="color: #00aced;"></i> Tweet</a></span> <span id="go"><a
								href=""><i class="fa fa-google-plus-square"
									aria-hidden="true" style="color: #F43222;"></i> Share</a></span>

						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>

	</div>


	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>

	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
</body>
</html>