<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
       <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

table {
	border: 1px solid black;
	border-collapse: collapse;
}

table th {
	border: 1px solid black;
	text-align: center;
	vertical-align: center;
}

table tr {
	border: 1px solid black;
	text-align: center;
	vertical-align: center;
}

table td {
	border: 1px solid black;
	text-align: center;
	vertical-align: center;
}

</style>
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
				
				<h1 class="text-decoration-underline text-center py-1 "><b>Package Updation</b></h1>
				
<div style="overflow:auto">

  <div class="main">

<%
			String consignmentId=request.getParameter("consignmentId");
			String acceptDate=request.getParameter("acceptDate");
    		String packageWeight=request.getParameter("packageWeight");
    		String cost=request.getParameter("cost");
    		String receiverAddress=request.getParameter("receiverAddress");    		
    		String employeeId=request.getParameter("employeeId");
    		String customerId=request.getParameter("customerId");
    		String type=request.getParameter("type");
    		String currentLocation=request.getParameter("currentLocation");
    		String currentDate=request.getParameter("currentDate");
    		String packageStatus=request.getParameter("packageStatus");
%>
<c:set var="receiverAddress" value="<%=receiverAddress%>">   </c:set>
    <center>
    <fieldset style="width:40%;">
    <br><br>
    <form action="PackageUpdation" method="post">
    <table class="table">
    <tr><td>Consignment ID</td><td><input value=<%=consignmentId%> readonly="readonly" type="number" name="consignmentId" required="required"/></td></tr>
    <tr><td>Accept Date</td><td><input value=<%=acceptDate%> readonly="readonly" type="text" name="acceptDate" required="required"/></td></tr>
    <tr><td>Package Weight</td><td><input value=<%=packageWeight%> readonly="readonly" type="text" name="packageWeight" /></td></tr>
    <tr><td>Cost </td><td><input type="text" value=<%=cost%> name="cost" readonly="readonly" placeholder="cost" required="required"/></td></tr>    
    <tr><td>Receiver Address</td><td><input value="${receiverAddress}" readonly="readonly" type="text" name="receiverAddress" required="required"></td></tr>
    <tr><td>employeeId *</td><td><input value=<%=employeeId%> type="number" name="employeeId"/></td></tr>
    <tr><td>customerId</td><td><input value=<%=customerId%> readonly="readonly" type="number" name="customerId"  required="required"/></td></tr>
    <tr><td>Type *</td><td><select name="type">
    							<option value=<%=type%>><%=type%></option>
    							<option value="Parcel_Delivery">Parcel Delivery</option>
								<option value="Document_Delivery">Document Delivery</option>
								<option value="International_Delivery">International
									Delivery</option>
								<option value="European_Delivery">European Delivery</option>
								<option value="Luggage_Delivery">Luggage Delivery</option>
								<option value="Vehicle_Delivery">Vehicle Delivery</option>
								</select>
	</td></tr>
    
    <tr><td>Current Location *</td><td> <input value=<%=currentLocation%> type="text" name="currentLocation"  required="required"/></td></tr>
    <tr><td>Current Date *</td><td> <input value=<%=currentDate%> type="text" name="currentDate" required="required"/></td></tr>
    
    <tr><td>Package Status *</td><td><select name="packageStatus">
    <option value=<%=packageStatus%>><%=packageStatus%></option>
    <option value="Booked">Booked</option>
    <option value="in_transit">in transit</option>
    <option value="delivered">delivered</option>
    </select>
    </td></tr>
    </table> 
    <input class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit" value="Update details" />
    </form>
    </fieldset>
    </center>
   
  </div><br>
  </div>
  </div>
  

</div>

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



	<section class="footer bg-dark">
	<div class="container py-2 text-white text-center">&copy
		Copyrights reserved &#64 CTS Express 2022</div>
	</section>

</body>
</html>
