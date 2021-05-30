<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Employee</title>

<script>
	function validateForm() {
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
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			box-sizing: border-box;
			padding: 100px 50px;
			position: relative;  
			border-radius: 26px;
			background-image: url('bg3.jpg');                             
			width: 700px;
			height: 1050px;
		    margin: 5px;
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
			margin-top: 10px;
			width: 43%;
			text-align: center;
			cursor: pointer;
			transition: all 0.3s
			margin: 0;
  			position: absolute;
  			top: 85%;
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
		
		.button1 {
			button-align: center;
			background-color: Transparent;
			border: 2px solid #8e44ad;
			border-radius: 10px;
			color: white;
			display: block;
			font-family: inherit;
			font-size: 18px;
			padding: 10px;
			margin-top: 530px;
			width: 20%;
			text-align: center;
			cursor: pointer;
			transition: all 0.3s
			margin: 0;
  			position: absolute;
  			top: 95%;
  			left: 50%;
  			-ms-transform: translate(-50%, -50%);
  			transform: translate(-50%, -50%);
		}
		
		.button1:hover {
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

	<%
		String empId = request.getParameter("id");
		String name = request.getParameter("fname");
		String age = request.getParameter("age");
		String dOB = request.getParameter("dOB");
		String address = request.getParameter("address");
		String phone = request.getParameter("phoneNo");
		String nic = request.getParameter("nIC");
		String email = request.getParameter("email");
		String jobPost = request.getParameter("jobPost");
	%>

	
		<div class="a"></div>
		<div class="header">	
		<h2 class="c">Update An Employee Account </h2>
		</div>
		
		<div id="mySidenav" class="sidenav">
		  <a href="EmployeeInsert.jsp" id="about">Add</a>
		  <a href="search.jsp" id="blog">View</a>
		  <a href="report.jsp" id="projects">Report</a>
		  <a href="Home.jsp" id="contact">Back to PizzaMania</a>
		</div>

	<br><br><br><br><br>
	<form name="myForm" class="form" action="update" onsubmit="return validateForm()" method="post">
	<table>
		<tr>
			<td>Employee Identification</td> 
			<td><input type="text" name="id" value="<%= empId %>" readonly></td>
		</tr>
		<tr>
			<td>Full Name</td> 
			<td><input type="text" name="fname" value="<%= name %>" ></td>
		</tr>
		<tr>
			<td>Age</td> 
			<td><input type="number" name="age" value="<%= age %>" ></td>
		</tr>
		<tr>
			<td>Date of Birth</td> 
			<td><input type="date" name="dOB" value="<%= dOB %>" ></td>
		</tr>
		<tr>
			<td>Current Address</td> 
			<td><input type="text" name="address" value="<%= address %>" ></td>
		</tr>
		<tr>
			<td>Phone Number</td> 
			<td><input type="tel" name="phoneNo" placeholder="xxxxxxxxxx" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" value="<%= phone %>" ></td>
		</tr>
		<tr>
			<td>NIC</td> 
			<td><input type="text" name="nIC" value="<%= nic %>" ></td>
		</tr>
		<tr>
			<td>Email</td> 
			<td><input type="email" name="email" value="<%= email %>" ></td>
		</tr>
		<tr>
			<td>Job Post</td> 
			<td><input type="text" name="jobPost"value="<%= jobPost %>" ></td>
		</tr>		
	</table>
	<br>
	<input type="submit" class="button" name="submit" value="Update Employee Details">
	</form>
	<form method="post" action="search.jsp">
	<button class="button1">Cancel</button>
	</form>




</body>
</html>