<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>Coaching</title>
<meta charset="ISO-8859-1">
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
.flat-social span {
	margin-left: 1%;
}

.flat-social {
	padding: 0px;
	margin-top: 2%;
}

.flat-social li {
	list-style: none;
	display: inline;
	width: 4em;
}

.social-facebook,.social-twitter,.social-google,.social-linkedin {
	color: white;
	font-size: 10pt;
	width: 4em !important;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-web-border-radius: 5px;
	padding: 3px;
	padding-left: 4px;
	padding-right: 4px;
	width: 4em !important;
}

.social-facebook {
	background-color: #39599f
}

.social-facebook:hover {
	background-color: #39599f;
}

.social-twitter {
	background-color: #45b0e3
}

.social-facebook:hover {
	background-color: blue;
}

.social-google {
	background-color: #dc4a38
}

.social-google:hover {
	background-color: red;
}

.social-linkedin {
	background-color: #006699
}

.social-linked:hover {
	background-color: blue;
}

.post-box-title a {
	text-decoration: none;
	font-family: 'Corben', Georgia, Times, serif !important;
}

#animation-div {
	color: white;
	background-color: #013143;
	-webkit-animation-name: example; /* Chrome, Safari, Opera */
	-webkit-animation-duration: 4s; /* Chrome, Safari, Opera */
	animation-name: example;
	animation-duration: 5s;
	animation-iteration-count: infinite;
}
/* Chrome, Safari, Opera */
@
-webkit-keyframes example { 0% {
	background-color: #013143;
}

25%
{
background-color




:




#DA4453




;
}
50%
{
background-color




:




#967ADC




;
}
75%
{
background-color




:




#4A89DC




;
}
100%
{
background-color




:




#DA4453




;
}
}

/* Standard syntax */
@
keyframes example { 0% {
	background-color: #013143;
}
25%{
background-color




:




#DA4453




;
}
50%
{
background-color




:




#967ADC




;
}
75%
{
background-color




:




#4A89DC




;
}
100%
{
background-color




:




#DA4453




;
}
}
</style>
</head>
<body>
	<%@ include file="/main-nav.html"%>
	<br />
	<br />
	<div class="container-fluid">
			<div class="row" style="margin-bottom: 2%;">

				<div class="col-sm-12 no-padding-div" style="color: white; background-image: url('/images/coaching-slide.jpg'); height: 300px; position: relative; width: 100%;">
					<div style="background-color: rgba(0,0,0,0.0); width: 400px; height: 220px; padding: 1%; position: absolute; bottom: 20px; left: 150px; font-family: century gothic">
						<h3 id="banner-quote">We cannot hold a torch to light another's path without brightening our own.</h3><br/>
						<h4 id="banner-author">- Ben Sweetland</h4>
					</div>
				</div>
			</div>
		</div>
	<div class="container" style="margin-top: 1%;">
		<div class="row tools-div"
			style="margin-bottom: 2%;">
			
			<div class="col-sm-3">
				<a href="/bq/coaching/tools/interview-cheats" class="text-danger"><i  class="fa fa-file fa-5x" aria-hidden="true"></i></a>
				<a href="/bq/coaching/tools/interview-cheats"><h4>Interview Cheat Sheets</h4></a>
			</div>
			<div class="col-sm-3">
				<a href="/bq/coaching/tools/assessment" class="text-warning"><i class="fa fa-pencil-square fa-5x" aria-hidden="true"></i></a>
				<a href="/bq/coaching/tools/assessment"><h4>Assessment Test</h4></a>
			</div>
			<div class="col-sm-3">
					<a href="/bq/coaching/tools/reading-list" class="text-success"><i class="fa fa-book fa-5x" aria-hidden="true"></i></a>
					<a href="/bq/coaching/tools/reading-list"><h4>Reading List</h4></a>
			</div>
			<div class="col-sm-3">
				<a href="/bq/coaching/tools/sales-documents" style="color: green"><i class="fa fa-file-text fa-5x" aria-hidden="true"></i></a>
				<a href="/bq/coaching/tools/sales-documents"><h4>Sales Documents</h4></a>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-8">
				<div class="col-sm-12  spotlight-div">
					<div class="col-sm-5 spotlight-image-div">
						<span id="in-spotlight">LASTEST ARTICLE</span> <img
							class="img img-responsive spotlight-image" alt=""
							src="/images/spotlight.jpg">
					</div>
					<div class="col-sm-7">
						<h4 class="spotlight-title">Lorem ipsum dolor sit amet,
							consectetuer adipiscing elit</h4>
						<h5 class="author-info">
							by Best Qualified <span class="pull-right">22-MAY-2016</span>
						</h5>
						<p>
							Donec quam felis, ultricies nec, pellentesque eu, pretium quis,
							sem. Nulla consequat massa quis enim. Donec pede justo, fringilla
							vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus
							ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu
							pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus
							elementum semper nisi...<a href="#">read more</a>
						</p>
					</div>
				</div>

				<div class="col-sm-12 no-padding-div" style="margin-top: 2%;">
					<div class="col-sm-6" style="padding-left: 0px">
						<div class="article-header">ARTICLE GROUP X</div>
						<div>
							<img class="img img-responsive" src="/images/article1.jpg">
						</div>
						<h4>Donec quam felis, ultricies nec, pellentesque eu, pretium
							quis, sem.</h4>
						<h5 class="author-info">
							By Anna Maria<span class="pull-right">03-MAR-2016</span>
						</h5>
						<p>
							Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper
							libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc,
							blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec
							odio et ante tincidunt tempus. Donec vitae sapien ut libero
							venenatis faucibus...<a href="#">read more</a>
						</p>
					</div>
					<div class="col-sm-6" style="padding-right: 0px">
						<div class="article-header">ARTICLE GROUP Y</div>
						<div>
							<img class="img img-responsive" src="/images/article2.jpg">
						</div>
						<h4>Nulla consequat massa quis enim. Donec pede justo,
							fringilla.</h4>
						<h5 class="author-info">
							By Joseph Tyler <span class="pull-right">14-MAY-2016</span>
						</h5>
						<p>
							Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper
							libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc,
							blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec
							odio et ante tincidunt tempus. Donec vitae sapien ut libero
							venenatis faucibus...<a href="#">read more</a>
						</p>
					</div>
				</div>

				<div class="col-sm-12 no-padding-div">
					<div class="article-header">From Our Blog</div>
					<div class="col-sm-12 no-padding-div" style="margin-bottom: 2%;">
						<article class="col-sm-12 no-padding-div"
							style="border-bottom: 1px solid #cacaca">
							<h3 class="post-box-title">
								<a href="#"> Top IITS Colleges In India With Their Rankings</a>
							</h3>
							<p class="text-muted">
								<span><i class="fa fa-clock-o"></i> 2 weeks ago</span> <span><i
									class="fa fa-comments"></i><a> 0</a></span>
							</p>


							<div class="col-sm-12 no-padding-div">
								<p>Indian Institutes of Technology or IITs is the top
									engineering institutionsin India that most of the people prefer
									to study and improve their career in engineering. IITs in India
									have the main objective for creating the talented pool for the
									trained engineers and scientists so that they many contribute
									towards.</p>

							</div>
							<div class="col-sm-12 no-padding-div">
								<a class="more-link" href="#">Read More »</a>
							</div>
							<div class="col-sm-12 no-padding-div">
								<ul class="flat-social">
									<li><a href="#" class="social-facebook" rel="external"
										target="_blank"><i class="fa fa-facebook"></i> <span>Facebook</span></a></li>
									<li><a href="#" class="social-twitter" rel="external"
										target="_blank"><i class="fa fa-twitter"></i> <span>Twitter</span></a></li>
									<li><a href="#" class="social-google" rel="external"
										target="_blank"><i class="fa fa-google-plus"></i> <span>Google
												+</span></a></li>
									<li><a href="#" class="social-linkedin" rel="external"
										target="_blank"><i class="fa fa-linkedin"></i> <span>LinkedIn</span></a></li>
								</ul>
								<div style="clear: both"></div>
							</div>

						</article>
						<article class="col-sm-12 no-padding-div">
							<h3 class="post-box-title">
								<a href="#"> Top IITS Colleges In India With Their Rankings</a>
							</h3>
							<p class="text-muted">
								<span><i class="fa fa-clock-o"></i> 2 weeks ago</span> <span><i
									class="fa fa-comments"></i><a> 0</a></span>
							</p>


							<div class="col-sm-12 no-padding-div">
								<p>Indian Institutes of Technology or IITs is the top
									engineering institutionsin India that most of the people prefer
									to study and improve their career in engineering. IITs in India
									have the main objective for creating the talented pool for the
									trained engineers and scientists so that they many contribute
									towards.</p>

							</div>
							<div class="col-sm-12 no-padding-div">
								<a class="more-link" href="#">Read More »</a>
							</div>
							<div class="col-sm-12 no-padding-div">
								<ul class="flat-social">
									<li><a href="#" class="social-facebook" rel="external"
										target="_blank"><i class="fa fa-facebook"></i> <span>Facebook</span></a></li>
									<li><a href="#" class="social-twitter" rel="external"
										target="_blank"><i class="fa fa-twitter"></i> <span>Twitter</span></a></li>
									<li><a href="#" class="social-google" rel="external"
										target="_blank"><i class="fa fa-google-plus"></i> <span>Google
												+</span></a></li>
									<li><a href="#" class="social-linkedin" rel="external"
										target="_blank"><i class="fa fa-linkedin"></i> <span>LinkedIn</span></a></li>
								</ul>
								<div style="clear: both"></div>
							</div>

						</article>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="col-sm-12"
					style="margin-bottom: 2%; font-family: 'Corben', Georgia, Times, serif !important; font-weight:">
					<div id="animation-div" style="text-align: center; padding: 2%;">
						<h2>Want to be a coach?</h2>
						<h4>Click here</h4>
					</div>
				</div>
				<div class="col-sm-12" style="margin-bottom: 2%;">
					<a href="<c:url value='/bq/coaching/request-coach'/>"><img
						class="img img-responsive"
						style="border: 1px solid purple; padding: 2%;"
						src="/images/coach.png"></a>
				</div>
				<div class="col-sm-12" style="margin-bottom: 2%;">
					<div class="article-header">Featured Video</div>
					<iframe
						style="margin: 0 auto; width: 100%; height: auto; border: 1px blue solid"
						src="https://www.youtube.com/embed/_OkipHHmUNQ?rel=0"
						frameborder="0" allowfullscreen></iframe>
				</div>

				<div class="col-sm-12">
					<div class="article-header">POPULAR ARTICLES</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/certifications.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Donec vitae sapien ut libero
								quam semper</h5>
							<h5 class="author-info">
								By Jane Doe<span class="pull-right">05-APR-2016</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/get-hired.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Nam quam nunc, blandit vel,
								luctus pulvinar, hendrerit id</h5>
							<h5 class="author-info">
								By Paul Allen<span class="pull-right">13-DEC-2015</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/community.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Maecenas tempus, tellus eget
								condimentum rhoncus, sem</h5>
							<h5 class="author-info">
								By Kimberly Lewis<span class="pull-right">14-FEB-2016</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/certifications.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Donec vitae sapien ut libero
								quam semper</h5>
							<h5 class="author-info">
								By Jane Doe<span class="pull-right">05-APR-2016</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/get-hired.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Nam quam nunc, blandit vel,
								luctus pulvinar, hendrerit id</h5>
							<h5 class="author-info">
								By Paul Allen<span class="pull-right">13-DEC-2015</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/community.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Maecenas tempus, tellus eget
								condimentum rhoncus, sem</h5>
							<h5 class="author-info">
								By Kimberly Lewis<span class="pull-right">14-FEB-2016</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/certifications.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Donec vitae sapien ut libero
								quam semper</h5>
							<h5 class="author-info">
								By Jane Doe<span class="pull-right">05-APR-2016</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/get-hired.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Nam quam nunc, blandit vel,
								luctus pulvinar, hendrerit id</h5>
							<h5 class="author-info">
								By Paul Allen<span class="pull-right">13-DEC-2015</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/community.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Maecenas tempus, tellus eget
								condimentum rhoncus, sem</h5>
							<h5 class="author-info">
								By Kimberly Lewis<span class="pull-right">14-FEB-2016</span>
							</h5>
						</div>
					</div>
					<div class="col-sm-12 no-padding-div"
						style="border-bottom: 1px solid #cacaca; margin-top: 2%;">
						<div class="col-sm-2 no-padding-div">
							<img class="img img-responsive" alt=""
								src="/images/certifications.jpg">
						</div>
						<div class="col-sm-10 no-padding-div" style="padding-left: 2%;">
							<h5 style="margin-top: 0px;">Donec vitae sapien ut libero
								quam semper</h5>
							<h5 class="author-info">
								By Jane Doe<span class="pull-right">05-APR-2016</span>
							</h5>
						</div>
					</div>

				</div>
			</div>
		</div>

	</div>
	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>
	<script type="text/javascript">
	var slideCounter = 1;
	var quotes = [ "Tell me and I forget, teach me and I may remember, involve me and I learn.", "Advice is like snow; the softer it falls, the longer it dwells upon, and the deeper it sinks into the mind.",
			"If you cannot see where you are going, ask someone who has been there before.", "We're here for a reason. I believe a bit of the reason is to throw little torches out to lead people through the dark." ,"We cannot hold a torch to light another's path without brightening our own."];
	var author = ["- Benjamin Franklin","- Samuel Taylor Coleridge","- J Loren Norris","- Whoopi Goldberg", "- Ben Sweetland"];
		$(document).ready(function() {
			
			startSlider();
		});
		function startSlider() {
			
			if (slideCounter > 4) {
				slideCounter = 0;
			}
			window.setTimeout(function() {
				$("#banner-quote").fadeOut("slow","linear", function() {
					$("#banner-quote").text(quotes[slideCounter]);
					$("#banner-author").text(author[slideCounter]);
					slideCounter++;
					$("#banner-quote").fadeIn("slow","linear",function() {
						startSlider();
					})
				});
			}, 5000);
		}
	</script>
	<script type='text/javascript' data-cfasync='false'>
		window.purechatApi = {
			l : [],
			t : [],
			on : function() {
				this.l.push(arguments);
			}
		};
		(function() {
			var done = false;
			var script = document.createElement('script');
			script.async = true;
			script.type = 'text/javascript';
			script.src = 'https://app.purechat.com/VisitorWidget/WidgetScript';
			document.getElementsByTagName('HEAD').item(0).appendChild(script);
			script.onreadystatechange = script.onload = function(e) {
				if (!done
						&& (!this.readyState || this.readyState == 'loaded' || this.readyState == 'complete')) {
					var w = new PCWidget({
						c : '326dbdf5-7eaf-40a8-af52-ee4a7a58550a',
						f : true
					});
					done = true;
				}
			};
		})();
	</script>
</body>
</html>