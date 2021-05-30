<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
			display: inline-block;
			border: 1px solid #ccc;
			box-sizing: border-box;
			padding: 100px 40px;
			border-radius: 26px;
			background-image: url('bg3.jpg');                           
			width: 700px;
			height: 710px;
			margin: 10px;
			margin-top:50px;
			font-size: 20px;
			padding-top: 10px;
		   	position:relative;
		   	background-color:#e33332;
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
		
		#employee {
		  font-family: Arial, Helvetica, sans-serif;
		  border-collapse: collapse;
		}
		
		#employee td{
		  border: 2px solid #ddd;
		  padding: 25px;
		  width:650px;
		  margin-top:20px;
		}
		
		#employee tr:nth-child(even){background-color: #ffa500;}
		
		#employee tr:hover {background-color: #ddd;}
		
		.button {
			background-color: Transparent;
			border: 2px solid #8e44ad;
			border-radius: 10px;
			color: white;
			display: block;
			font-family: inherit;
			font-size: 18px;
			padding: 12px;
			width: 17%;
			text-align: center;
			margin: 0;
			margin-left:50%;
  			position: absolute;
			cursor: pointer;
			transition: all 0.3;
  			-ms-transform: translate(-50%, -50%);
  			transform: translate(-50%, -50%);
		}
		
		.button:hover {
			opacity: 0.9;
			background-color: red;
			color: white;
			box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
		}
		
		.k{
			margin-top:40px;
		}
		.f{
			margin-top:20px;
		}
		.e{
			margin-top:20px;
		}

 </style>


</head>
<body>
	<div class="a"></div>
		<div class="header">	
		<h2 class="c">Employee Details</h2>
	</div>
	
	<div id="mySidenav" class="sidenav">
		  <a href="EmployeeInsert.jsp" id="about">Add</a>
		  <a href="search.jsp" id="blog">View</a>
		  <a href="report.jsp" id="projects">Report</a>
		  <a href="Home.jsp" id="contact">Back to PizzaMania</a>
		</div>


	<table id="employee" class="form">
		<c:forEach var="emp" items="${empDetails}">

		<c:set var="id" value="${emp.empId}"/>
		<c:set var="fname" value="${emp.fname}"/>
		<c:set var="age" value="${emp.age}"/>
		<c:set var="dOB" value="${emp.dOB}"/>
		<c:set var="address" value="${emp.address}"/>
		<c:set var="phoneNo" value="${emp.phoneNo}"/>
		<c:set var="nIC" value="${emp.nIC}"/>
		<c:set var="email" value="${emp.email}"/>
		<c:set var="jobPost" value="${emp.jobPost}"/>
		
	<tr>
		<td><label class="form-lable">EmpID</label></td>
		<td class="form-input">${emp.empId }</td>
	</tr>
	<tr>
		<td><label class="form-lable">Name</label></td>
		<td class="form-input">${emp.fname}</td>
	</tr>
	<tr>
		<td><label class="form-lable">Age</label></td>
		<td class="form-input">${emp.age}</td>
	</tr>
	<tr>
		<td><label class="form-lable">DOB</label></td>
		<td class="form-input">${emp.dOB}</td>
	</tr>
	<tr>
		<td><label class="form-lable">Address</label></td>
		<td class="form-input">${emp.address}</td>
	</tr>
	<tr>
		<td><label class="form-lable">Phone Number</label></td>
		<td class="form-input">${emp.phoneNo}</td>
	</tr>
	<tr>
		<td><label class="form-lable">NIC Number</label></td>
		<td class="form-input">${emp.nIC}</td>
	</tr>
	<tr>
		<td><label class="form-lable">Email Address</label></td>
		<td class="form-input">${emp.email}</td>
	</tr>
	<tr>
		<td><label class="form-lable">Job Post</label></td>
		<td class="form-input">${emp.jobPost}</td>
	</tr>
	</c:forEach>
	</table>

	<c:url value="EmployeeUpdate.jsp" var="empupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="age" value="${age}"/>
		<c:param name="dOB" value="${dOB}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="phoneNo" value="${phoneNo}"/>
		<c:param name="nIC" value="${nIC}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="jobPost" value="${jobPost}"/>
	</c:url>
	
	<div class="e">
	<a href="${empupdate}">
	<input type="button" class="button" name="update" value="Update Employee Details">
	</a></div>



<br>
	<c:url value="EmployeeDelete.jsp" var="empdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="age" value="${age}"/>
		<c:param name="dOB" value="${dOB}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="phoneNo" value="${phoneNo}"/>
		<c:param name="nIC" value="${nIC}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="jobPost" value="${jobPost}"/>
	</c:url>
	<br>
	<div class="f">
	<a href="${empdelete}">	
	<input type="button" class="button" name="delete" value="Delete Employee Details">
	</a></div>
	<br>
	<div class="k">
	<form method="post" action="EmployeeManagement.jsp">
	<button class="button">OK</button>
	</form>	
	</div>
</body>
</html>