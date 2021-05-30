<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Delivery.</title>

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
  color:  black;
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
   background:#A52A2A;
   position:relative;
top :60px;
left:500px;
}

.form-lable {font-size: 20px; ; font-weight:bolder; }
small{ color: firebrick; display:block; font-size: 15px;  }
.form-input{
    width: 260px; height: 35px; border-radius: 5px; padding-left: 5px;
}
.container{
text-align:center;
margin-top:100px;
}
.btn{
border:1px solid black;
background:#A52A2A;
font-weight:bolder;
border-radius: 5px;
padding: 10px 20px;
font-size:20px;
font-family:"montserrat";
cursor:pointer;
margin:10px;
transition:0.8s;
}
.btn1{
color:white;
margin-top:10px;
}
.btn2{
color:white;
margin-top:-50px;
text-align:center;
}
.btn1:hover,.btn2:hover{
color: grey; background-color: white;
}
 </style>
</head>
<body>
<h1>Delivery Management System.</h1>

<h2>Create Delivery</h2>

<div class="img1">
<img src="./images/img1.jfif"width="200px" height="200px">
</div>


<form method="post" action="InsertDelServlet">

<table class="form-table">
	<tr>
	<td><label class="form-lable">Delivery ID:</label></td>
	<td><input type="text" name="id" placeholder="Enter delivery Id" required="required" class="form-input"></td>
	</tr>
	<tr>
	<td><label class="form-lable">Date:</label></td>
	<td><input type="date" name="date" placeholder="Enter date" required="required" class="form-input"></td>
	</tr>
	<tr>
	<td><label class="form-lable">Time:</label></td>
	<td><input type="time" name="time" placeholder="Enter Time" required="required" class="form-input"></td>
	</tr>
	<tr>
	<td><label class="form-lable">Address:</label></td>
	<td><input type="text" name="addr" placeholder="Enter address" required="required" class="form-input"></td>
	</tr>
	<tr>
	<td><label class="form-lable">Rider ID:</label></td>
	<td><input type="text" name="rID" placeholder="Enter rider Id" required="required" class="form-input"></td>
	</tr>
	<tr>
	<td><label class="form-lable">Vehicle No:</label></td>
				<td><select name="vehicle"class="form-input">
				<option value="wp-XJ 1083">wp-XJ 1083</option>
				<option value="wp-BIW 9918">wp-BIW 9918</option>
				</select>  </td>
				</tr>
	<tr>
				
	<td><label class="form-lable">Delivery Charge:</label></td>
	<td><input type="number" name="dCharge" placeholder="Enter delivery charge" required="required"class="form-input">  </td>
	</tr>
	</table>
	<div class="container">	
	<button class="btn btn1">Create Delivery</button>		
	</div>
</form>
<div class="container">	
<form method="post" action="delMain.jsp">
<button class="btn btn2">Cancle</button>
</form>
</div>
</body>
</html>