<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Management System</title>

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
  color:  #000000;
  marging:0;
  paddding:5;
  text-align:center;
  font-family:'arial';
  position: absolute;
  top:50px;
  left:20%;
 }
 
 h3
{
  font-size:2em;
  color:white ;
  marging:0;
  paddding:5;
  text-align:center;
  font-family:'arial';
  position: absolute;
  top:800px;
  left:25%;
 }


img{
border:5px solid #A52A2A;
}

.img1{
position:relative;
left:60px;
}
.img2{
position:relative;
top :50px;
left:500px;
}
.container{
text-align:center;
margin-top:180px;
}
.btn{
border:1px solid #6b5b95;
background:  #A52A2A;
font-weight:bolder;
padding: 10px 20px;
font-size:20px;
font-family:"montserrat";
border-radius: 5px;
cursor:pointer;
margin:10px;
transition:0.8s;
}
.btn1{
color:white;
}
.btn1:hover{
color: grey; background-color: white;
}

</style>



</head>
<body>
<h1> Delivery Management System.</h1>

<div class="img1">
<img src="./images/img1.jfif"width="200px" height="200px">
</div>
<div class="img2">
<img src="./images/img2.jfif"width="500px" height="500px">
</div>


<h3>Welcome to delivery management system of pizza_maniya</h3>


<div class="container">

<form method="post" action="addDelivery.jsp">
<button class="btn btn1">Add Delivery</button>
</form>

<form method="post" action="show.jsp">
<button class="btn btn1">View Delivery</button>
</form>


<form method="post" action="report.jsp">
<button class="btn btn1">Generete Report</button>
</form>

</div>
</body>



</html>