<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>CTS Express</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css2?family=Catamaran:wght@500&family=Old+Standard+TT:wght@700&display=swap"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="shortcut icon" type="image/jpg" href="./image/package.png" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="./css/style.css">
<title>CTS Express</title>
<style>
#container1 {
	display: grid;
	grid-template-columns: 1fr 1fr;
	grid-gap: 20px;
	max-height: 60px;
	text-align:left;
}
</style>
</head>


<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand fs-2"> <img src="./image/package.png"
			alt="" width="50" height="40" class="d-inline-block align-text-top">
			CTS Express
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<span>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link fs-4"
						href="index.html">Home <span class="sr-only"></span></a></li>
					<li class="nav-item"><a class="nav-link fs-4" href="rules.jsp">Rules
							& Policies</a></li>

					<li class="nav-item"><a class="nav-link fs-4"
						href="ContactUs.html" tabindex="-1" aria-disabled="true">Contact
							us</a></li>
				</ul>
			</div>
		</span>
	</div>
	</nav>

	<header class="container-fluid ">
	<div class="rules container-fluid h-100 d-flex justify-content-center">
		<div
			class="row h-100 align-items-center d-flex justify-content-center ">
			<h1 class="text-decoration-underline text-center py-1 ">CTS
				Express</h1>
			<div class="col-md-15 d-flex justify-content-center">
				<!-- start of login form -->

				<section
					class="h-100 gradient-form text-center align-items-center d-flex justify-content-center">
				<div class="container-fluid  h-100 text-center">
					<div
						class="row d-flex justify-content-center align-items-center h-100">
						<div class="col-xl-10">
							<div class="card rounded-5 text-black align-items-center">
								<div class="row g-0 text-center">
									<div class="col-lg-15 align-items-center">
										<div class="card-body p-md-3 mx-md-3">

											<div class="text-center">
												<img src=" ./image/package.png" style="width: 150px;"
													alt="logo">
											</div>
											<center>
												<form action="PackageInsertion" method="post" name="Form"
													>
													<p class="fs-4">Package / Consignment Creation</p>
													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="consignmentId">Enter
															Consignment ID: </label> <input type="number"
															name="consignmentId" placeholder="Enter Consignment ID"
															required="required" />
													</div>
													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="acceptDate">Enter
															the Date when Parcel is Accepted:</label> <input type="text"
															name="acceptDate"
															placeholder="Enter date (in YYYY-MM-DD)"
															required="required" />
													</div>
													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="packageWeight">Enter
															the Weight of the Parcel: (in kg) </label> <input type="text"
															name="packageWeight" placeholder="Enter Package weight" />
													</div>
													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="cost">Enter
															the Cost for Parcel:</label> <input type="text" name="cost"
															placeholder="cost" required="required" />
													</div>

													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="senderAddress">Sender
															Address</label> <input type="text" name="senderAddress"
															placeholder="Customer Address" />
													</div>
													<div class="form-group mb-2" id="container1">

														<label class="form-label fs-4" for="receiverAddress">Receiver
															Address</label> <input type="text" name="receiverAddress"
															placeholder="Deliver location address"
															required="required" />
													</div>
													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="distance">Enter
															the Distance the Parcel travels:</label> <input type="number"
															name="distance"
															placeholder="Enter distance of parcel travel"
															required="required" />

													</div>

													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="employeeId">Enter
															StaffId of Staff assigned to the parcel: </label> <input
															type="number" name="employeeId"
															placeholder="Enter Staff Id" />
													</div>
													<br>
													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="customerId">Enter
															User Id of Customer for the parcel: </label> <input type="number"
															name="customerId" placeholder="Enter customer Id"
															required="required" />
													</div>

													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="type">Select
															the Type of Parcel: </label> <select name="type">
														<option value="Parcel Delivery">Parcel Delivery</option>
														<option value="Document Delivery">Document
															Delivery</option>
														<option value="International Delivery">International
															Delivery</option>
														<option value="European Delivery">European
															Delivery</option>
														<option value="Luggage Delivery">Luggage Delivery
														</option>
														<option value="Vehicle Delivery">Vehicle Delivery
														</option>
														</select>
													</div>
													<!-- make select package type -->

													<br><br>
													<div class="form-group mb-2" align="center">

														<input
															class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"
															type="submit" onclick="return validateForm()" value="Submit" />
													</div>

												</form>
											</center>

										</div>
									</div><br><br>
								</div>
							</div>
							<br> <br><br>
						</div>
					</div>
				</div>
				</section>
			</div>
		</div>
	</div>
	</header>

	
	<section class="footer bg-dark">
	<div class="container py-2 text-white text-center">
		<p>&copy Copyrights reserved &#64 CTS Express 2022</p>
	</div>
	</section>
	<!-- end of footer section -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
		
	<script type="text/javascript">
		function validateForm() {
			var a = document.forms["Form"]["consignmentId"].value;
			var b = document.forms["Form"]["acceptDate"].value;
			var c = document.forms["Form"]["packageWeight"].value;
			var d = document.forms["Form"]["cost"].value;
			var e = document.forms["Form"]["senderAddress"].value;
			var f = document.forms["Form"]["receiverAddress"].value;
			var g = document.forms["Form"]["distance"].value;
			var h = document.forms["Form"]["employeeId"].value;
			var i = document.forms["Form"]["customerId"].value;
			if (a == null || a == "", b == null || b == "", c == null
					|| c == "", d == null || d == "", e == null || e == "",
					f == null || f == "", g == null || g == "", h == null
							|| h == "", i == null || i == "") {
				alert("Please Fill All Required Field");
				return false;
			}
		}
	</script>
</body>

</html>