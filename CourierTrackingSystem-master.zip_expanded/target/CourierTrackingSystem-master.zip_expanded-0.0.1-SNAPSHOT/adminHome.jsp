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
					<li class="nav-item active"><a class="nav-link fs-4"
						href="Logout">Logout <span class="sr-only"></span></a></li>
				</ul>
			</div>
		</span>
	</div>
	</nav>

	<!-- end of navbar -->
	<!-- start of header --> 
	 <div class="container-fluid rules"><br><br>
    <h2 class="text-decoration-underline text-center">CTS Express</h2>
    <% HttpSession s=request.getSession(false);%><br><br>
	<h2><center> Welcome <%=s.getAttribute("ref") %></center></h2><br><br>
	<br><br>
	<div class="text-center">
	<form action="request" method="get">
    <div><input class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit" value="Pending Registration Requests"></input></div>
    </form><br><br>
    <div><a class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" href="package.jsp" role="button">Package</a></div><br><br>
    <div><a class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" href="warehouse.jsp" role="button">Warehouse Update</a></div>
	</div>
	</div>
	<!-- end of header --> 
	
	
	<!-- <h1 class="text-decoration-underline text-center">Courier Tracking System</h1><br>
	<p class="fs-4 ">CTS Express is India best logistics software,
						which offers you automated shipping solution. Using this, you can
						ship anywhere in India and abroad using the best courier company
						and at discounted rates.Company members share a common purpose,
						and unite to focus their various talents and organize their
						collectively available skills or resources to achieve specific,
						declared goals.</p> -->
	
	
	
	
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
                <p class="fs-5">
                  Domestic Courier Service. International Courier Services. Door To Door Delivery. Local Courier Services. Cargo Courier Services.
                </p>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card">
              <div class="card-body">
                <i class="fa fa-map-marker myicon"></i>
                <h1>Address</h1>
                <p class="fs-5">
                  Bengaluru Bagmane Solarium City,Near Graphite India Road,Doddanekundi Extension,Bengaluru East 560037-Karnataka
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
        <p>&copy Copyrights reserved &#64 CTS Express 2022 </p>
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