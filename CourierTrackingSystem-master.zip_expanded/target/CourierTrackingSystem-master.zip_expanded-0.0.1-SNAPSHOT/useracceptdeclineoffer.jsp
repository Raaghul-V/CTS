<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
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

<style>
table {
	border: 1px solid black;
	border-collapse: collapse;
}

table th {
	border: 1px solid black;
	text-align: center;
	vertical-align: bottom;
}

table tr {
	border: 1px solid black;
	text-align: center;
	vertical-align: bottom;
}

table td {
	border: 1px solid black;
	text-align: center;
	vertical-align: bottom;
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
	<div class="container-fluid rules">
		<br>
		<h2 class="text-decoration-underline text-center">CTS Express</h2>
		<br>
		<h3 class="text-decoration-underline text-center">Shipment
			Tracking Made Easy</h3>
		<br><br><br><br>
		
		<h3 class="text-decoration-underline text-center">Each offer is generated from each of your quotations.<br><br>Accept the offer to initiate the delivery process</h3>
		
		<div class="text-decoration-underline text-center">
			<br> <br>

    <s:setDataSource driver="com.mysql.jdbc.Driver" 
				url="jdbc:mysql://localhost:3306/cts"
				user="root" password="root" var="db" /> 
				</div>

<s:query var="rec" dataSource="${db}">
select * from quotation;
</s:query>
<form action="UpdateUserOffer" method="post">
<table class="table"><tr><th>package Weight</th><th>sender address</th><th>receiver address</th>
<th>customer Id</th><th>type</th><th>Quote date</th><th>Offer date</th><th>Distance</th><th>cost</th><th>Expected Delivery date</th><th>Update</th><th>Update</th></tr>
<c:forEach items="${rec.rows}" var="v">
<tr><td>${v.packageWeight}
</td>
<td>${v.senderAddress}</td>
<td>${v.receiverAddress}</td>
<td><input type="number" name="customerId" value="${v.customerId}" readonly></td>
<td>${v.type}</td>
<td>${v.QuoteDate}</td>
<td>${v.offerDate}</td>
<td>${v.distance}</td>
<td>${v.cost}</td>
<td>${v.expectedDeiveryDate}</td>

<td><select name="update">
<option value="accepted">Accept Offer</option>
<option value="rejected">Reject Offer</option>
</select>
</td>
<td><input type="submit"  value="update Offer"></td>

</tr>
</c:forEach>
</table>
</form>
	</div>
	<section class="footer bg-dark">
      <div class="container py-2 text-white text-center">
        &copy Copyrights reserved &#64 CTS Express 2022
      </div>
    </section>

</body>
</html>