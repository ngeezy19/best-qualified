<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Coach Request</title>
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
h2 {
	font-family: 'Corben', Georgia, Times, serif !important;
	font-weight: bold;
}
</style>
</head>
<body>
	<%@ include file="/main-nav.html"%>
	<br />
	<div id="header" class="container-fluid banner-grad">
		<br /> <br />
		<div class="row">
			<div class="col-sm-7" style="text-align: center;">

				<h1
					style="color: #013143; font-family: roboto; margin-top: 6%; font-size: 32pt">
					<span class="span-1">BQ Coaching</span> <span class="span-1"
						style="padding-left: 2%;">& Career Support</span>
				</h1>
				<div class="row" style="text-align: center;">
					<p style="font-size: 12pt; font-weight: bold; color: #3b5998">
						A platform where we offer a consultative approach to<br /> sales
						and marketing through the use of bespoke<br /> courses to fit
						your individual<br /> requirements.
					</p>
				</div>

			</div>
			<div class="col-sm-5">
				<div>
					<img alt="" src="/images/coaching-image.png"
						class="img img-responsive">
				</div>
			</div>
			<div class="col-sm-12 hidden-xs"
				style="font-weight: bold; padding: 4px; background-color: #c1899b; color: white">
				<div class="col-sm-6">
					<c:out value='${currentDate}' />
				</div>
				<div class="col-sm-6 pull-right icons">
					<i class="fa fa-facebook" aria-hidden="true"></i><i
						class="fa fa-google-plus" aria-hidden="true"></i><i
						class="fa fa-twitter" aria-hidden="true"></i><i
						class="fa fa-linkedin" aria-hidden="true"></i>
				</div>
			</div>
		</div>
	</div>

	<div class="container">

		<div class="" style="padding-top: 2%;">


			<div class="col-sm-3" style="padding-top: 1%;">
				<img alt="" src="/images/manpraying.png"
					style="height: 250px; width: auto;">
			</div>
			<div class="col-sm-9 no-padding-div"
				style="font-family: roboto; color: #111">
				<hr style="border-top: 0.05em solid #899bc1" />
				<h3 style="text-align: justify;">Why waste time trying to
					figure out how to position you as a top sales professional when the
					sales game is constantly changing?</h3>

				<h3 style="text-align: justify;">Request for a Coach today to
					brainstorm ideas and make critical decisions to be outstanding in
					your sales career!</h3>
				<div>
					<a href="<c:url value='/bq/coaching/coach-request-form' />"
						class="btn btn-fault btn-lg"
						style="background-color: #983b59; color: white">Get Started</a>
					<hr style="border-top: 0.05em solid #899bc1" />
				</div>
			</div>


		</div>

	</div>
	<div class="container-fluid"
		style="background-color: #eee9df; padding: 2%;">
		<div class="container">
			<div class="row">
				<h2 style="color: #983b59; text-align: center;">Some of our
					service offerings include</h2>
				<hr
					style="width: 25%; margin: 0 auto; margin-top: 2%; margin-bottom: 2%; border-top: 1px solid #8c8b8b; border-bottom: 1px dotted #fff;" />
			</div>
			<div class="row">
				<div class="col-sm-3">
					
						<div class="col-sm-12">
							<img alt="" src="/images/coachig-icons-coaching.png" class="img img-responsive">
						</div>
						<div class="colsm-12">
							<h3 style="text-align: center;">Coaching on Sales Process</h3>
						</div>
					
				</div>
				<div class="col-sm-3">
					
						<div class="col-sm-12">
							<img alt="" src="/images/coachig-icons-Strategy.png" class="img img-responsive">
						</div>
						<div class="colsm-12">
							<h3 style="text-align: center;">Sales Strategy</h3>
						</div>
					
				</div>
				<div class="col-sm-3">
					
						<div class="col-sm-12">
							<img alt="" src="/images/coachig-icons-Behaviour.png" class="img img-responsive">
						</div>
						<div class="colsm-12">
							<h3 style="text-align: center;">Sales Behaviour</h3>
						</div>
					
				</div>
				<div class="col-sm-3">
					
						<div class="col-sm-12">
							<img alt="" src="/images/coachig-icons-Support.png" class="img img-responsive">
						</div>
						<div class="colsm-12">
							<h3 style="text-align: center;">Career Support</h3>
						</div>
					
				</div>
				
			</div>
			
		</div>
	</div>


	<div class="container">


		<div class="col-sm-9" style="margin-top: 3%; padding-top: 5px;">
			<h2 style="color: #983b59; text-align: center;">What you stand
				to gain</h2>

			<div class="row">
				<div class="col-sm-1" style="text-align: right;">
					<h2 style="margin-top: 5px;">
						<i style="color: #3b5998" class="fa fa-check" aria-hidden="true"></i>
					</h2>
				</div>
				<div class="col-sm-11">
					<h4>We will help you define your goals and strategies leading
						to maximised sales energy, focus and engagement</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-1" style="text-align: right;">
					<h2 style="margin-top: 5px;">
						<i style="color: #3b5998" class="fa fa-check" aria-hidden="true"></i>
					</h2>
				</div>
				<div class="col-sm-11">
					<h4>Our unique coaching system will help you reach your goals.
						We ensure that you maintain current, written and public action
						plans</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-1" style="text-align: right;">
					<h2 style="margin-top: 5px;">
						<i style="color: #3b5998" class="fa fa-check" aria-hidden="true"></i>
					</h2>
				</div>
				<div class="col-sm-11">
					<h4>We will allow you ask exploratory questions and guide you
						on how to answer them</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-1" style="text-align: right;">
					<h2 style="margin-top: 5px;">
						<i style="color: #3b5998" class="fa fa-check" aria-hidden="true"></i>
					</h2>
				</div>
				<div class="col-sm-11">
					<h4>We also guarantee you actionable feedback throughout the
						coaching sessions</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-offset-1 col-sm-11">
					<a href="<c:url value='/bq/coaching/coach-request-form' />"
						class="btn btn-success btn-lg"
						style="background-color: #987a3b; border-color: #987a3b">Ask
						for a coach</a>
				</div>
			</div>

		</div>
		<div class="col-sm-3 no-padding-div" style="margin-top: 5px">
			<img alt="" class="img img-responsive" src="/images/happy-biz.png">
		</div>

	</div>

	<div class="container-fluid"
		style="background-color: #f6f4ef; padding: 2%;">
		<div class="container">
			<div class="row" style="background-color: #cdbea0">
				<div class="col-sm-5 no-padding-div"
					style="background-color: #b0bcd5; padding: 2%;">
					<h2 style="color: white;">How It Works</h2>
					<p>Our BQ Sales Coaching program is designed to identify and
						facilitate better management performance for sales and marketing
						professionals.</p>
					<p>The program is offered as either offline (face to face) or
						online coaching sessions delivered in 6 session cycles over a
						3-month period.</p>
					<div class="form-group" style="text-align: center">
						<a href="<c:url value='/bq/coaching/coach-request-form' />"
							class="btn btn-success btn-lg"
							style="background-color: #ac627a; border-color: #ac627a">Get
							Started Now</a>
					</div>
				</div>
				<div class="col-sm-7 no-padding-div"
					style="padding: 2%; padding-bottom: 0px;">
					<h2 style="color: white;">Case Studies</h2>
					<div class="col-sm-4">
						<a target="_blank" href="/casestudies-1.pdf"><img
							src='/images/cs1.jpg' class="img img-responsive"
							style="border: 1px solid gray;"></a>
						<h4 style="text-align: center;">Case Study 1</h4>
						<br />
					</div>
					<div class="col-sm-4">
						<a target="_blank" href="/casestudies-1.pdf"><img
							src='/images/cs1.jpg' class="img img-responsive"
							style="border: 1px solid gray"></a>
						<h4 style="margin: 3%; text-align: center;">Case Study 2</h4>
					</div>
					<div class="col-sm-4">
						<a target="_blank" href="/casestudies-1.pdf"><img
							src='/images/cs1.jpg' class="img img-responsive"
							style="border: 1px solid gray"></a>
						<h4 style="margin: 3%; text-align: center;">Case Study 3</h4>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<h2 style="color: #983b59; margin-bottom: 4%; text-align: center;">Testimonials</h2>
			<div class="col-sm-4">
				<div class="col-sm-12" style="text-align: center">
					<img alt="" src="/images/client-1.jpe" class="img img-circle"
						style="width: 200px; margin: 0 auto; border: 2px solid #983b59">
				</div>
				<div class="col-sm-12" style="text-align: center; margin-top: 2%;">
					<p class="text-muted">"facilitate better management performance
						for sales and marketing professionalsOur BQ Sales Coaching program
						is designed to identify and facilitate better management
						performance for sales and marketing professionals"</p>
					<p class="text-muted"
						style="font-family: calibri; font-style: italic; font-weight: bold;">Deborah
						Cox</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="col-sm-12" style="text-align: center">
					<img alt="" src="/images/client-1.jpe" class="img img-circle"
						style="width: 200px; margin: 0 auto; border: 2px solid #983b59">
				</div>
				<div class="col-sm-12 text-muted"
					style="text-align: center; margin-top: 2%;">
					<p>"facilitate better management performance for sales and
						marketing professionalsOur BQ Sales Coaching program is designed
						to identify and facilitate better management performance for sales
						and marketing professionals"</p>
					<p class="text-muted"
						style="font-family: calibri; font-style: italic; font-weight: bold;">Jamie
						Jackson</p>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="col-sm-12" style="text-align: center">
					<img alt="" src="/images/client-1.jpe" class="img img-circle"
						style="width: 200px; margin: 0 auto; border: 2px solid #983b59">
				</div>
				<div class="col-sm-12 text-muted"
					style="text-align: center; margin-top: 2%;">
					<p>"facilitate better management performance for sales and
						marketing professionalsOur BQ Sales Coaching program is designed
						to identify and facilitate better management performance for sales
						and marketing professionals"</p>
					<p class="text-muted"
						style="font-family: calibri; font-style: italic; font-weight: bold;">Nomi
						Malone</p>
				</div>
			</div>

		</div>
		<div class="row" style="margin: 2%;">
			<div class="form-group" style="text-align: center">
				<a href="<c:url value='/bq/coaching/coach-request-form' />"
					class="btn btn-success btn-lg"
					style="font-size: 22pt; background-color: #983b59; border-color: #983b59">Consult
					A Coach Now</a>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row"><%@ include file="/WEB-INF/pages/footer.html"%></div>
	</div>

	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/waitMe.js"></script>
	<script src="/js/main.js"></script>
	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {

			/*	$(window).scroll(function(){
					var aTop = $("#header").height();
				    if($(this).scrollTop()>=aTop){
				        alert('ad just passed.');
				    }
				  });*/

		});
	</script>
</body>
</html>