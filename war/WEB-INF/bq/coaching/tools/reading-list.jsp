<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reading List</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/styles/jquery.webui-popover.min.css">
<link rel="stylesheet" href="/styles/main.css">
<link rel="stylesheet" href="/styles/animate.css">
<link rel="stylesheet" href="/styles/coaching.css">
<link rel="stylesheet" href="/styles/font-awesome.min.css">
<link href="http://fonts.googleapis.com/css?family=Corben"
	rel="stylesheet" type="text/css">
<style type="text/css">
.radial {
	background: #fafafa; /* For browsers that do not support gradients */
	background: -webkit-radial-gradient(#fff, #fcfcfc, #fafafa);
	/* Safari 5.1 to 6.0 */
	background: -o-radial-gradient(#fff, #fcfcfc, #fafafa);
	/* For Opera 11.6 to 12.0 */
	background: -moz-radial-gradient(#fff, #fcfcfc, #fafafa);
	/* For Firefox 3.6 to 15 */
	background: radial-gradient(#fff, #fcfcfc, #fafafa);
	/* Standard syntax */
}

.a-icon-cart {
	left: 2px;
	top: 2px;
	position: absolute;
	height: 25px;
	width: 25px;
	background-position: -35px -5px;
	background-image: url(../images/amzn-sprite.png);
	background-repeat: no-repeat;
	background-size: 400px 600px;
	-webkit-background-size: 400px 600px;
	display: inline-block;
	vertical-align: top;
}

.a-icon-shop-now {
	left: 2px;
	top: 2px;
	position: absolute;
	height: 25px;
	width: 25px;
	background: 0 0;
	display: inline-block;
	vertical-align: top;
}

.a-button {
	background: #d8dde6;
	display: block;
	padding: 0;
	vertical-align: middle;
	height: 31px;
	*height: 29px;
	border: 1px solid;
	border-color: #bcc1c8 #bababa #adb2bb;
	text-align: center;
	overflow: hidden;
	text-decoration: none !important;
	cursor: pointer;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	width: 100%;
	max-width: 130px;
	box-sizing: border-box;
	margin-top: 11px;
}

.a-button-text {
	position: relative;
	z-index: 10;
	color: #111;
	font-size: 12px;
	text-align: center;
	line-height: 29px;
	display: block;
	font-family: Arial, sans-serif;
	white-space: nowrap;
	background-color: transparent;
	margin: 0;
	border: 0;
	outline: 0;
	padding: 0 2px 0 29px;
}

.a-button-text.centered {
	padding: 0 2px;
}

.a-button-input {
	position: absolute;
	z-index: 20;
	height: 100%;
	width: 100%;
	left: 0;
	top: 0;
	background-color: #fff;
	outline: 0;
	border: 0;
	overflow: visible;
	cursor: pointer;
	opacity: .01;
	filter: alpha(opacity = 1);
}

.a-button-primary {
	border-color: #cba957 #bf942a #aa8326;
	background: #f0c14b;
}

.a-button-primary:active {
	border-color: #aa8326 #bf942a #bf942a;
}

.a-button-primary:hover {
	border-color: #c59f43 #aa8326 #957321;
}

.a-button-primary:focus {
	outline: 0;
	border-color: #e47911;
	-webkit-box-shadow: 0 0 3px rgba(228, 121, 17, .5);
	-moz-box-shadow: 0 0 3px rgba(228, 121, 17, .5);
	box-shadow: 0 0 3px rgba(228, 121, 17, .5);
}

.a-button-inner {
	position: relative;
	height: 100%;
	overflow: hidden;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	text-align: center;
	cursor: pointer;
	display: block;
}

.a-button-primary .a-button-inner {
	-webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, .4) inset;
	-moz-box-shadow: 0 1px 0 rgba(255, 255, 255, .4) inset;
	box-shadow: 0 1px 0 rgba(255, 255, 255, .4) inset;
	background-color: #f7dfa5;
	background: -webkit-gradient(linear, left top, left bottom, from(#f7dfa5),
		to(#f0c14b));
	background: -webkit-linear-gradient(top, #f7dfa5, #f0c14b);
	background: -moz-linear-gradient(top, #f7dfa5, #f0c14b);
	background: -ms-linear-gradient(top, #f7dfa5, #f0c14b);
	background: -o-linear-gradient(top, #f7dfa5, #f0c14b);
	background: #f3d078;
}

.lt-ie9 .a-button-primary .a-button-inner {
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff7dfa5',
		endColorstr='#fff0c14b', GradientType=0);
}

.a-button-primary:active .a-button-inner {
	-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, .2) inset;
	-moz-box-shadow: 0 1px 3px rgba(0, 0, 0, .2) inset;
	box-shadow: 0 1px 3px rgba(0, 0, 0, .2) inset;
	background-color: #f0c14b;
	background-image: none;
}

.lt-ie9 .a-button-primary:active .a-button-inner {
	filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
}

.a-button-primary:hover .a-button-inner {
	background-color: #f5d78e;
	background: -webkit-gradient(linear, left top, left bottom, from(#f5d78e),
		to(#eeb933));
	background: -webkit-linear-gradient(top, #f5d78e, #eeb933);
	background: -moz-linear-gradient(top, #f5d78e, #eeb933);
	background: -ms-linear-gradient(top, #f5d78e, #eeb933);
	background: -o-linear-gradient(top, #f5d78e, #eeb933);
	background: #f1c860;
}

.lt-ie9 .a-button-primary:hover .a-button-inner {
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff5d78e',
		endColorstr='#ffeeb933', GradientType=0);
}

.selected {
	border: 1px dotted gray;
	background-color: #59983b;;
}

.selected a {
	color: white !important
}

.selected-1 {
	border: 1px dotted gray;
	background-color: #983b59;
}

.selected-1 a {
	color: white !important
}

.fixed-nav {
	position: fixed;
	top: 50;
}
</style>
</head>
<body style="background-color: #fff">
	<%@ include file="/main-nav.html"%>
	<br />
	<div class="container-fluid banner-grad">
		<br />
		<div class="row">
			<div class="col-sm-7" style="text-align: center;">

				<h1
					style="color: #013143; font-family: roboto; margin-top: 10%; font-size: 32pt">
					<span class="span-1">Ten Top<span class="span-2"
						style="padding-left: 1%;">Must Read books </span>for this month.
					</span>
				</h1>

			</div>
			<div class="col-sm-5">
				<div>
					<img alt="" src="/images/sales-professional.png"
						class="img img-responsive">
				</div>
			</div>
			<div class="col-sm-12"
				style="font-weight: bold; padding: 4px; background-color: #899bc1; color: white">
				<div class="col-sm-8"></div>
				<div class="col-sm-4 pull-right icons">
					<i class="fa fa-facebook" aria-hidden="true"></i><i
						class="fa fa-google-plus" aria-hidden="true"></i><i
						class="fa fa-twitter" aria-hidden="true"></i><i
						class="fa fa-linkedin" aria-hidden="true"></i>
				</div>
			</div>
		</div>
	</div>

	<div class="container" style="margin-top: 2%; margin-bottom: 4%;">
		<div class="row">
			<div class="col-sm-3">
				<div id="sidenav">
					<div class="row">
						<div class="col-sm-12">
							<h4>Browse By Categories</h4>
						</div>
					</div>
					<div
						<c:choose><c:when test='${nodeId eq "2698" }'>class="row selected"</c:when><c:otherwise>class="row"</c:otherwise></c:choose>>
						<div class="col-sm-12">
							<h5 class="">
								<a href="/bq/coaching/tools/get-reading-list?node-id=2698">All
									Categories</a>
							</h5>
						</div>
					</div>
					<div
						<c:choose><c:when test='${nodeId eq "2699"}'>class="row selected"</c:when><c:otherwise>class="row"</c:otherwise></c:choose>>
						<div class="col-sm-12">
							<h5>
								<a href="/bq/coaching/tools/get-reading-list?node-id=2699">Advertising</a>
							</h5>
						</div>
					</div>
					<div
						<c:choose><c:when test='${nodeId eq "2700"}'>class="row selected"</c:when><c:otherwise>class="row"</c:otherwise></c:choose>>
						<div class="col-sm-12">
							<h5>
								<a href="/bq/coaching/tools/get-reading-list?node-id=2700">Consumer
									Behavoir</a>
							</h5>
						</div>
					</div>
					<div
						<c:choose><c:when test='${nodeId eq "2653"}'>class="row selected"</c:when><c:otherwise>class="row"</c:otherwise></c:choose>>
						<div class="col-sm-12">
							<h5>
								<a href="/bq/coaching/tools/get-reading-list?node-id=2653">Customer
									Service</a>
							</h5>
						</div>
					</div>
					<div
						<c:choose><c:when test='${nodeId eq "2702"}'>class="row selected"</c:when><c:otherwise>class="row"</c:otherwise></c:choose>>
						<div class="col-sm-12">
							<h5>
								<a href="/bq/coaching/tools/get-reading-list?node-id=2702">Marketing</a>
							</h5>
						</div>
					</div>
					<div
						<c:choose><c:when test='${nodeId eq "2711"}'>class="row selected"</c:when><c:otherwise>class="row"</c:otherwise></c:choose>>
						<div class="col-sm-12">
							<h5>
								<a href="/bq/coaching/tools/get-reading-list?node-id=2711">Public
									Relations</a>
							</h5>
						</div>
					</div>
					<div
						<c:choose><c:when test='${nodeId eq "2712"}'>class="row selected"</c:when><c:otherwise>class="row"</c:otherwise></c:choose>>
						<div class="col-sm-12">
							<h5>
								<a href="/bq/coaching/tools/get-reading-list?node-id=2712">Sales
									& Selling</a>
							</h5>
						</div>
					</div>
					<div
						<c:choose><c:when test='${nodeId eq "6133991011"}'>class="row selected"</c:when><c:otherwise>class="row"</c:otherwise></c:choose>>
						<div class="col-sm-12">
							<h5>
								<a href="/bq/coaching/tools/get-reading-list?node-id=6133991011">Search
									Engine Optimization</a>
							</h5>
						</div>
					</div>
					<hr />
					<div class="row">
						<div class="col-sm-12">
							<h4>Sort By</h4>
						</div>
					</div>
					<div
						<c:choose><c:when test='${sort eq "salesrank"}'>class="row selected-1"</c:when><c:otherwise>class="row"</c:otherwise></c:choose>>
						<div class="col-sm-12">
							<h5>
								<a href="/bq/coaching/tools/get-reading-list?sort=salesrank">Best
									Selling</a>
							</h5>
						</div>
					</div>
					<div
						<c:choose><c:when test='${sort eq "reviewrank"}'>class="row selected-1"</c:when><c:otherwise>class="row"</c:otherwise></c:choose>>
						<div class="col-sm-12">
							<h5>
								<a href="/bq/coaching/tools/get-reading-list?sort=reviewrank">Most
									Reviewed</a>
							</h5>
						</div>
					</div>
					<div
						<c:choose><c:when test='${sort eq "daterank"}'>class="row selected-1"</c:when><c:otherwise>class="row"</c:otherwise></c:choose>>
						<div class="col-sm-12">
							<h5>
								<a href="/bq/coaching/tools/get-reading-list?sort=daterank">Publication
									Date</a>
							</h5>
						</div>
					</div>
					<div
						<c:choose><c:when test='${sort eq "titlerank"}'>class="row selected-1"</c:when><c:otherwise>class="row"</c:otherwise></c:choose>>
						<div class="col-sm-12">
							<h5>
								<a href="/bq/coaching/tools/get-reading-list?sort=titlerank">Title</a>
							</h5>
						</div>
					</div>
					<div
						<c:choose><c:when test='${sort eq "relevancerank"}'>class="row selected-1"</c:when><c:otherwise>class="row"</c:otherwise></c:choose>>
						<div class="col-sm-12">
							<h5>
								<a href="/bq/coaching/tools/get-reading-list?sort=relevancerank">Relevance</a>
							</h5>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-9">
				<div class="row">
					<div class="col-sm-12">
						<div class="col-sm-5"
							style="background-color: #59983b; color: white">
							<h4>
								Category:
								<c:choose>
									<c:when test='${nodeId eq "2698"}'>
										<c:out value='All Categories' />
									</c:when>
									<c:when test='${nodeId eq "2699"}'>
										<c:out value='Advertising' />
									</c:when>
									<c:when test='${nodeId eq "2700"}'>
										<c:out value='Consumer Behavoir' />
									</c:when>
									<c:when test='${nodeId eq "2635"}'>
										<c:out value='Customer Service' />
									</c:when>
									<c:when test='${nodeId eq "2702"}'>
										<c:out value='Marketing' />
									</c:when>
									<c:when test='${nodeId eq "2711"}'>
										<c:out value='Public Relations' />
									</c:when>
									<c:when test='${nodeId eq "2712"}'>
										<c:out value='Sales & Selling' />
									</c:when>
									<c:when test='${nodeId eq "6133991011"}'>
										<c:out value='Search Engine Optimization' />
									</c:when>
								</c:choose>
							</h4>
						</div>
						<div class="col-sm-4"
							style="color: white; background-color: #983b59">
							<h4>
								Sorted By:
								<c:choose>
									<c:when test='${sort eq "relevancerank"}'>
										<c:out value='Relevance' />
									</c:when>
									<c:when test='${sort eq "titlerank"}'>
										<c:out value='Title' />
									</c:when>
									<c:when test='${sort eq "daterank"}'>
										<c:out value='Publication
									Date' />
									</c:when>
									<c:when test='${sort eq "reviewrank"}'>
										<c:out value='Most
									Reviewed' />
									</c:when>
									<c:when test='${sort eq "salesrank"}'>
										<c:out value='Best Selling' />
									</c:when>
								</c:choose>
							</h4>
						</div>
						<div class="col-sm-3"
							style="text-align: right; background: #3b5998">
							<h4>
								<a style="color: white" target="_blank"
									href="${moreReadingList}">View More Results</a>
							</h4>
						</div>
					</div>
				</div>
				<c:forEach var="item" items="${readingList}">

					<div class="row">
						<div class="col-sm-12">
							<div class="card-panel grad1 radial" style="margin-bottom: 3%;">
								<div class="row valign-wrapper">
									<div class="col-sm-3">
										<a href="<c:out value='${item.detailPageUrl}' />"><img
											<c:choose>
									<c:when test="${empty item.image }">
										src="http://webservices.amazon.com/scratchpad/assets/images/amazon-no-image.jpg"
									</c:when>
									<c:otherwise>
										src="${item.image}"
									</c:otherwise>
								</c:choose>
											alt="" class="img img-responsive"></a>

									</div>
									<div class="col-sm-9">

										<h4 style="font-family: Corben;">
											<a style="color: #3b5998"
												href="<c:out value='${item.detailPageUrl}' />"><c:out
													value='${item.title}' /></a>
										</h4>
										<p style="margin-bottom: 2px; color: #983b59">
											<strong><c:out value='${item.author}' /></strong>
										</p>
										<div class='row' style="font-family: calibri">
											<div class="col-sm-6">
												<p>
													<strong style="color: #59983b">Published Date: <c:out
															value='${item.publicationDate}' />
													</strong>
												</p>
											</div>
											<div class="col-sm-6">
												<strong style="color: #59983b">Number of Pages: <c:out
														value='${item.numberOfpages}' />
												</strong>
											</div>
										</div>
										<p style="font-family: Calibri;">${item.review}</p>
										<p>
											<a target="_blank"
												style="color: #337ab7; text-decoration: none; font-family: Helvetica; font-size: 12pt; font-weight: bold;"
												href="${item.allOffers}"> More offers </a>

										</p>
										<div>
											<span class="a-button a-button-primary"> <a
												target="_blank"
												href="http://www.amazon.com/dp/${item.id}%3FSubscriptionId%3DAKIAJWQ3Z2P6ALOAAHDQ%26tag%3Dbqdemo-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D1591848288"
												style="text-decoration: none"> <span
													class="a-button-inner"> <img
														src="http://webservices.amazon.com/scratchpad/assets/images/Amazon-Favicon-64x64.png"
														class="a-icon a-icon-shop-now"> <input
														class="a-button-input" type="submit" value="Add to cart">
														<span class="a-button-text">Shop Now</span>
												</span>
											</a>
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<div class="row">
					<div class="col-sm-12"
						style="text-align: center; background: #3b5998">
						<h4>
							<a style="color: white" target="_blank" href="${moreReadingList}">View
								More Results</a>
						</h4>
					</div>
				</div>
			</div>

		</div>

	</div>

	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script type="text/javascript">
		$(function() {
			var top = 250;
			//this should be the offset of the top of your div 
			//which can be found by doing the following line

			//var top = $("#kolonne-v").offset().top;

			$(window).on('scroll', function() {
				if (top <= $(window).scrollTop()) {
					// if so, add the fixed class
					$('#sidenav').addClass('fixed-nav');

				} else {
					// otherwise remove it
					$('#sidenav').removeClass('fixed-nav');
				}
			})
		});
	</script>

</body>
</html>