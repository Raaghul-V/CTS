<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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
<link rel="stylesheet" href="./css/loginform.css">
<link rel="stylesheet" href="./css/registrationform.css">
<title>CTS Express</title>
</head>
<body>
	<!-- start of navbar -->

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

	<!-- end of navbar -->

	<!-- header section -->
	<header class="container-fluid">
	<div class="rules container-fluid h-100">
		<div class="row h-100 ">
			<h1 class="text-decoration-underline text-center py-1 ">CTS
				Express</h1>
			<div class="col-md-6 text-center">
				<!-- start of login form -->

				<section class="h-100 gradient-form">
				<div class="container  h-100">
					<div
						class="row d-flex justify-content-center align-items-center h-100">
						<div class="col-xl-10">
							<div class="card rounded-3 text-black">
								<div class="row g-0">
									<div class="col-lg-12">
										<div class="card-body p-md-3 mx-md-3">

											<div class="text-center">
												<img src=" ./image/package.png" style="width: 165px;"
													alt="logo">
											</div>

											<form action="UserLoginBOValidation" method="post">
												<p class="fs-4">Please login to your account</p>

												<div class="form-group mb-4" id="container2">
													<label class="form-label fs-4" for="email">Username</label>
													<input type="text" name="email" class="form-control"
														placeholder="Email address" required />

												</div>


												<div class="form-group mb-4" id="container2">
													<label class="form-label fs-4" for="password">Password</label>
													<input type="password" name="password" class="form-control"
														placeholder="Password" required />
												</div>
												
												<br>

												<div class="text-center pt-1 mb-5 pb-1" id="container2">
													<input
														class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"
														type="submit" value="Log in" /> 
														<a class="text-muted fs-4" href="#!">Forgot password?</a>
												</div>

											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				</section>
				<!-- end of login form -->

			</div>
			<div class="col-md-6 text-center">
				<!--start of registration form  -->
				<div class="registration-form">
					<form action="UserCreation" method="post">
						<div class="form-group">
							<input type="text" class="form-control item" name="firstName"
								placeholder="FirstName" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control item" name="lastName"
								placeholder="LastName" required>
						</div>
						<div class="form-group">
							<select class="form-control item" name="gender" />
							<option class="form-control item" value="male">male</option>
							<option class="form-control item" value="female">female</option>
						</div>
						<div class="form-group">
							<input type="text" class="form-control item" name="email"
								placeholder="Email" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control item" name="contactNumber"
								placeholder="Contact Number" required>
						</div>

						<s:setDataSource driver="com.mysql.jdbc.Driver"
							url="jdbc:mysql://localhost:3306/cts" user="root" password="root"
							var="db" />

						<s:query var="rec" dataSource="${db}">
select max(customerId) value from user;
</s:query>
						<c:forEach items="${rec.rows}" var="v">
							<c:set var="res" value="${v.value}"></c:set>
						</c:forEach>
						<div class="form-group" id="container">
							<div><label class="form-label fs-3" for="CustomerId">Your Customer ID</label></div>
							<div class="form-group">
								<input type="text" class="form-control item" name="CustomerId"
									value="${res+1}" readonly />
							</div>
						</div>

						<div class="form-group">
							<input type="password" class="form-control item" name="password"
								placeholder="Password" required>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-block create-account">Create
								Account</button>
						</div>
					</form>
				</div>
				<!--end of registration form  -->

			</div>
		</div>
	</div>
	</header>


	<!-- end of header section -->
	<!-- services section -->

	<section class="services">
	<div class="container text-center py-5">
		<h1>About Us</h1>

		<div class="row">
			<div class="col-md-6">
				<!-- first col -->
				<div class="card">
					<div class="card-body">
						<i class="fa fa-truck myicon"></i>
						<h1>Our Services</h1>
						<p class="fs-5">Domestic Courier Service. International
							Courier Services. Door To Door Delivery. Local Courier Services.
							Cargo Courier Services.</p>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<i class="fa fa-map-marker myicon"></i>
						<h1>Address</h1>
						<p class="fs-5">Bengaluru Bagmane Solarium City,Near Graphite
							India Road,Doddanekundi Extension,Bengaluru East 560037-Karnataka
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<!-- End of services section -->
	<!-- footer section -->

	<section class="footer bg-dark">
	<div class="container py-5 text-white text-center">
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









</body>
</html>