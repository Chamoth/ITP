<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management</title>

<script>
	function validateForm() {
		  var x = document.forms["myForm"]["empId"].value;
		  if (x == "" || x == null) {
		  alert("EmpId must be filled out");
	      return false;
	  	}
		  var y = document.forms["myForm"]["fname"].value;
		  if (y == "" || y == null) {
		  alert("Full Name must be filled out");
		  return false;
		}
		  var a = document.forms["myForm"]["address"].value;
		  if (a == "" || a == null) {
		  alert("Current Address must be filled out");
		  return false;
		}
		  var p = document.forms["myForm"]["phoneNo"].value;
		  if (p == "" || p == null) {
		  alert("Phone Number must be filled out");
		  return false;
		}
		  var c = document.forms["myForm"]["nIC"].value;
		  if (c == "" || c == null) {
		  alert("NIC Number must be filled out");
		  return false;
		}
	}
	 
	
</script>

<style type="text/css">
		body{
			text-align: center;
			align: center;
			background-image: url('pizza2.jpg');
			height=100%;
			background-position: center;
			background-repeat: no-repeat;
			background-size: cover;
			font-family: 'Lato', sans-serif;
		}
		
		.header{
			color: white;
			background-color:rgb(255,0,0);opacity:0.9;
			border: 4px solid grey;
			border-radius: 18px;
			
		}
		
		.c{	
			font-size: 35px;
			font-family: "Trebuchet MS";
			font-weight: bold;
			border-radius: 18px;
			padding: -20px;
			text-align: center;

		}
		
		
		.a{
			padding: 10px 60px;
			margin:20px;
			width:40%; 
		}
		
		.form {
			width: 100%;
			padding: 80px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			box-sizing: border-box;
			padding: 100px 40px;
			position: relative;  
			border-radius: 26px;                           
			width: 700px;
			height: 1000px;
		    margin: 5px;
			background-image: url('bg3.jpg');
			left: -0%;
			font-size: 20px;
		}
		
		input[type=text]{
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			box-sizing: border-box;
			font-size: 18px
		}
		
		input[type=number]{
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			box-sizing: border-box;
			font-size: 18px
		}
		
		input[type=date]{
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			box-sizing: border-box;
			font-size: 18px
		}
		
		input[type=email]{
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			box-sizing: border-box;
			font-size: 18px
		}
		

		input[type=tel]{
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			box-sizing: border-box;
			font-size: 18px
		}
  
		.button {
			button-align: center;
			background-color: Transparent;
			border: 2px solid #8e44ad;
			border-radius: 10px;
			color: white;
			display: block;
			font-family: inherit;
			font-size: 18px;
			padding: 10px;
			margin-top: 20px;
			width: 40%;
			text-align: center;
			cursor: pointer;
			transition: all 0.3s
			margin: 0;
  			position: absolute;
  			top: 90%;
  			left: 50%;
  			-ms-transform: translate(-50%, -50%);
  			transform: translate(-50%, -50%);
		}
		
		.button:hover {
			opacity: 0.9;
			background-color: red;
			color: white;
			box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
		}
		
		td{
			padding: 8px 20px;
		}
		
		#mySidenav a {
		  position: absolute;
		  left: -100px;
		  transition: 0.35s;
		  padding: 15px;
		  text-decoration: none;
		  font-size: 20px;
		  color: white;
		  border-radius: 0 5px 5px 0;
		}
		
		#mySidenav a:hover {
		  left: 0;
		}
		
		#about {
		  top: 360px;
		  width: 120px;
		  background-color:rgb(255,0,0);opacity:0.85;
		}
		
		#blog {
		  top: 420px;
		  width: 140px;
		  background-color:rgb(255,0,0);opacity:0.85;
		}
		
		#projects {
		  top: 480px;
		  width: 160px;
		  background-color:rgb(255,0,0);opacity:0.85;
		}
		
		#contact {
		  top: 540px;
		  width: 210px;
		  background-color:rgb(255,0,0);opacity:0.85;
		}
		
		
		
	</style>

</head>
<body>
		
		<div class="a"></div>
		<div class="header">	
		<h2 class="c">Add New Employee Details</h2>
		</div>
		<br><br>
		
		<div id="mySidenav" class="sidenav">
		  <a href="EmployeeInsert.jsp" id="about">Add</a>
		  <a href="search.jsp" id="blog">View</a>
		  <a href="report.jsp" id="projects">Report</a>
		  <a href="Home.jsp" id="contact">Back to PizzaMania</a>
		</div>
	<br><br><br><br>
	<form name="myForm" class="form" action="insert" onsubmit="return validateForm()" method="post">
		<table>
		<tr>
			<td>Employee Identification</td> 
			<td> <input type="text" name="empId"></td>
		</tr>
		<tr>
			<td>Full Name</td> 
			<td> <input type="text" name="fname"></td>
		</tr>
		<tr>
			<td>Age</td> 
			<td>  <input type="number" name="age"></td>
		</tr>
		<tr>
			<td>Date of Birth</td> 
			<td>  <input type="date" name="dOB"></td>
		</tr>
		<tr>
			<td>Current Address</td> 
			<td> <input type="text" name="address"></td>
		</tr>
		<tr>
			<td>Phone Number</td> 
			<td> <input type="tel" placeholder="xxxxxxxxxx" name="phoneNo" pattern="[0-9]{3}[0-9]{3}[0-9]{4}"></td>
			<td> <input type="number" name="phoneNo"></td>
		</tr>
		<tr>
			<td>NIC</td> 
			<td> <input type="text" name="nIC"></td>
		</tr>
		<tr>
			<td>Email</td> 
			<td> <input type="email" name="email"></td>
		</tr>
		<tr>
			<td>Job Post</td> 
			<td>  <input type="text" name="jobPost"></td>
		</tr>
		</table>
		
		<input type="submit" class="button" name="submit" value="Add New Employee">
	</form>


</body>
</html>