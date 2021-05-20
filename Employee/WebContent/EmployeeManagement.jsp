<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management</title>
<link href="Semantic-UI-CSS-master/semantic.css" rel="stylesheet" type="text/css" >
<link href="bootstrap-5.0.0-beta3-dist/css/bootstrap.css" rel="stylesheet" type="text/css" >
<script src="Semantic-UI-CSS-master/semantic.js"></script>

	<style type="text/css">
		body{
			font-family: Hind SemiBold;
			height=100%;
			background-position: center;
			background-repeat: no-repeat;
			background-size: cover;
			font-family: 'Lato', sans-serif;
		}
		
		.header{
			color: white;
			background-color:rgb(255,0,0);opacity:0.8;
			border: 4px solid grey;
			border-radius: 18px;
			
		}
		
		.c{	
			font-size: 45px;
			font-family: "Trebuchet MS";
			font-weight: bold;
			border-radius: 18px;
			padding: 18px;
			text-align: center;

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
		
		.button1 {
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
		  margin-left: 100px; margin-right: 100px

		}
		
		.button1:hover {background-color: red}
		
		.button1:active {
		  background-color: Transparent;
		  box-shadow: 0 5px #666;
		  transform: translateY(4px);
		}
		
		.button2 {
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
		  margin-left: 100px; 
		  margin-right: 100px

		}
		
		.button2:hover {background-color: red}
		
		.button2:active {
		  background-color: Transparent;
		  box-shadow: 0 5px #666;
		  transform: translateY(4px);
		}
		
		.button3 {
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
		
		.button3:hover {background-color: red}
		
		.button3:active {
		  background-color: Transparent;
		  box-shadow: 0 5px #666;
		  transform: translateY(4px);
		}
		
		.button4 {
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
		
		.button4:hover {background-color: red}
		
		.button4:active {
		  background-color: Transparent;
		  box-shadow: 0 5px #666;
		  transform: translateY(4px);
		}
		
		.tm-site-header {
		    background-color: #F0F8FF;
		    color: #099; 
		    width: 400px;
		    height: 100px; 
		    display: flex;
		    align-items: center;
		    justify-content: center;
		    margin-left:36%;
		    margin-top:100px;
		    padding-bottom:11px;
			border-radius:30px;
		}
		
		.tm-site-logo { margin-right: 30px; }
		
		.imglogo{
		  	margin-left: -5px;
		  	margin-right: 50px;
		  
			}
		
		.tm-site-name {
		    font-size: 3.5rem;
		    font-style: italic;  
		    color: red;
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
		  top: 520px;
		  width: 120px;
		  background-color:rgb(255,0,0);opacity:0.85;
		}
		
		#blog {
		  top: 580px;
		  width: 140px;
		  background-color:rgb(255,0,0);opacity:0.85;
		}
		
		#projects {
		  top: 640px;
		  width: 160px;
		  background-color:rgb(255,0,0);opacity:0.85;
		}
		
		#contact {
		  top: 700px;
		  width: 210px;
		  background-color:rgb(255,0,0);opacity:0.85;
		}
		
		.bg-text {
		  background-color: rgb(0,0,0); /* Fallback color */
		  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
		  color: white;
		  font-weight: bold;
		  border: 3px solid #f1f1f1;
		  position: absolute;
		  top: 50%;
		  left: 50%;
		  transform: translate(-50%, -50%);
		  z-index: 2;
		  width: 100%;
		  padding: 20px;
		  text-align: center;
		}
		
		* {
		  box-sizing: border-box;
		}
		
		.bg-image {
		  /* The image used */
		  background-image: url('pizza1.jpg');
		  
		  /* Add the blur effect */
		  filter: blur(9px);
		  -webkit-filter: blur(3px);
		  
		  /* Full height */
		  height: 100%; 
		  
		  /* Center and scale the image nicely */
		  background-position: center;
		  background-repeat: no-repeat;
		  background-size: cover;
		}
		
	</style>


</head>
<body>

	<div class="bg-image"></div>
	<div class="bg-text">
	<div>
		<div class="tm-site-header">
		<img class="ui tiny circular image imglogo " src="img1.jfif">
            <h1 class="tm-site-name">PizzaMania</h1>
          </div>
	</div>
	
	<div class="a"></div>
		<div class="header">	
		<h2 class="c">Employee Management</h2>
	</div>
	<br>
	<br>
	
	<div id="mySidenav" class="sidenav">
	  <a href="EmployeeInsert.jsp" id="about">Add</a>
	  <a href="search.jsp" id="blog">View</a>
	  <a href="report.jsp" id="projects">Report</a>
	  <a href="Home.jsp" id="contact">Back to PizzaMania</a>
	</div>
	
	<br>
	<br>
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
	
	<div class="button">
	<a href = "${empinsert}">
	<input type = "button" class="button1" name= "insert" value = "Add New Employee">
	</a>
	<br>
	<br><br>
	<form method="post" action="search.jsp">
	<button class="button3">View Employee Details</button>
	</form>
	<br>
	<br>
	<form method="post" action="report.jsp">
	<button class="button2">Generate Report</button>
	</form>
	<br>
	<br>
	<form method="post" action="Home.jsp">
	<button class="button4">Cancel</button>
	</form></div></div>
	</div>



</body>
</html>