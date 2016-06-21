<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Certifications</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/styles/jquery.webui-popover.min.css">
<link rel="stylesheet" href="/styles/main.css">
<style type="text/css">
.certification-headers {
	width: 80%;
	margin: 0 auto;
	margin-bottom: 1%;
}

.certification-headers li {
	list-style: none;
	display: inline;
	padding: 4px;
	padding-right: 1%;
	padding-left: 1%;
	border-right: 1px solid #dadada;
}

.cert-category-div {
    background: #eaeaea; /* For browsers that do not support gradients */
    background: -webkit-linear-gradient(#eaeaea, white); /* For Safari 5.1 to 6.0 */
    background: -o-linear-gradient(#eaeaea, white); /* For Opera 11.1 to 12.0 */
    background: -moz-linear-gradient(#eaeaea, white); /* For Firefox 3.6 to 15 */
    background: linear-gradient(#eaeaea, white); /* Standard syntax */
}


</style>
</head>
<body>
	<%@ include file="/main-nav.html"%>
	<br />
	<br />
	<div class="container-fluid">
			<div class="row" style="margin-bottom: 2%;">

				<div class="col-sm-12 no-padding-div" style="color: white; background-image: url('/images/certification-slide.jpg'); height: 300px; position: relative; width: 100%;">
					<div style="background-color: rgba(0,0,0,0.0); width: 400px; height: 220px; padding: 1%; position: absolute; bottom: 20px; left: 150px; font-family: century gothic">
						<h3 id="banner-quote">Education is the most powerful weapon which you can use to change the world.</h3><br/>
						<h4 id="banner-author">- Nelson Mandela</h4>
					</div>
				</div>
			</div>
		</div>
	<div class="container" style="margin-top: 2%;">
		<div class="row">
			<div class="col-sm-8">
				<ul class="certification-headers">
					<li><a href="#sales">Sales</a></li>
					<li><a href="#marketing">Marketing</a></li>
					<li><a href="#public-relations">Public Relations</a></li>
					<li><a href="#advertising">Advertising</a></li>
					<li style="border-right: none;"><a href="#creatives">Creatives</a></li>
				</ul>
				<div class="row" id="sales">
					<div class="col-sm-12">
						<div class="card-panel cert-category-div">
							<div class="row">
								<div class="col-sm-2">
									<img src="/images/sales 1.png" alt=""
										class="img img-responsive img-circle">
								</div>
								<div class="col-sm-10">
									<h3 class="text-danger">Sales</h3>
									<h4>
										<a href="/bq/certifications/sales#inbound-sales-certification">Inbound
											Sales Certification</a>
									</h4>
									<ul class="text-muted">
										<li>Certified Professional Sales Person (CPSP)</li>
										<li>Voice of Influence</li>
									</ul>
									<h4>
										<a href="/bq/certifications/sales#nasp">National
											Association of Sales Professionals (NASP)</a>
									</h4>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row" id="marketing">
					<div class="col-sm-12">
						<div class="card-panel cert-category-div">
							<div class="row">
								<div class="col-sm-2">
									<img src="/images/marketing2.jpg" alt=""
										class="img img-responsive img-circle">

								</div>
								<div class="col-sm-10">
									<h3 class="text-danger">Marketing</h3>
									<h4>
										<a href="/bq/certifications/marketing#nimn">The National
											Institute of Marketing of Nigeria (NIMN)</a>
									</h4>
									<ul class="text-muted">
										<li>Foundation Certificate in Marketing)</li>
										<li>Chartered Graduate Diploma in Marketing</li>
										<li>Chartered Post Graduate Diploma in Marketing</li>
									</ul>
									<h4>
										<a href="/bq/certifications/marketing#ama">The American
											Marketing Association (AMA)</a>
									</h4>
									<ul class="text-muted">
										<li>Professional Certified Marketing (PCM)</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row" id="public-relations">
					<div class="col-sm-12">
						<div class="card-panel cert-category-div">
							<div class="row">
								<div class="col-sm-2">
									<img src="/images/prsocial.png" alt=""
										class="img img-responsive img-circle">
								</div>
								<div class="col-sm-10">
									<h3 class="text-danger">Public Relations</h3>
									<h4>
										<a href="/bq/certifications/public-relations#nipr">The
											Nigerian Institute for Public Relations (NIPR)</a>
									</h4>
									<ul class="text-muted">
										<li>Professional Certificate in Public Relations</li>
										<li>Professional Diploma in Public Relations</li>
									</ul>
									<h4>
										<a href="/bq/certifications/public-relations#cipr">Chartered
											Institute of Public Relations (CIPR)</a>
									</h4>
									<ul class="text-muted">
										<li>Foundation Award in Public Relations</li>
										<li>Advanced Certificate in Public Relations</li>
										<li>Diploma in Public Relations</li>
										<li>Internal Communication Certificate</li>
										<li>Internal Communication Diploma</li>
										<li>Crisis Communication Diploma</li>
										<li>Public Affairs Diploma</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row" id="advertising">
					<div class="col-sm-12">
						<div class="card-panel cert-category-div">
							<div class="row">
								<div class="col-sm-2">
									<img src="/images/prbillboard.png" alt=""
										class="img img-responsive img-circle">
								</div>
								<div class="col-sm-10">
									<h3 class="text-danger">Advertising</h3>
									<h4>
										<a href="/bq/certifications/advertising#apcon">Advertising
											Practitioners Council of Nigeria (APCON) </a>
									</h4>
									<ul class="text-muted">
										<li>APCON Professional Examinations Programme</li>
									</ul>
									<h4>
										<a href="/bq/certifications/advertising#cipr">Interactive
											Advertising Bureau (IAB)</a>
									</h4>
									<ul class="text-muted">
										<li>IAB Digital Ad Operations Certification</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row" id="creatives">
					<div class="col-sm-12">
						<div class="card-panel cert-category-div">
							<div class="row">
								<div class="col-sm-2">
									<img src="/images/creat2.png" alt=""
										class="img img-responsive img-circle">
								</div>
								<div class="col-sm-10">
									<h3 class="text-danger">Creatives</h3>
									<h4>
										<a href="/bq/certifications/creatives#aca">Adobe Certified
											Associate </a>
									</h4>
									<h4>
										<a href="/bq/certifications/creatives#ace">Adobe Certified
											Expert (ACE)</a>
									</h4>
									<h4>
										<a href="/bq/certifications/creatives#ciw">CIW Web Design
											Professional</a>
									</h4>
									<h4>
										<a href="/bq/certifications/creatives#hdc">Hubspot Design
											Certification</a>
									</h4>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="col-sm-4">

				<div class="row" style="margin-bottom: 2%;">
					<div>
						<iframe src="/images/ad1/negotiatn_ext.html" width="336" height="280"
						scrolling="no" frameBorder='0'></iframe>
					</div>
				</div>
				<div class="row">
					<div>
						<iframe src="/images/ad2/bootcamp_ext.html" width="336" height="280"
						scrolling="no" frameBorder='0'></iframe>
					</div>
				</div>
				<div class="row">
					<div>
						<iframe src="/images/ad3/tools_or_luck.html" width="336" height="280"
						scrolling="no" frameBorder='0'></iframe>
					</div>
				</div>

			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	var slideCounter = 1;
	var quotes = [ "Information is power only if you can take action with it. Then, and only then, does it represent knowledge and, consequently, power.", "The biggest reason people don't succeed is because they don't expose themselves to existing information.",
			"Without continual growth and progress, such words as improvement, achievement, and success have no meaning.", "By showing your skills are up to date you might be more in line for the next promotional progression in your role or for the next role." ,"Education is the most powerful weapon which you can use to change the world."];
	var author = ["- Daniel Burrus","- Jim Rohn","- Benjamin Franklin","- Jason Zandri", "- Nelson Mandela"];
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
</body>
</html>