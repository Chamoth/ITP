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
	 padding:2;
	 marging:0;
	 background-image:url(pizza3.jpg);
	 background-size:cover;
	 background-attachment:fixed;
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
			width: 20%;
			text-align: center;
			cursor: pointer;
			transition: all 0.3s
			margin: 0;
  			position: absolute;
  			top: 122%;
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
		
		.button1 {
			button-align: center;
			background-color: Transparent;
			border: 2px solid #8e44ad;
			border-radius: 10px;
			color: white;
			display: block;
			font-family: inherit;
			font-size: 14px;
			padding: 10px;
			margin-top: 50px;
			width: 20%;
			text-align: center;
			cursor: pointer;
			transition: all 0.3s
			margin: 0;
  			position: absolute;
  			top: 128%;
  			left: 50%;
  			-ms-transform: translate(-50%, -50%);
  			transform: translate(-50%, -50%);
		}
		
		.button1:hover {
			opacity: 0.9;
			background-color: #9400D3;
			color: white;
			box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
		}
		
		
		.c{	
			
			font-size: 30px;
			text-align:center;
			font-weight: bold;
			border: 2px solid white;
			padding: 10px;
			border-radius: 20px;
			font-family: "Trebuchet MS";
		}
		
		
		.a{
			padding: 10px 50px;
			margin: 30px;
			width:70%; 
			
		}
		
		
		.header{
			color: white;
			font-size: 12px;
			font-family: 'Lato', sans-serif;
		}
	
	h1{ 
	  font-size:3em;
	  color: #003366;
	  marging:0;
	  paddding:5;
	  text-align:center;
	  font-family:'arial';
	  position: absolute;
	  top:50px;
	  left:20%;
	  
	 }
	 
	 img{
		border:5px solid #6b5b95;
	}
	
	 .form-table td{
	   	padding-top: 10px;
	   	background:white;
	   	position:relative;
		top :60px;
		left:500px;
	}
	
	.form-lable {font-size: 20px; ; font-weight:bolder; }
	small{ color: firebrick; display:block; font-size: 15px;   }
	.form-input{
	    width: 260px; height: 35px; border-radius: 5px; padding-left: 5px;
	}
	
	.container{
		text-align:center;
		margin-top:-50px;
		margin-left: -70px;
	}
	.updatebtn{
	    width: 200px; height: 40px; border-radius: 5px; margin-left: 500px; margin-top: 100px; 
	    color: white; font-size: 20px;  ; font-weight:bolder;
	    background-color: grey;
	}
	    
	 .deletebtn {
	    width: 200px; height: 40px; border-radius: 5px; margin-left: 20px; margin-top: 100px; 
	    color: white; font-size: 20px;  ; font-weight:bolder;
	    background-color: grey;
	}
	
	.okbtn {
	    button-align: center;
			background-color: Transparent;
			border: 2px solid #8e44ad;
			border-radius: 10px;
			color: white;
			display: block;
			font-family: inherit;
			font-size: 14px;
			padding: 10px;
			margin-top: 50px;
			width: 10%;
			text-align: center;
			cursor: pointer;
			transition: all 0.3s
			margin: 0;
  			position: absolute;
  			top: 140%;
  			left: 50%;
  			-ms-transform: translate(-50%, -50%);
  			transform: translate(-50%, -50%);
	}
	    
	.deletebtn:hover , .updatebtn:hover ,.okbtn:hover{  opacity: 0.9;
			background-color: #9400D3;
			color: white;
			box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); }

		td{
			padding: 8px 20px;
		}

 </style>


</head>
<body>
	<div class="a"></div>
		<div class="header">	
		<h2 class="c">Employee Details</h2>
	</div>


	<table class="form-table">
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
	
	<div class="f">
	<a href="${empdelete}">	
	<input type="button" class="button1" name="delete" value="Delete Employee Details">
	</a></div>
	
	<div class="container">
	<form method="post" action="EmployeeManagement.jsp">
	<button class="okbtn">OK</button>
	</form>	
	</div>
</body>
</html>