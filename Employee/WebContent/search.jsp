<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Employee</title>
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
			width: 10%;
			padding: 20px 20px;
			margin: 10px 0;
			display: inline-block;
			border: 1px solid #ccc;
			box-sizing: border-box;
			padding: 100px 40px;
			position: relative;  
			border-radius: 26px;                           
			width: 500px;
			height: 400px;
			margin: 10px;
			margin-top:50px;
			background-image: url('bg3.jpg');
			left: -0%;
			font-size: 20px;	
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
			width: 50%;
			text-align: center;
			cursor: pointer;
			transition: all 0.3s
			margin: 0;
  			position: absolute;
  			top: 65%;
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
	
	
		table {
  			border-collapse: collapse;
		}

		table, th, td {
		  border: 1px solid black;
		}
		
		input[type=text]{
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			box-sizing: border-box;
			font-size: 18px
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
		<h2 class="c">Search Employee</h2>
		</div>
		
		<div id="mySidenav" class="sidenav">
		  <a href="EmployeeInsert.jsp" id="about">Add</a>
		  <a href="search.jsp" id="blog">View</a>
		  <a href="report.jsp" id="projects">Report</a>
		  <a href="Home.jsp" id="contact">Back to PizzaMania</a>
		</div>
		
	<form class="form" action="search" method="post">
		Employee Identification <input type="text" name="EmpID" placeholder="Enter the Employee ID"><br>
		<input type="submit" class="button" name="submit" value="Search">
	</form>


</body>
</html>