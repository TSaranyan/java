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

<!-- Bootstrap core CSS -->
<link href="/../thirikkale-dev/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Fontawesome CSS -->
<link href="/../thirikkale-dev/resources/css/font-awesome.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/../thirikkale-dev/resources/css/style.css" rel="stylesheet">

</head>

<body>

	<%@ include file="/../views/header.jsp"%>

	<!-- Page Content -->
	<div class="container">

		<div class="row">
			<h2 class="text-center text-center w-100 mt-4">Publisher Contact Details</h2>
		</div>
		<label cssClass="error"><p style="color:red">${controllererror}</p></label>
		<div class="row">
			<form:form action="createpartner" role="form" method="post"
				commandName="partner">
				<div class="form-group">
					<label for="name">Name * </label>
					<div>
						<form:input path="name" class="form-control"
							placeholder="Name" value="Samantha" />
					</div>
					<form:errors path="name" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="email">E-mail * </label>
					<div>
						<form:input path="email" class="form-control"
							placeholder="E-mail Address" value="Samantha@yahoo.com" /> 
					</div>
					<form:errors path="email" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="password">Password * </label>
					<div>
						<form:input type="password" path="password" class="form-control"
							placeholder="Password"  value="123" />
					</div>
					<form:errors path="password" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="phoneNo1">Phone No1 * </label>
					<div>
						<form:input path="phoneNo1" class="form-control"
							placeholder="Phone No1"  value="+94715112003" />
					</div>
					<form:errors path="phoneNo1" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="phoneNo2">Phone No2 * </label>
					<div>
						<form:input path="phoneNo2" class="form-control"
							placeholder="Phone No2" value="+94715112003" />
					</div>
					<form:errors path="phoneNo2" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="phoneNo3">Phone No3 * </label>
					<div>
						<form:input path="phoneNo3" class="form-control"
							placeholder="Phone No3" value="+94715112003" />
					</div>
					<form:errors path="phoneNo3" cssClass="error" />
				</div>
				<div class="form-group">
					<form:hidden path="vehicleType" />
					<form:button type="submit" id="btnContinue"
						class="btn-lg btn-primary pull-right">Continue
                             </form:button>
				</div>
			</form:form>
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

	<!-- Bootstrap core JavaScript -->
	<script src="/../thirikkale-dev/resources/jquery/jquery.min.js"></script>
	<script src="/../thirikkale-dev/resources/popper/popper.min.js"></script>
	<script src="/../thirikkale-dev/resources/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>
