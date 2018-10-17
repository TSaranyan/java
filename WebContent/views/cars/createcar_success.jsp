<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>:: Thirikkale</title>
<!-- Bootstrap core JavaScript -->
<script src="/../thirikkale-dev/resources/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/../thirikkale-dev/resources/css/popup.css">

<%@ include file="/views/bootstrap.jsp" %>
<!-- Bootstrap core CSS -->
<link href="/../thirikkale-dev/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Fontawesome CSS -->
<link href="/../thirikkale-dev/resources/css/font-awesome.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/../thirikkale-dev/resources/css/style.css" rel="stylesheet">

   	<style type="text/css">
   	
   	div.show-image
	  {
	  position: relative;
	  float:left;
	  margin:5px;
	  }
	
	div.show-image:hover #img-container
	  {
	  display: block;
	  }
	
	div.show-image #img-container
	  {
	  position:absolute;
	  bottom:5px;
	  left:5px;
	  display:none;
	  }
	div.show-image input
	  {
	  margin: 0 auto;
	  }
	.ic_caption {
		position: absolute;
		opacity: 0.6;
		overflow: hidden;
		margin: 0px;
		padding: 0px;
		left: 0px;
		right: 0px;
		cursor: default;
		filter: progid:DXImageTransform.Microsoft.Alpha(opacity=60);
	}
	 
	.ic_caption h3 {
		padding: 10px 5px 3px 10px;
		margin: 0px;
		font-size: 18px;
		text-align: left;
		color: #ffffff;
	}
	.ic_text {
		padding: 5px;
		margin: 0px;
		text-align: justify;
		font-size: 12px;
	}

.img-button {
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:12px;
	font-weight:bold;
	text-decoration:none;
	text-shadow:0px -1px 0px #2b665e;
}

.img-button:active {
	position:relative;
	top:1px;
}

a:link {
    text-decoration: none;
}
   	</style>

</head>

<body>

	<%@ include file="/../views/header.jsp"%>

	<!-- Page Content -->
	<div class="container">

		<div class="row">
			<h2 class="w-100 mt-4">Congratulations!</h2>
			<br/>
			<h4 class="w-100 mt-4 ml-5">Your request is in progress.</h4>
			<br/>
			<h3 class="w-100 mt-4">Now what?</h3>
			<br/>
			<h4 class="w-100 mt-4 ml-5">We will review your registration shortly and make sure you have everything you need to get started.</h4>
			<br/>
			<h4 class="w-100 mt-4 ml-5">Once we're done, you will receive a welcome email with confirmation details.Our agent will contact you shortly to confirm your car registration.</h4>
		</div>

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Thirikkale
				2017</p>
		</div>
		<!-- /.container -->
	</footer>



</body>

</html>
