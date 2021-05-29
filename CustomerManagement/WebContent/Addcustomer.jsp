<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
input[type=email]{
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
<title>Register Customer</title>
	<script type="text/javascript">
		function val(){
			if((fma.phoneNo.value).length<10){
				alert("Check the phone number");
				fma.phoneNo.focus();
				return false;
			}
			if((fma.phoneNo.value).length>10){
				alert("Check the phone number");
				fma.phoneNo.focus();
				return false;
			}
			
			return true;
			
		}


	</script>
</head>
<body>
<h1>New Customer</h1>
	<div>
	<form name="fma"action="AddCustomer" method="post">
		<p>Customer ID:</p><input type="number" name="id" required><br>
		<p>Phone</p> <input type="text" name="phoneNo"  required><br>
		<p>Name</p> <input type="text" name="name" required><br>
		<p>City</p> <input type="text" name="city"><br>
		<p>Email</p><input type="email" name="email"><br>
	<input type="submit" class="button" name="submit" value="REGISTER" onClick="return val();">
	</form>
	<form action="CustomerList.jsp" >
	<input type="submit" class="button" name="view" value="VIEW CUSTOMERS">
	</form>
	</div>


</body>
</html>