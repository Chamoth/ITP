<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	body
	{ padding:2;
	 marging:0;
	 background-image:url(./images/bkground.jfif);
	 background-size:cover;
	 background-attachment:fixed;
	}
	h1
	{
	  
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
	 h2{
	 font-size:2em;
	  color: #003366;
	  marging:0;
	  paddding:5;
	  text-align:center;
	  font-family:'arial';
	  position: absolute;
	  top:200px;
	  left:40%;
	 
	 }
	 img{
	border:5px solid #6b5b95;
	}
	 .form-table td{
	    padding-top: 10px;
	   background:grey;
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
	    background-color: grey;}
	 .deletebtn {
	    width: 200px; height: 40px; border-radius: 5px; margin-left: 20px; margin-top: 100px; 
	    color: white; font-size: 20px;  ; font-weight:bolder;
	    background-color: grey;
	    }
	    .okbtn {
	    width: 200px; height: 40px; border-radius: 5px; margin-left: 20px; margin-top: 100px; 
	    color: white; font-size: 20px;  ; font-weight:bolder;
	    background-color: grey;
	    }
	    
	.deletebtn:hover , .updatebtn:hover ,.okbtn:hover{  color: grey; background-color: white; }



 </style>


</head>
<body>
	<img src="img1.jfif" width="200px" height="200px"><h1>Employee Management System</h1>

		<h2>Employee Details</h2>

	<div class="img1">

	</div>


	<table class="form-table">
		<c:forEach var="emp" items="${empDetails}">

		<c:set var="id" value="${emp.empId}"/>
		<c:set var="name" value="${del. date}"/>
		<c:set var="time" value="${del. time}"/>
		<c:set var="address" value="${del. address}"/>
		<c:set var="riderID" value="${del. riderID}"/>
		<c:set var="vehicleNo" value="${del. vehicleNo}"/>
		<c:set var="deliveryCharge" value="${del. deliveryCharge}"/>

	<tr>
		<td><label class="form-lable">EmpID</label></td>
		<td class="form-input">${emp.empId }</td>
	</tr>
	<tr>
		<td><label class="form-lable">Date</label></td>
		<td class="form-input">${del. date }</td>
	</tr>
	<tr>
		<td><label class="form-lable">Time</label></td>
		<td class="form-input">${del. time }</td>
	</tr>
	<tr>
		<td><label class="form-lable">Address</label></td>
		<td class="form-input">${del. address }</td>
	</tr>
	<tr>
		<td><label class="form-lable">Rider ID</label></td>
		<td class="form-input">${del. riderID }</td>
	</tr>
	<tr>
		<td><label class="form-lable">Vehicle no</label></td>
		<td class="form-input">${del. vehicleNo }</td>
	</tr>
	<tr>
		<td><label class="form-lable">Delivery Charge</label></td>
		<td class="form-input">${del. deliveryCharge }</td>
	</tr>
	</c:forEach>
	</table>

	<c:url value="EmployeeUpdate.jsp" var="empDetails">
		<c:param name="id" value="${EmpID}"/>
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
	<a href="${empDetails}">
	<input type="button" class="button" name="update" value="Update Employee Details">
	</a></div>



<br>
	<c:url value="EmployeeDelete.jsp" var="empDetails">
		<c:param name="id" value="${id}"/>
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
	</a></div>
	
	<div class="container">
	<form method="post" action="EmployeeManagement.jsp">
	<button class="okbtn">Ok</button>
	</form>	
	</div>
</body>
</html>