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
<link href="http://fonts.googleapis.com/css?family=Corben"
	rel="stylesheet" type="text/css">

<style type="text/css">
h3 {
	font-family: "Corben";
}
</style>
</head>

<body style="background-color: #edeff5">
	<%@ include file="/main-nav.html"%>
	<br>
	<br>
	<br>
	<div class="container-fluid">
		<section style="width: 80%; margin: 0 auto;">

			<h3 style="color: #792f47" >All Communities</h3>
			<div class="row">


				<c:forEach var="item" items="${cpBean.communities}">
					<div class="col-sm-3">

						<div id="hint" class="card">
							<a href='<c:url value="/community?webkey=${item.webSafeKey}" />'>
								<img style="width: 100%;" src="${item.image}">
							</a>

							<div class="card-container">
								<h4 style="text-align: center; height: 15pt">
									<a style="text-decoration: none;"
										href='<c:url value="/community?webkey=${item.webSafeKey}" />'>

										<c:out value="${item.name}" />

									</a>
								</h4>
								<p style="font-family: calibri; font-size: 10pt">${item.shortDesc}</p>
								<p style="color: #983b59">${fn:length(members)} members</p>
								<a
									style='text-decoration: none; color: #59983b; font-weight: bold; font-family: "Corben"'
									href='<c:url value="/bq/close/join-community?webkey=${item.webSafeKey}" />'>JOIN</a>
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