<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
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

	<!-- end of navbar -->
	<!-- header section -->
	<header class="container-fluid">
	<div class="rules container-fluid h-100 d-flex justify-content-center">
		<div
			class="row h-100 align-items-center d-flex justify-content-center ">
			<h1 class="text-decoration-underline text-center py-1 ">CTS
				Express</h1>
			<div class="col-md-8 d-flex justify-content-center">
				<!-- start of login form -->

				<section
					class="h-100 gradient-form text-center align-items-center d-flex justify-content-center">
				<div class="container  h-100 text-center">
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
												<form action="StaffRegistrationModule" method="post">
													<p class="fs-4">Registration form</p>
													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="firstName">First
															Name</label> <input type="text" name="firstName"
															class="form-control" placeholder="First Name" required />
													</div>

													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="lastName">Last
															Name</label> <input type="text" name="lastName"
															class="form-control" placeholder="Last Name" required />
													</div>

													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="gender">Gender</label>
														<select name="gender" class="form-control"
															placeholder="gender" required="required">
															<option class="form-control" value='Male'>Male</option>
															<option class="form-control" value='Female'>Female</option>
														</select>
													</div>
													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="email">E-mail</label>
														<input type="text" name="email" class="form-control"
															placeholder="xxxxxxxxx&gmail.com" required />
													</div>

													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="contactNumber">Contact
															Number</label> <input type="text" name="contactNumber"
															class="form-control" placeholder="Contact Number"
															required />
													</div>

													<s:setDataSource driver="com.mysql.jdbc.Driver"
														url="jdbc:mysql://localhost:3306/cts" user="root"
														password="root" var="db" />


													<s:query var="rec" dataSource="${db}">
select max(employeeId) value from staff;
</s:query>
													<c:forEach items="${rec.rows}" var="v">
														<c:set var="res" value="${v.value}"></c:set>
													</c:forEach>

													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="EmployeeId">Employee
															ID</label> <input type="number" name="EmployeeId"
															class="form-control" value="${res+1}" readonly />
													</div>

													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="password">Password</label>
														<input type="password" name="password"
															class="form-control" placeholder="password" required />
													</div>

													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="salary">salary
															in Rs. </label> <input type="number" name="salary"
															class="form-control" placeholder="salary" required />
													</div>

													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="designation">Designation</label>
														<input type="text" name="designation" class="form-control"
															placeholder="Manager/Staff" required />
													</div>










													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="permanentAddress">Permanent
															Address</label> <input type="text" name="permanentAddress"
															class="form-control" placeholder="Permanent Address"
															required />
													</div>

													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="correpondanceAddress">Current
															Address</label> <input type="text"
															name="correpondanceAddress" class="form-control"
															placeholder="Current Address" required />
													</div>

													<div class="form-group mb-2" id="container1">
														<label class="form-label fs-4" for="loginType">Registration
															type</label> <select name="loginType"
															placeholder="Enter A-admin S-staff" required="required">
															<option value='S'>Staff</option>
														</select>
													</div>
													
													<br><br>

													<div class="form-group mb-2" align="center">

														<input
															class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"
															type="submit" value="Submit" />
													</div>
												</form>
											</center>

										</div>
									</div>
								</div>
							</div>
							<br> 
						</div>
					</div>
				</div>
				</section>
			</div>
		</div>
	</div>
	<!-- header section --> <!-- services section --> <section
		class="services">
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
							India Road,Doddanekundi Extension,Bengaluru East 560037-Karnataka</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section> <!-- End of services section --> <!-- footer section --> 
	
	<section class="footer bg-dark">
	<div class="container py-2 text-white text-center">
		<p>&copy Copyrights reserved &#64 CTS Express 2022</p>
	</div>
	</section> <!-- end of footer section --> <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script> <script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script> <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
</body>
</html>