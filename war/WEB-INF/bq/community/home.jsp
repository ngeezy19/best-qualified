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


</head>

<body>
	<%@ include file="/main-nav.html"%>
	<br>
	<br>
	<div class="container-fluid">
		<div class="row" style="">

			<div class="col-sm-12 no-padding-div"
				style="color: white; background-image: url('/images/community-slide.jpg'); height: 300px; position: relative; width: 100%;">
				<div
					style="background-color: rgba(0, 0, 0, 0.0); width: 400px; height: 220px; padding: 1%; position: absolute; bottom: 20px; left: 150px; font-family: century gothic">
					<h3 id="banner-quote">The single greatest "people skill" is a
						highly developed and authentic interest in the other person</h3>
					<br />
					<h4 id="banner-author">- Bob Burg</h4>
				</div>
			</div>
		</div>
	</div>

	
	<div class="container-fluid index-first-header" style="background-color:#87CEFA; width:100%;
   margin: 0;
   padding: 0;
   top: 0;
   left: 0;">
		 Wednesday, June 29, 2016
		<div style="float:right;"><i class="fa fa-twitter" aria-hidden="true"></i>
			<i class="fa fa-linkedin" aria-hidden="true"></i>
			<i class="fa fa-facebook" aria-hidden="true"></i>
			<i class="fa fa-google-plus" aria-hidden="true"></i>
			
		 </div>
		</div>
		
	<div class="container">
	<div class="row">
	<div style="border-style:solid; border-color:#87CEFA;">
								<h4>
									Article
								</h4>
								<p>Topic Author Time</p>
							</div>
	</div>
	<div class="row">
		<div class=col-sm-3>
		<div style="border-style:solid; border-color:#87CEFA;">
								<p>
									<a href="" style="font-size: 50px">Find a Coach</a>
								</p>
								
							</div>
		</div>
		<div style=" margin:auto;" class=" col-sm-5 embed-responsive embed-responsive-16by9">
	  		<iframe width="320" height="214" class="embed-responsive-item" src="http://www.youtube.com/embed/XGSy3_Czz8k?autoplay=0"></iframe>
		</div>
		<div class=col-sm-4>
		<div style="border-style:solid; border-color:#87CEFA;">
								<h4>
									Discussion
								</h4>
								<p>Topic Author Time</p>
							</div>
		</div>
		</div>
		<div class="row">
		<div class="col-sm-3" style="border-style:solid; border-color:#87CEFA;"><h4>
									Have you read?
								</h4>
								<c:forEach var="item" items="${readingList}">


				
					
						
							<img src="${item.imageUrl }" alt="" class="img img-responsive">
							<h4 style="font-family: Corben;">
								<c:out
										value='${item.bookTitle}' /><
							</h4>
							
								<c:out
										value='${item.author}' />
							
				</div>


			</c:forEach></div>
	<div class="col-sm-5" style="border-style:solid; border-color:#87CEFA;">
								<h4>
									Articles from the community
								</h4>
								<p>Topic Author Time</p>
							</div>
	</div>
	<div class="row">
		<div class="col-sm-3" style="border-style:solid; border-color:#87CEFA;">
								<p>
									<a href="" style="font-size: 50px">Find a Job</a>
								</p></div>
	</div>
	<div class="row">
		<div class="col-sm-3" style="border-style:solid; border-color:#87CEFA;"><h4>
									Jobs
								</h4>
								<p>Topic Author Time</p></div>
	</div>
	
			<!-- div class="row col-md-3">
		
				<!-- div class="well">
					<a class="twitter-timeline" href="https://twitter.com/FRANKDUPR33"
						data-widget-id="554987493125554176">Tweets by @BestQualified</a>
					<script>
						!function(d, s, id) {
							var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/
									.test(d.location) ? 'http' : 'https';
							if (!d.getElementById(id)) {
								js = d.createElement(s);
								js.id = id;
								js.src = p
										+ "://platform.twitter.com/widgets.js";
								fjs.parentNode.insertBefore(js, fjs);
							}
						}(document, "script", "twitter-wjs");
					</script>

				</div>


			</div-->
		</div-->
		</div>
	

	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>
	<script type="text/javascript">
		var slideCounter = 1;
		var quotes = [
				"The richest people in the world look for and build networks, everyone else looks for work.",
				"Networking is marketing, marketing yourself, marketing your uniqueness, marketing what you stand for.",
				"Networking is an essential part of building wealth.",
				"If you want to go fast, go alone. If you want to go far, go with others.",
				'The single greatest "people skill" is a highly developed & authentic interest in the other person.' ];
		var author = [ "- Robert. T. Kiyosaki", "- Christine Comaford-Lynch", "- Armstrong Williams",
				"- African proverbs", "- Bob Burg" ];
		$(document).ready(function() {

			startSlider();
		});
		function startSlider() {

			if (slideCounter > 4) {
				slideCounter = 0;
			}
			window.setTimeout(function() {
				$("#banner-quote").fadeOut("slow", "linear", function() {
					$("#banner-quote").text(quotes[slideCounter]);
					$("#banner-author").text(author[slideCounter]);
					slideCounter++;
					$("#banner-quote").fadeIn("slow", "linear", function() {
						startSlider();
					})
				});
			}, 5000);
		}
	</script>
</body>
</html>