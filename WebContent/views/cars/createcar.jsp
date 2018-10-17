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

	<!-- Header with Background Image 
    <header class="business-header">

        <div class="tag-line">
            <div class="container">
                <h1>RENT A CAR AT LOW PRICES</h1>
            </div>
        </div>

    </header>-->

	<!-- Page Content -->
	<div class="container">

		<div class="row">
			<h2 class="text-center text-center w-100 mt-4">REGISTER A CAR</h2>
		</div>

		<div class="row">
			<form:form action="createcaraddmore" role="form" method="post"
				commandName="carDeatils">
				<div class="form-group">
					<label for="make">Make *</label>
					<div>
						<form:select id="make" path="make" items="${makes}"
							class="form-control" placeholder="Car Make" />
						<form:input type='hidden' id='makeSelected' path="makeSelected" value='1'/>
					</div>
				</div>
				<div class="form-group">
					<label for="model">Model *</label>
					<div>
						<form:select id="model" path="model" items="${models}"
							class="form-control" placeholder="Car Model" />
						<form:input type='hidden' id='modelName' path="modelName" value='2'/>
					</div>
				</div>
				<div class="form-group">
					<label for="noOfPassengers">Number of Passengers * </label>
					<div>
						<form:input path="noOfPassengers" class="form-control"
							placeholder="Number of Passengers" value="5" />
					</div>
					<form:errors path="noOfPassengers" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="numberOfLuggages">Number of Luggages * </label>
					<div>
						<form:input path="numberOfLuggages" class="form-control"
							placeholder="Number of Luggages" value="2" />
					</div>
					<form:errors path="numberOfLuggages" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="numberOfDoors">Number of Doors * </label>
					<div>
						<form:input path="numberOfDoors" class="form-control"
							placeholder="Number of Doors" value="5" />
					</div>
					<form:errors path="numberOfDoors" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="transmissionType">Transmission Type * </label>
					<div>
						<select class="form-control" path="transmissionType" id="transmissionType">
							<option value="1">Manual</option>
							<option value="2">Auto</option>
						</select>
					</div>
					<form:errors path="transmissionType" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="airConditioning">Air Conditioning * </label>
					<div>
						<select class="form-control" path="airConditioning" id="airConditioning">
							<option value="1">Yes</option>
							<option value="0">No</option>
						</select>
					</div>
					<form:errors path="airConditioning" cssClass="error" />
				</div>	
				<div class="form-group">
					<label for="fuelType">Fuel Type * </label>
					<div>
						<select class="form-control" id="fuelType" path="fuelType" >
							<option value="1">Petrol</option>
							<option value="2">Diesel</option>
							<option value="3">Electric</option>
						</select>
					</div>
					<form:errors path="fuelType" cssClass="error" />
				</div>	
				<div class="form-group">
					<label for="engineCapacity">Engine Capacity * </label>
					<div>
						<form:input path="engineCapacity" class="form-control"
							placeholder="Engine Capacity (CC)" value="1500" />
					</div>
					<form:errors path="engineCapacity" cssClass="error" />
				</div>	
				<div class="form-group">
					<label for="allowSelfDrive">Allow Self Drive * </label>
					<div>
						<select class="form-control" id="allowSelfDrive" path="allowSelfDrive">
							<option value="1">Yes</option>
							<option value="0">No</option>
						</select>
					</div>
					<form:errors path="allowSelfDrive" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="refundableDeposit">Refundable Deposit </label>
					<div>
						<form:input path="refundableDeposit" class="form-control"
							placeholder="Refundable Deposit (Rs)" value="15000" />
					</div>
					<form:errors path="refundableDeposit" cssClass="error" />
				</div>	
				<div class="form-group">
					<label for="rentalPerDay">Rental Per Day *</label>
					<div>
						<form:input path="rentalPerDay" class="form-control"
							placeholder="Rental Per Day (Rs)" value="5500" />
					</div>
					<form:errors path="rentalPerDay" cssClass="error" />
				</div>	
				<div class="form-group">
					<label for="freeMileage">Free Mileage *</label>
					<div>
						<form:input path="freeMileage" class="form-control"
							placeholder="Free Mileage (Km)" value="55" />
					</div>
					<form:errors path="freeMileage" cssClass="error" />
				</div>
				<div class="form-group">
					<label for="excessChargePerKm">Excess Charge Per Km *</label>
					<div>
						<form:input path="excessChargePerKm" class="form-control"
							placeholder="Excess Charge Per Km (Rs)" value="65" />
					</div>
					<form:errors path="excessChargePerKm" cssClass="error" />
				</div>
				<div class="form-group">
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
