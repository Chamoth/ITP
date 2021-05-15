<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management</title>

	<style type="text/css">
		body{
			font-family: Hind SemiBold;
			background-image: url('pizza1.jpg');
			height=100%;
			background-position: center;
			background-repeat: no-repeat;
			background-size: cover;
			font-family: 'Lato', sans-serif;
		}
		
		.header{
			color: white;
			font-size: 20px;
			background-color: Transparent;
		}
		
		.c{	
			font-size: 35px;
			font-weight: bold;
			border: 2px solid blue;
			padding: 18px;
			border-radius: 18px;
		}
		
		
		.a{
			padding: 10px 80px;
			margin:10px;
			width:50%; 
		}
		
		
	
		table, th, td {
  			border: 1px solid black;
		}
		
		.topnav {
		  background-color: #333;
		  overflow: hidden;
		}
		
	
		.topnav a {
		  float: left;
		  color: #f2f2f2;
		  text-align: center;
		  padding: 14px 16px;
		  text-decoration: none;
		  font-size: 17px;
		}
		
		
		.topnav a:hover {
		  background-color: #ddd;
		  color: black;
		}
		
		
		.topnav a.active {
		  background-color: blue;
		  color: white;
		}
		
		.button {
		  padding: 35px 35px;
		  font-size: 24px;
		  text-align: center;
		  cursor: pointer;
		  outline: none;
		  color: #fff;
		  background-color: Transparent;
		  border: none;
		  border-radius: 15px;
		  box-shadow: 0 9px #999;

		}
		
		.button:hover {background-color: #9400D3}
		
		.button:active {
		  background-color: Transparent;
		  box-shadow: 0 5px #666;
		  transform: translateY(4px);
		}
		
		.d{
			padding: 35px
		}
		
		.e{
			padding: 35px
		}
		
		.f{
			
			padding: 35px
		}
		
		
		
		
	</style>


</head>
<body>

	<div class="a"></div>
		<div class="header">	
		<h2 class="c"> Employee Management System</h2>
		<div class="topnav">
		<a class="active" href="#home">Home</a>
		<a href = "${search}"><i class="fa fa-fw fa-search"></i> Search</a>
		<a href="#news">News</a>
		<a href="#contact">Contact</a>
		<a href="#about">LogOut</a>
	</div>
	</div>
		
	
	<div class="b">
	<c:url value= "EmployeeInsert.jsp" var= "empinsert">
		<c:param name="empId" value="${EmpID}"/>
		<c:param name="fname" value="${Name}"/>
		<c:param name="age" value="${Age}"/>
		<c:param name="dOB" value="${DOB}"/>
		<c:param name="address" value="${Address}"/>
		<c:param name="phoneNo" value="${Phone}"/>
		<c:param name="nIC" value="${NIC}"/>
		<c:param name="email" value="${Email}"/>
		<c:param name="jobPost" value="${JobPost}"/>
	</c:url>
	<div class="d">
	<a href = "${empinsert}">
	<input type = "button" class="button" name= "insert" value = "Add New Employee">
	</a></div>

	<c:url value="EmployeeUpdate.jsp" var="empupdate">
		<c:param name="empId" value="${EmpID}"/>
		<c:param name="fname" value="${Name}"/>
		<c:param name="age" value="${Age}"/>
		<c:param name="dOB" value="${DOB}"/>
		<c:param name="address" value="${Address}"/>
		<c:param name="phoneNo" value="${Phone}"/>
		<c:param name="nIC" value="${NIC}"/>
		<c:param name="email" value="${Email}"/>
		<c:param name="jobPost" value="${JobPost}"/>
	</c:url>
	
	<div class="e">
	<a href="${empupdate}">
	<input type="button" class="button" name="update" value="Update Employee Details">
	</a></div>
	
	<br>
	<c:url value="EmployeeDelete.jsp" var="empdelete">
		<c:param name="empId" value="${EmpID}"/>
		<c:param name="fname" value="${Name}"/>
		<c:param name="age" value="${Age}"/>
		<c:param name="dOB" value="${DOB}"/>
		<c:param name="address" value="${Address}"/>
		<c:param name="phoneNo" value="${Phone}"/>
		<c:param name="nIC" value="${NIC}"/>
		<c:param name="email" value="${Email}"/>
		<c:param name="jobPost" value="${JobPost}"/>
	</c:url>
	
	<div class="f">
	<a href="${empdelete}">
	
	<input type="button" class="button" name="delete" value="Delete Employee Details">
	</a></div></div>
	
	
	<form method="post" action="search.jsp">
	<button class="btn btn1">View Employee</button>
	</form>



</body>
</html>