<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Model.Customer" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body{
		background-image: url(./images/abcd.jpg);
		background-attachment:fixed;
 }
h1{
  font-size: 2em;
  text-align: center;
  color: #f5f5f5;
  font-weight: 100;
  text-transform: capitalize;
  letter-spacing: 1px;
  font-family: 'Geogia', serif;
}
input[type=text]{
  width: 60%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
   border: 2px solid ;
   margin-left:200px;
    background-color: #ededeb;
}
input[type=number]{
  width: 60%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
   border: 2px solid ;
   margin-left:200px;
    background-color: #ededeb;
}
input[type=submit] {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
  margin-left:300px;
  margin-top:20px;
}
div {
  border-radius: 5px;
  background-color: ;
  padding: 10px;
  width: 60%;
  margin-left:300px;
  border: 2px solid green
  }
 p{
  font-family: georgia;
   color: white;
  margin-left:10px;
 }
</style>
<meta charset="ISO-8859-1">
<title>Get Customer</title>
</head>
<body>

<%Customer customer = (Customer)request.getAttribute("customer"); %>
<h1>Update Customer</h1>
	<div>
	<form action="UpdateCustomer" method="post">
		<p>Customer ID:</p><input type="number" name="id" value="<%=customer.getId()%>"><br>
		<p>Phone</p> <input type="text" name="phoneNo"  value="<%=customer.getPhoneNo()%>"><br>
		<p>Name</p> <input type="text" name="name"  value="<%=customer.getName()%>"><br>
		<p>City</p> <input type="text" name="city"  value="<%=customer.getCity()%>"><br>
		<p>Email</p><input type="text" name="email"  value="<%=customer.getEmail()%>"><br>
	<input type="submit" class="button" name="update" value="Update">
	</form>
	</div>


</body>
</html>