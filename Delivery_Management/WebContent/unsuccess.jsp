<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Unsuccess Delivery</title>
<style type="text/css">
body
{ padding:2;
 marging:0;
 background-image:url(./images/bkground.jfif);
 background-size:cover;
 background-attachment:fixed;
}
img{
border:5px solid #6b5b95;
}

.img1{
position:relative;
left:60px;
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
 font-size:2.5em;
  color: #ff1a1a;
  marging:0;
  paddding:5;
  text-align:center;
  font-family:'arial';
  position: absolute;
  top:300px;
  left:30%;
 
 }
 .container{
text-align:center;
margin-top:250px;
}
.btn{
border:1px solid #6b5b95;
background: #669999;
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
<h1> Delivery Management System.</h1>

<div class="img1">
<img src="./images/img1.jfif"width="200px" height="200px">
</div>

<h2>Detail adding unsuccess.</h2>
<div class="container">
<form method="post" action="show.jsp">
<button class="btn btn1">View Delivery</button>
</form>

<form method="post" action="delMain.jsp">
<button class="btn btn1">Home</button>
</form>
</div>

</body>
</html>