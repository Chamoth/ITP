 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
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
border:1px solid #6b5b95;
background: #A52A2A;
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
color:#000000;
}
.btn1:hover{
color:#fff;
}
  </style>

</head>
<body>
<h1>Delivery Management System.</h1>

<h2>Search Delivery</h2>

<div class="img1">
<img src="./images/img1.jfif"width="200px" height="200px">
</div>
<form action="ShowServlet" method="post">

<table class="form-table">
<tr>
<td><label class="form-lable">Delivery ID:</label></td>
<td><input type="text" name="did" placeholder="Enter delivery Id" required="required" class="form-input"></td>
</tr>
</table>

<div class="container">	
	<button class="btn btn1">Search</button>		
	</div>
</form>

</body>
</html>