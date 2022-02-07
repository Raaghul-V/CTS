<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
.table {
  float: left;
  width: 100%;
  padding: 0 20px;
  overflow: hidden;
}
.right {
  background-color:#0d38e2;
  float: right;
  width: 20%;
  padding: 10px 15px;
  margin-top: 7px;
}
footer
{
bottom:0%;
position:fixed;
min-width:90%;
font-size:15px;
font-family:'assistant';
color:#333;
text-align:center;
background-color : #0d38e2;
padding : 5px 0;
} 
 

header
{
bottom: 0%;
min-width: 100%;
position: fixed;
background-color:#0d38e2;
text-align:center;
padding:10px;
margin-bottom:0px;
font-size:12px;
}
</style>
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
</head>

<body style="font-family:Verdana;">
<div style="width: 90%" align="left">
<div style="background-color:#3ed315; padding:15px;">
  <h1><font color="white">CTS Express</font></h1>
  <h3><font color="white">Shipment Tracking Made Easy</font></h3>
</div>

<div style="overflow:auto">
  <div class="menu">
     
    <div class="menuitem"><a href="Logout" target="blank" rel="nofollow">Logout</a></div>
    <div class="menuitem"><a href="rules.jsp" target="blank" rel="nofollow">Rules and Policies</a></div>
    <div class="menuitem"><a href="ContactUs.html" target="blank" rel="nofollow">Contact Us</a></div>
    <div> <img src="./image/track.png" style="width:100%"></div>
  </div>

  <div class="main">
    <h2>CTS Express</h2>
    <p Style="background-color:hsl(240, 100%, 90%);font-family:verdana;;">CTS Express A company, abbreviated as CTS co., is a legal entity made up of an association of people, be they natural, legal, or a mixture of both, for carrying on a commercial or industrial enterprise. Company members share a common purpose, and unite to focus their various talents and organize their collectively available skills or resources to achieve specific, declared goals.</p>
	<br>
    <s:setDataSource driver="com.mysql.jdbc.Driver" 
				url="jdbc:mysql://localhost:3306/cts"
				user="root" password="root" var="db" /> 
				</div>

<s:query var="rec" dataSource="${db}">
select * from quotation;
</s:query>
<form action="updateOffer" method="post">
<table border="5px"><tr><th>package Weight</th><th>sender address</th><th>receiver address</th>
<th>customer Id</th><th>type</th><th>Quote date</th><th>Offer date</th><th>Distance</th><th>cost</th><th>Expected Delivery date</th><th>Update</th></tr>
<c:forEach items="${rec.rows}" var="v">
<tr><td><input type="text" name="packageWeight" value="${v.packageWeight}" /></td><td>${v.senderAddress}</td><td>${v.receiverAddress}</td><td><input type="number" name="customerId" value="${v.customerId}" readonly></td>
<td><select name="type" />
    							<option value="${v.type}">${v.type}</option>
    							<option value="Parcel_Delivery">Parcel Delivery</option>
								<option value="Document_Delivery">Document Delivery</option>
								<option value="International_Delivery">International
									Delivery</option>
								<option value="European_Delivery">European Delivery</option>
								<option value="Luggage_Delivery">Luggage Delivery</option>
								<option value="Vehicle_Delivery">Vehicle Delivery</option>
	</td><td>${v.QuoteDate}</td>
<td><input type="text" name="offerdate" value="${v.offerDate}" /></td>
<td><input type="text" name="distance" value="${v.distance}" /></td>
<td><input type="text" name="cost" value="${v.cost}"  /></td>
<td><input type="text" name="expdelivdate" value="${v.expectedDeiveryDate}" /></td>

<td><input type="submit" name="update" value="update Offer"></td>

</tr>
</c:forEach>
</table>
</form>
	
	

<footer>
<font color="white">
&copy Copyrights reserved &#64 CTS Express 2022 
</font>
</footer>
</center>
</body>
</html>