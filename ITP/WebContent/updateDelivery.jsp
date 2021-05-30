<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update delivery</title>
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
  color: black;
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
  color: black;
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
 .img1{
position:relative;
left:60px;
}
.form-table td{
    padding-top: 10px;
   background:#7b571e;
   position:relative;
top :60px;
left:500px;
}

.form-lable {font-size: 20px; ; font-weight:bolder; }
small{ color: firebrick; display:block; font-size: 15px;  }
.form-input{
    width: 260px; height: 35px; border-radius: 5px; padding-left: 5px;
}

.btn1{
width: 200px; height: 40px; border-radius: 5px; margin-left: 500px; margin-top: 100px; 
    color: white; font-size: 20px;  ; font-weight:bolder;
    background-color: #7b571e;
}
.btn2{
width: 200px; height: 40px; border-radius: 5px; margin-left: 50px; margin-top: 100px; 
    color: white; font-size: 20px;  ; font-weight:bolder;
    background-color: #7b571e;
}

.btn1:hover, .btn2:hover{
color: grey; background-color: white;
}
  </style>
  
  
</head>
<body>
<h1>Delivery Management System</h1>

<h2>Update Delivery</h2>

<div class="img1">
<img src="./images/img1.jfif"width="200px" height="200px">
</div>

<%
	String deliveryID=request.getParameter("id");
	String date =request.getParameter("date");
	String time= request.getParameter("time");
	String address= request.getParameter("address");
	String riderID= request.getParameter("riderID");
	String vehicleNo= request.getParameter("vehicleNo");
	String deliveryCharge= request.getParameter("deliveryCharge");
%>

<form action="UpdateDelServlet" method="post">
<table  class="form-table">
<tr>
<td><label class="form-lable">DeliveryID</label> </td>
<td><input type="text" name="id" value="<%= deliveryID %>" class="form-input" readonly></td>
</tr>
<tr>
<td><label class="form-lable">Date</label> </td>
<td> <input type="date" name="date" value="<%= date%>"class="form-input"></td>
</tr>
<tr>
<td><label class="form-lable">Time </label></td>
<td><input type="time" name="time" value="<%= time%>"class="form-input"></td>
</tr>
<tr>
<td><label class="form-lable">Address </label></td>
<td><input type="text" name="addr" value="<%= address%>"class="form-input"></td>
</tr>
<tr>
<td><label class="form-lable">Rider ID</label></td>
<td> <input type="text" name="rID" value="<%= riderID%>"class="form-input"></td>
</tr>
<tr>
<td><label class="form-lable">Vehicle no</label></td>
<td> <select name="vehicle" value="<%= vehicleNo%>"class="form-input">
				<option value="wp-XJ 1083">wp-XJ 1083</option>
				<option value="wp-BIW 9918">wp-BIW 9918</option> 
				</select></td>
				</tr>
<tr>

<td><label class="form-lable">Delivery Charge</label></td>
<td> <input type="text" name="dCharge" value="<%= deliveryCharge%>"class="form-input"></td></tr>

</table>

	<button class="btn btn1">Update</button>
	
	<form method="post" action="delMain.jsp">
<button class="btn btn2">cancle</button>
</form>		
	

</form>


</body>
</html>