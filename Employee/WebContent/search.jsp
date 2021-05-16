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
		
		.c{	
			
			font-size: 30px;
			font-weight: bold;
			border: 2px solid white;
			padding: 10px;
			border-radius: 20px;
		}
		
		
		.a{
			padding: 10px 80px;
			margin: 30px;
			width:70%; 
		}
		
		
		.header{
			color: white;
			font-size: 12px;
			font-family: 'Lato', sans-serif;
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
			  height: 300px;
			  margin: 5px;
			  background: rgba(255,255,255,.18);
			  left: -0%	
		}
		
		.button {
			button-align: center;
			background-color: Transparent;
			border: 2px solid #8e44ad;
			border-radius: 10px;
			color: white;
			display: block;
			font-family: inherit;
			font-size: 14px;
			padding: 10px;
			margin-top: 20px;
			width: 50%;
			text-align: center;
			cursor: pointer;
			transition: all 0.3s
			margin: 0;
  			position: absolute;
  			top: 80%;
  			left: 50%;
  			-ms-transform: translate(-50%, -50%);
  			transform: translate(-50%, -50%);
		}
		
		.button:hover {
			opacity: 0.9;
			background-color: #9400D3;
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
	</style>
</head>
<body>


	<div class="a"></div>
		<div class="header">	
		<h2 class="c">Search Employee</h2>
		</div>
	<form class="form" action="search" method="post">
		Employee Identification <input type="text" name="EmpID" placeholder="Enter the Employee ID"><br>
		<input type="submit" class="button" name="submit" value="Search">
	</form>




</body>
</html>