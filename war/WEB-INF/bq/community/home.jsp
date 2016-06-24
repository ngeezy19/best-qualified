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
		<div class="row" style="margin-bottom: 2%;">

			<div class="col-sm-12 no-padding-div"
				style="color: white; background-image: url('/images/community-slide.jpg'); height: 300px; position: relative; width: 100%;">
				<div
					style="background-color: rgba(0, 0, 0, 0.0); width: 400px; height: 220px; padding: 1%; position: absolute; bottom: 20px; left: 150px; font-family: century gothic">
					<h3 id="banner-quote">The single greatest "people skill" is a
						highly developed & authentic interest in the other person</h3>
					<br />
					<h4 id="banner-author">- Bob Burg</h4>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row" style="">
			<div class="col-md-9" id="blogodo">

				<div class="media">
					<a class="pull-left" href="#"><img
						class="media-object img-rounded" src="images/am.png" width="320"
						height="214"></a>
					<div class="media-body">
						<h3 class="media-heading" id="lol">COMMUNITY</h3>

						<p style="text-align: justify;">The BQ community provides many
							ways for you to connect with a world of Sales & Marketing
							experts. Whether it is through membership, national events or the
							BQ social media channels. The BQ brings Sales & Marketing
							professionals together to build networks, relationships and solve
							market place challenges.</p>
					</div>
				</div>
				<br> <br>
				<div>
					<h3>Connect Through Membership List</h3>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>AMA</th>
								<th>NIMN</th>
								<th>LIPSR</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><b>APCON</td>
								</b>
								<td><b>WISCAR</td>
								</b>
								<td><b>FSED</td>
								</b>
							</tr>
							<tr>
								<td><b>CIM</td>
								</b>
								<td><b>NIPR</td>
								</b>
								<td><b>CIPR</td>
								</b>
							</tr>
							<tr>
								<td><b>CMMP</td>
								</b>
								<td><b>CIPS</td>
								</b>
								<td><b>CAS</td>
								</b>
							</tr>
							<tr>
								<td><b>SMC</td>
								</b>
								<td><b>GAP/GAIQ</td>
								</b>
								<td><b>CMI</td>
								</b>
							</tr>
							<tr>
								<td><b>SCRUM</td>
								</b>
								<td><b>HUBSPOT</td>
								</b>
								<td><b>DMI</td>
								</b>
							</tr>
						</tbody>
					</table>
				</div>
				<br>


				<div style="background-image: url('img/comi/3.png');">
					<h3>Top Contributors</h3>
					<div class="row">

						<div class="col-md-4">
							<div class="media">
								<a href="#"><img class="media-object img-circle pull-left"
									src="images/46.jpg" width="130" height="130"></a>
								<div class="media-body">
									<br> <br>
									<h5 class="media-heading  pull-left">Delight Chika</h5>
									<p class="pull-left">Top Content Writer</p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="media">
								<a href="#"><img class="media-object img-circle pull-left"
									src="images/73.jpg" width="130" height="130"></a>
								<div class="media-body">
									<br> <br>
									<h5 class="media-heading  pull-left">Ugo Chukwudi</h5>
									<p class="pull-left">Fastest Reply</p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="media">
								<a href="#"><img class="media-object img-circle pull-left"
									src="images/3.jpg" width="130" height="130"></a>
								<div class="media-body">
									<br> <br>
									<h5 class="media-heading  pull-left">Stephen Dappa</h5>
									<p class=" pull-left">Number 1 Rookie</p>
								</div>
							</div>
						</div>

					</div>
				</div>


			</div>
			<div class="col-md-3">
				<div class="well soweto"
					style="background: rgba(78, 189, 163, 0.13); padding: 20px;">
					<h3 class="media-heading" id="lols">Which company has the best
						work enviroment</h3>


					<div class="checkbox">
						<label><input type="checkbox" value="">First Bank
							Nigeria</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" value="">Zenith</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" value="">Workforce</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" value="">Mtn Nigeria</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" value="">Cheveron</label>
					</div>

					<button class="btn btn-info">Vote</button>
				</div>

				<div class="well">
					<form role="form">
						<div class="form-group">
							<p>Member Log In |</p>
							<input type="email" class="form-control" id="email"
								placeholder="email">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="pwd"
								placeholder="password">
						</div>

						<button type="submit" class="btn btn-default">Submit</button>
					</form>
				</div>

				<div class="well">
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