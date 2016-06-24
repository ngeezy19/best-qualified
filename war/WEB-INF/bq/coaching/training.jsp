<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/styles/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/styles/jquery.webui-popover.min.css">
<link rel="stylesheet" href="/styles/main.css">
<title>Sales</title>
<style type="text/css">
.grad1 {
	background: #dadada;
	background: -webkit-linear-gradient(right, #dadada, white);
	background: -o-linear-gradient(left, #dadada, white);
	background: -moz-linear-gradient(left, #dadada, white);
	background: linear-gradient(to left, #dadada, white);
}

.cert-view-header {
	background-color: #013143;
	background: -webkit-linear-gradient(right, #013143, #738e97);
	/* For Safari 5.1 to 6.0 */
	background: -o-linear-gradient(left, #013143, #738e97);
	/* For Opera 11.1 to 12.0 */
	background: -moz-linear-gradient(left, #013143, #738e97);
	/* For Firefox 3.6 to 15 */
	background: linear-gradient(to left, #013143, #738e97);
	/* Standard syntax (must be last) */
}

.training-intro {
	border: 1px solid #444;
	background: #666;
	padding: 2%;
	border-left: 5px solid orange;
	color: white;
}

.workshop-info {
	margin-top: 2%;
	background: #fafafa; /* For browsers that do not support gradients */
	background: -webkit-linear-gradient(#eaeaea, white);
	/* For Safari 5.1 to 6.0 */
	background: -o-linear-gradient(#eaeaea, white);
	/* For Opera 11.1 to 12.0 */
	background: -moz-linear-gradient(#eaeaea, white);
	/* For Firefox 3.6 to 15 */
	background: linear-gradient(#eaeaea, white); /* Standard syntax */
}

.workshop-info p {
	font-family: calibri
}
</style>
</head>
<body>
	<%@ include file="/main-nav.html"%>
	<br /><br/>
	<div class="container-fluid grad1">
		<br />
		<div class="row">
			<div class="col-sm-7" style="text-align: center;">

				<h1
					style="color: #013143; font-family: roboto; margin-top: 10%; font-size: 32pt">
					<span class="text-primary">Get Sharpened</span> <span
						style="color: red; padding-left: 1%;">And Stand Out</span>
				</h1>

			</div>
			<div class="col-sm-5">
				<div>
					<img alt="" src="/images/get-sharpened.png"
						class="img img-responsive">
				</div>
			</div>
		</div>
	</div>

	<div class="container" style="margin-top: 2%; margin-bottom: 2%;">
		<div class="col-sm-8">
			<div class="row">
				<div class="col-sm-12">
					<div class="training-intro">
						<p>As a Sales & Marketing
							professional, BQ offers you a wide range of complimentary
							trainings - in partnership with SalesMaxx - at all stages of your
							career.</p>
						<p>Improve your marketing practice today by choosing the
							trainings that best meets your needs.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-12 no-padding-div workshop-info card-panel">
						<div class="col-sm-3">
							<img alt="" src="/images/salesmaxx4.jpg"
								class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<h4>
								<a href="#">Funnel & Pipeline Management</a>
							</h4>
							<p>A strategic customer often holds significant revenue and
								margin potentials, however the account manager has to mine and
								work the account to yield those opportunities. This is the
								workshop to attend if you are managing a strategic account and
								your share-of-wallet has remained the same or is increasingly
								dwindling over the years.</p>
							<a class="btn btn-danger">Read Full Details</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-12 no-padding-div workshop-info card-panel">
						<div class="col-sm-3">
							<img alt="" src="/images/salesmaxx3.jpg"
								class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<h4>
								<a href="#">Acing the Sales Interview</a>
							</h4>
							<p>A strategic customer often holds significant revenue and
								margin potentials, however the account manager has to mine and
								work the account to yield those opportunities. This is the
								workshop to attend if you are managing a strategic account and
								your share-of-wallet has remained the same or is increasingly
								dwindling over the years.</p>
							<a class="btn btn-danger">Read Full Details</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-12 no-padding-div workshop-info card-panel">
						<div class="col-sm-3">
							<img alt="" src="/images/salesmaxx2.jpg"
								class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<h4>
								<a href="#">Your Network, Your career,& your business</a>
							</h4>
							<p>A strategic customer often holds significant revenue and
								margin potentials, however the account manager has to mine and
								work the account to yield those opportunities. This is the
								workshop to attend if you are managing a strategic account and
								your share-of-wallet has remained the same or is increasingly
								dwindling over the years.</p>
							<a class="btn btn-danger">Read Full Details</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-12 no-padding-div workshop-info card-panel">
						<div class="col-sm-3">
							<img alt="" src="/images/salesmaxx1.jpg"
								class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<h4>
								<a href="#">Finding &Winning Profitable Business</a>
							</h4>
							<p>A strategic customer often holds significant revenue and
								margin potentials, however the account manager has to mine and
								work the account to yield those opportunities. This is the
								workshop to attend if you are managing a strategic account and
								your share-of-wallet has remained the same or is increasingly
								dwindling over the years.</p>
							<a class="btn btn-danger">Read Full Details</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-12 no-padding-div workshop-info card-panel">
						<div class="col-sm-3">
							<img alt="" src="/images/salesmaxx2.jpg"
								class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<h4>
								<a href="#">Managing Targets & Quotas</a>
							</h4>
							<p>A strategic customer often holds significant revenue and
								margin potentials, however the account manager has to mine and
								work the account to yield those opportunities. This is the
								workshop to attend if you are managing a strategic account and
								your share-of-wallet has remained the same or is increasingly
								dwindling over the years.</p>
							<a class="btn btn-danger">Read Full Details</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-12 no-padding-div workshop-info card-panel">
						<div class="col-sm-3">
							<img alt="" src="/images/salesmaxx3.jpg"
								class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<h4>
								<a href="#">Getting Sales Strategy Right</a>
							</h4>
							<p>A strategic customer often holds significant revenue and
								margin potentials, however the account manager has to mine and
								work the account to yield those opportunities. This is the
								workshop to attend if you are managing a strategic account and
								your share-of-wallet has remained the same or is increasingly
								dwindling over the years.</p>
							<a class="btn btn-danger">Read Full Details</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-12 no-padding-div workshop-info card-panel">
						<div class="col-sm-3">
							<img alt="" src="/images/salesmaxx2.jpg"
								class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<h4>
								<a href="#">Cross & Up sell your products</a>
							</h4>
							<p>A strategic customer often holds significant revenue and
								margin potentials, however the account manager has to mine and
								work the account to yield those opportunities. This is the
								workshop to attend if you are managing a strategic account and
								your share-of-wallet has remained the same or is increasingly
								dwindling over the years.</p>
							<a class="btn btn-danger">Read Full Details</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-12 no-padding-div workshop-info card-panel">
						<div class="col-sm-3">
							<img alt="" src="/images/salesmaxx1.jpg"
								class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<h4>
								<a href="#">Sales Proposals that sell</a>
							</h4>
							<p>A strategic customer often holds significant revenue and
								margin potentials, however the account manager has to mine and
								work the account to yield those opportunities. This is the
								workshop to attend if you are managing a strategic account and
								your share-of-wallet has remained the same or is increasingly
								dwindling over the years.</p>
							<a class="btn btn-danger">Read Full Details</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-12 no-padding-div workshop-info card-panel">
						<div class="col-sm-3">
							<img alt="" src="/images/salesmaxx4.jpg"
								class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<h4>
								<a href="#">Mastering Sales Negotiation Tactics</a>
							</h4>
							<p>A strategic customer often holds significant revenue and
								margin potentials, however the account manager has to mine and
								work the account to yield those opportunities. This is the
								workshop to attend if you are managing a strategic account and
								your share-of-wallet has remained the same or is increasingly
								dwindling over the years.</p>
							<a class="btn btn-danger">Read Full Details</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-12 no-padding-div workshop-info card-panel">
						<div class="col-sm-3">
							<img alt="" src="/images/salesmaxx3.jpg"
								class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<h4>
								<a href="#">Protecting & Growing Key Accounts</a>
							</h4>
							<p>A strategic customer often holds significant revenue and
								margin potentials, however the account manager has to mine and
								work the account to yield those opportunities. This is the
								workshop to attend if you are managing a strategic account and
								your share-of-wallet has remained the same or is increasingly
								dwindling over the years.</p>
							<a class="btn btn-danger">Read Full Details</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-12 no-padding-div workshop-info card-panel">
						<div class="col-sm-3">
							<img alt="" src="/images/salesmaxx2.jpg"
								class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<h4>
								<a href="#">Customer Profiling - Weeding - Out - To - Win
									(WTW)</a>
							</h4>
							<p>A strategic customer often holds significant revenue and
								margin potentials, however the account manager has to mine and
								work the account to yield those opportunities. This is the
								workshop to attend if you are managing a strategic account and
								your share-of-wallet has remained the same or is increasingly
								dwindling over the years.</p>
							<a class="btn btn-danger">Read Full Details</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-12 no-padding-div workshop-info card-panel">
						<div class="col-sm-3">
							<img alt="" src="/images/salesmaxx1.jpg"
								class="img img-responsive">
						</div>
						<div class="col-sm-9">
							<h4>
								<a href="#">Using Technology to support Sales</a>
							</h4>
							<p>A strategic customer often holds significant revenue and
								margin potentials, however the account manager has to mine and
								work the account to yield those opportunities. This is the
								workshop to attend if you are managing a strategic account and
								your share-of-wallet has remained the same or is increasingly
								dwindling over the years.</p>
							<a class="btn btn-danger">Read Full Details</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="col-sm-4">
			<%@ include file="/WEB-INF/pages/certification-sidebar.html"%>
		</div>
	</div>

	<%@ include file="/WEB-INF/pages/footer.html"%>
	<script src="/js/jquery-1.11.2.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
</body>
</html>