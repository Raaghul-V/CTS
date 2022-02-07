<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
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
<link rel="stylesheet" href="./css/registrationform.css">
<link rel="stylesheet" href="./css/loginform.css">

<style>
#container1 {
	display: grid;
	grid-template-columns: 1fr 1fr;
	grid-gap: 20px;
	max-height: 60px;
	text-align:left;
}
</style>

<title>CTS Express</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
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
					<li class="nav-item active"><a class="nav-link fs-4"
						href="Logout">Logout <span class="sr-only"></span></a></li>
				</ul>
			</div>
		</span>
	</div>
	</nav>

	<!-- end of navbar -->
	<!-- start of header -->
	<header class="container-fluid ">
	<div class="rules container h-100 d-flex justify-content-center">
		<div
			class="row h-100 align-items-center d-flex justify-content-center ">
			<h1 class="text-decoration-underline text-center py-1 ">CTS
				Express</h1>
			<div class="col-md-8 d-flex justify-content-center">
				<!-- start of login form -->

				<section
					class="h-100 gradient-form text-center align-items-center d-flex justify-content-center">
				<div class="container-fluid  h-100 text-center">
					<div
						class="row d-flex justify-content-center align-items-center h-100">
						<div class="col-xl-10">
							<div class="card rounded-3 text-black align-items-center">
								<div class="row g-0 text-center">
									<div class="col-lg-12 align-items-center">
										<div class="card-body p-md-3 mx-md-3">

											<div class="text-center">
												<img src=" ./image/package.png" style="width: 150px;"
													alt="logo">
											</div>
											<center>
												<form action="UserQuotationBO" method="post">
												<br><br>
														<div class="form-group mb-2" id="container1">
															<label class="form-label fs-4" for="packageWeight">Package Weight (in kg)</label>
															<input type="text" name="packageWeight" />
														</div>
														<div class="form-group mb-2" id="container1">
															<label class="form-label fs-4" for="senderAddress">Pickup Address</label>
															<input type="text" rows="5" cols="30"
																name="senderAddress" required="required" />
														</div>

														<div class="form-group mb-2" id="container1">
															<label class="form-label fs-4" for="receiverAddress">Delivery Address</label>
															<input type="text" rows="5" cols="30"
																name="receiverAddress" required="required" />
														</div>
														<div class="form-group mb-2" id="container1">
															<label class="form-label fs-4" for="customerId">customerId</label>
															<input type="number" name="customerId"
																required="required" />
														</div>
													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="type">Type</label>
														<select name="type">

																<option value="Parcel_Delivery">Parcel Delivery</option>
																<option value="Document_Delivery">Document
																	Delivery</option>
																<option value="International_Delivery">International
																	Delivery</option>
																<option value="European_Delivery">European
																	Delivery</option>
																<option value="Luggage_Delivery">Luggage
																	Delivery</option>
																<option value="Vehicle_Delivery">Vehicle
																	Delivery</option>
														</select>
													</div>

													<div class="form-group mb-2" id="container1">
															<label class="form-label fs-4" for="currentDate">Current Date</label>
															<input placeholder="yyyy-mm-dd" type="text"
																name="currentDate" required="required" />
														</div><br><br>
														<div class="form-group mb-2" align="center">

															<input
																class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"
																type="submit" value="Raise Quotation to CTS" />
														</div>
														
														</form>
														
														</center>

														</div>
														</div>
														</div>
														</div>
														
														</div>
														</div>
														</div>
														</section>
														</div>
														</div>
														</div>
														</header>

														<section class="footer bg-dark">
														<div class="container py-5 text-white text-center">&copy
															Copyrights reserved &#64 CTS Express 2022</div>
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
</body>
</html>