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
  color: #000000;
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
  color: #140e05;
  marging:0;
  paddding:5;
  text-align:center;
  font-family:'arial';
  position: absolute;
  top:200px;
  left:40%;
 
 }
 img{
border:5px solid #A52A2A;
}
 .form-table td{
    padding-top: 10px;
   background:#785221;
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
    background-color: #785221;}
 .deletebtn {
    width: 200px; height: 40px; border-radius: 5px; margin-left: 20px; margin-top: 100px; 
    color: white; font-size: 20px;  ; font-weight:bolder;
    background-color: #785221;
    }
    .okbtn {
    width: 200px; height: 40px; border-radius: 5px; margin-left: 20px; margin-top: 100px; 
    color: white; font-size: 20px;  ; font-weight:bolder;
    background-color:#785221;
    }
    
.deletebtn:hover , .updatebtn:hover ,.okbtn:hover{  color: grey; background-color: white; }



 </style>


</head>
<body>
<h1>Delivery Management System.</h1>

<h2>Delivery Details</h2>

<div class="img1">
<img src="./images/img1.jfif"width="200px" height="200px">
</div>


<table class="form-table">
<c:forEach var="del" items="${DelDetails}">

<c:set var="id" value="${del. deliveryID}"/>
<c:set var="date" value="${del. date}"/>
<c:set var="time" value="${del. time}"/>
<c:set var="address" value="${del. address}"/>
<c:set var="riderID" value="${del. riderID}"/>
<c:set var="vehicleNo" value="${del. vehicleNo}"/>
<c:set var="deliveryCharge" value="${del. deliveryCharge}"/>

<tr>
<td><label class="form-lable">DeliveryID</label></td>
<td class="form-input">${del. deliveryID }</td>
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

<c:url value="updateDelivery.jsp" var="delupdate">
<c:param name="id" value="${id}" />
<c:param name="date" value="${date}" />
<c:param name="time" value="${time}" />
<c:param name="address" value="${address}" />
<c:param name="riderID" value="${riderID}" />
<c:param name="vehicleNo" value="${vehicleNo}" />
<c:param name="deliveryCharge" value="${deliveryCharge}" />
</c:url>



<a href="${delupdate}">
	
	<button class="updatebtn">Update</button>		
	
</a>



<c:url value="deleteDelivery.jsp" var="deldelete">
<c:param name="id" value="${id}"/>
<c:param name="date" value="${date}"/>
<c:param name="time" value="${time}"/>
<c:param name="address" value="${address}"/>
<c:param name="riderID" value="${riderID}"/>
<c:param name="vehicleNo" value="${vehicleNo}"/>
<c:param name="deliveryCharge" value="${deliveryCharge}"/>

</c:url>
<a href="${deldelete}">
	
	<button class="deletebtn">Delete</button>		
	
</a>
<div class="container">
<form method="post" action="delMain.jsp">
<button class="okbtn">ok</button>
</form>	
</div>
</body>
</html>