<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>CTS Express</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
	box-sizing: border-box;
}

.menu {
	float: left;
	width: 20%;
}

.menuitem {
	padding: 8px;
	margin-top: 7px;
	border-bottom: 1px solid #f1f1f1;
}

.main {
	float: left;
	width: 60%;
	padding: 0 20px;
	overflow: hidden;
}

.right {
	background-color: hsl(240, 100%, 70%);
	float: left;
	width: 20%;
	padding: 10px 15px;
	margin-top: 7px;
}

footer {
	bottom: 0%;
	min-width: 100%;
	position: fixed;
	background-color: #f1f1f1;
	text-align: center;
	padding: 10px;
	margin-bottom: 0px;
	font-size: 12px;
}

#a {
	color: #e83c3c;
	background-color: #8cf442;
	border: none;
}
</style>
</head>
<body style="font-family: Verdana;">

	<div style="background-color: hsl(240, 100%, 65%); padding: 15px;">
		<h1>
			<font color="white">CTS Express</font>
		</h1>
		<h3>
			<font color="white">Shipment Tracking Made Easy</font>
		</h3>
	</div>


	<div style="overflow: auto">
		<div class="menu">

			<div class="menuitem">
				<a href="package.jsp" target="blank" rel="nofollow">back</a>
			</div>
			<div class="menuitem">
				<a href="rules.jsp" target="blank" rel="nofollow">Rules and
					policies</a>
			</div>
		</div>

		<div class="main">
			<h2>CTS Express</h2>
			<p
				Style="background-color: hsl(240, 100%, 90%); font-family: verdana;">CTS Express
				A company, abbreviated as CTS co., is a legal entity made up of
				an association of people, be they natural, legal, or a mixture of
				both, for carrying on a commercial or industrial enterprise. Company
				members share a common purpose, and unite to focus their various
				talents and organize their collectively available skills or
				resources to achieve specific, declared goals.</p>

			<center>
				<form action="PackageInsertion" method="post">
					<table border="5px">

						<tr>
							<td>Enter consignment Id:</td>
							<td><input type="number" name="consignmentId"
								placeholder="Enter Consignment ID" required="required" /></td>
						</tr>
						<tr>
							<td>Enter the Date when Parcel is Accepted:</td>
							<td><input type="text" name="acceptDate"
								placeholder="Enter date (in YYYY-MM-DD)" required="required" /></td>
						</tr>
						<tr>
							<td>Enter the Weight of the Parcel: (in kg)</td>
							<td><input type="text" name="packageWeight"
								placeholder="Enter Package weight" /></td>
						</tr>
						<tr>
							<td>Enter the Cost for Parcel:</td>
							<td><input type="text" name="cost" placeholder="cost"
								required="required" /></td>
						</tr>
						
						<tr>
							<td>Sender Address</td>
							<td><input type="text" name="senderAddress"
								placeholder="Customer Address" /></td>
						</tr>
						<tr>
							<td>Receiver Address</td>
							<td><input type="text" name="receiverAddress"
								placeholder="Deliver location address" required="required" /></td>
						</tr>
						<tr>
							<td>Enter the Distance the Parcel travels:</td>
							<td><input type="number" name="distance"
								placeholder="Enter distance of parcel travel"
								required="required" />
							</td>
						</tr>
						
						<tr>
							<td>Enter StaffId of Staff assigned to the parcel: </td>
							<td><input type="number" name="employeeId"
								placeholder="Enter Staff Id" /></td>
						</tr>
						<tr>
							<td>Enter User Id of Customer for the parcel:</td>
							<td><input type="number" name="customerId"
								placeholder="Enter customer Id" required="required" /></td>
						</tr>
						
						<tr>
							<td>Select the Type of Parcel:</td>
							<td><select name="type"/>
								<option value="Parcel Delivery">Parcel Delivery</option>
								<option value="Document Delivery">Document Delivery</option>
								<option value="International Delivery">International
									Delivery</option>
								<option value="European Delivery">European Delivery</option>
								<option value="Luggage Delivery">Luggage Delivery</option>
								<option value="Vehicle Delivery">Vehicle Delivery</option></td>
						</tr>
						<!-- make select package type -->
						


						<tr>
							<td><input id=a type="submit" value="Submit" /></td>
						</tr>
					</table>
				</form>
			</center>

		</div>

		<div class="right">
			<h2>
				<font color="white">What?</font>
			</h2>
			<p>
				<font color="white">Domestic Courier Service. International
					Courier Services. Door To Door Delivery. Local Courier Services.
					Parcel Delivery Services. International Parcel Service. Cargo
					Courier Services. Express Parcel Services.</font>
			</p>
			<h2>
				<font color="white">Where?</font>
			</h2>
			<p>
				<font color="white">On the southEast coast of Bay Of
					Bengal,city of Chennai</font>
			</p>
			<h2>
				<font color="white">Price?</font>
			</h2>
			<p>
				<font color="white">The Walk is free!</font>
			</p>

		</div>
	</div>

	<footer> &copy Copyrights reserved &#64 CTS Express
	2019 </footer>

</body>
</html>
