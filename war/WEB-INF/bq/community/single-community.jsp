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
<style>
.new-post-icon {
	width: 40px;
	height: 40px;
	border-radius: 50px;
	background-color: #c1899b;
	color: white;
	line-height: 40px;
	text-align: center;
	float: left;
	margin-right: 2%;
}
</style>
</head>
<%!String[] colors = {};%>

<body style="background-color: #edeff5">
	<%@ include file="/main-nav.html"%>
	<br>
	<br>


	<div class="container-fluid" style="margin-top: 0.8em;">
		<div class="row">
			<div class="col-sm-3">

				<div
					style="width: 300px; position: fixed; height: 100%; background-color: blue">
					<div class="row">
						<div class="col-sm-12 no-padding-div">
							<img src="${communityBean.image}" alt=""
								class="img img-responsive">
						</div>

					</div>
					<div class="row">
						<div class="col-sm-12 no-padding-div"
							style="background-color: #983b59; color: white; padding: 2%; text-align: center;">
							<h3 style="margin: 0px">${communityBean.name}</h3>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12"
							style="width: 100%; background-color: #59983b; color: white; padding: 2%; text-align: center;">${communityBean.shortDesc}</div>
					</div>
					<div class="row">
						<div class="col-sm-12"
							style="height: 800px; background-color: #d7ddea; padding: 3%;">
							<h3 style="color: #3b5998; text-align: center;">About</h3>
							<p>${communityBean.longDesc}</p>
						</div>
					</div>
				</div>

			</div>



			<div class="col-sm-9" style="margin-top: 1%;">

				<div class="row"
					style="width: 85%; margin-left: 5%; margin-right: 5%">
					<div class="col-sm-6">
						<c:forEach var="item" items="${communityBean.post}" step="2">
							<div class="card">
								<div class="card-container">
									<h4>${item.author}<i style="color: #983b59"
											class="pull-right">${item.postDate}</i>
									</h4>
								</div>
								<img src="${item.pictureUrl}" alt=""
									style="width: 100%; border-radius: 0px">

								<div class="card-container">
									<p>${item.snippet}</p>
									<hr style="margin-bottom: 0px" />
									<div style="color: #59983b; font-size: 2rem">
										<span class="pull-right"><span class="nComment">${fn:length(nComments)}</span></span><i
											style="margin-right: 5px; cursor: pointer;"
											class="fa fa-comment-o pull-right make-comment"
											aria-hidden="true"></i> <i class="fa fa-thumbs-o-up"
											style="margin-right: 5px; cursor: pointer;"
											aria-hidden="true"></i> ${fn:length(likes)} <i
											style="margin-right: 5px; cursor: pointer;"
											class="fa fa-share-alt" aria-hidden="true"></i>
										${fn:length(shares)}
									</div>

								</div>
								<div class="card-container comment-div"
									style="background-color: #f4ebee; padding-top: 4px; display: none">

									<div class="form-group">
										<form class="comment-form">
											<input type="hidden" value="${item.webkey}" name="webkey" />
											<textarea name="comment" rows="2"
												class="form-control comment-area"></textarea>
										</form>
									</div>
									<div class="form-group">
										<button class="btn btn-primary add-comment-btn">Add
											Comment</button>
									</div>
								</div>


							</div>
						</c:forEach>
					</div>
					<div class="col-sm-6">
						<c:forEach var="item" items="${communityBean.post}" begin="1"
							step="2">
							<div class="card">
								<div class="card-container">
									<h4>${item.author}<i style="color: #983b59"
											class="pull-right">${item.postDate}</i>
									</h4>
								</div>
								<img src="${item.pictureUrl}" alt=""
									style="width: 100%; border-radius: 0px">

								<div class="card-container">
									<p>${item.snippet}</p>
									<hr style="margin-bottom: 0px" />
									<div style="color: #59983b; font-size: 2rem">
										<span class="pull-right"><span class="nComment">${fn:length(nComments)}</span></span><i
											style="margin-right: 5px; cursor: pointer;"
											class="fa fa-comment-o pull-right make-comment"
											aria-hidden="true"></i> <i class="fa fa-thumbs-o-up"
											style="margin-right: 5px; cursor: pointer;"
											aria-hidden="true"></i> ${fn:length(likes)} <i
											style="margin-right: 5px; cursor: pointer;"
											class="fa fa-share-alt" aria-hidden="true"></i>
										${fn:length(shares)}
									</div>

								</div>
								<div class="card-container comment-div"
									style="background-color: #f4ebee; padding-top: 4px; display: none">

									<div class="form-group">
										<form class="comment-form">
											<input type="hidden" value="${item.webkey}" name="webkey" />
											<textarea name="comment" rows="2"
												class="form-control comment-area"></textarea>
										</form>
									</div>
									<div class="form-group">
										<button class="btn btn-primary add-comment-btn">Add
											Comment</button>
									</div>
								</div>


							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>

	</div>


	<c:if test="${not empty user}">
		<div id="new-post-btn" class="fixed-action-btn"
			style="bottom: 45px; right: 24px;">
			<a href="<c:url value='/bq/close/community/post/new'/>"
				class="btn-floating btn-large red"> <i class="fa fa-pencil"
				aria-hidden="true"></i>
			</a>
		</div>
	</c:if>

	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>

	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".make-comment").click(function() {
				var par = $(this).closest(".card");
				par.find(".comment-div").slideToggle();
			});

			$(".add-comment-btn").click(function() {
				var x = $(this).closest(".comment-div");
				var form = x.find(".comment-form");
				var span = $(this).closest(".card").find(".nComment");
				var cDiv = $(this).closest(".card").find(".comment-div");
				var area = cDiv.find(".comment-area");
				$.ajax({
					url : "/bq/close/community/comment/add",
					method : "POST",
					data : form.serialize(),
					dataType : "json",
					success : function(data) {
						span.text(data);
						cDiv.slideUp();
						area.text("");
					},
					error : function(xhr) {
						if (xhr.status == "200") {
							console.log(xhr.responseText);

						}
					}
				});
			});
		});
	</script>
</body>
</html>