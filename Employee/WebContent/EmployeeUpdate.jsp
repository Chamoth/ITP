<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Employee</title>

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
			width: 100%;
			padding: 80px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			box-sizing: border-box;
			padding: 100px 40px;
			position: relative;  
			  border-radius: 26px;                           
			  width: 500px;
			  height: 660px;
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

	<%
		String empId = request.getParameter("empId");
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

	<form class="form" action="update" method="post">
	<table>
		<tr>
			<td>Employee Identification</td> 
			<td><input type="text" name="empId" value="<%= empId %>" readonly></td>
		</tr>
		<tr>
			<td>Full Name</td> 
			<td><input type="text" name="fname" value="<%= name %>" ></td>
		</tr>
		<tr>
			<td>Age</td> 
			<td><input type="text" name="age" value="<%= age %>" ></td>
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
			<td><input type="text" name="phoneNo" value="<%= phone %>" ></td>
		</tr>
		<tr>
			<td>NIC</td> 
			<td><input type="text" name="nIC" value="<%= nic %>" ></td>
		</tr>
		<tr>
			<td>Email</td> 
			<td><input type="text" name="email" value="<%= email %>" ></td>
		</tr>
		<tr>
			<td>Job Post</td> 
			<td><input type="text" name="jobPost"value="<%= jobPost %>" ></td>
		</tr>		
	</table>
	<br>
	<input type="submit" class="button" name="submit" value="Update Employee Details">
	</form>




</body>
</html>