<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
body{
		background-image: url('mainpageimage.jpeg');
		background-repeat: no-repeat;
 		 background-attachment: fixed;  
 		 background-size: cover;
		text-align: center;
	}
	
	.ordlogo img{
  width: 65px;
  height: 65px;
  position: absolute;
  transform: translateX(95px);
  top: 8px;
  
}	
	.row{
  display: flex;
  text-align: center;
  justify-content: center;
  color: white;
 }	
 .column1 p{
  color: white;
}
.column1{
  position: relative;
}
.card1{
  float: left;
  margin: 15px;
  
 }
 .card{
  position: relative;  
  border-radius: 26px;                           
  width: 380px;
  height: 380px;
  margin: 5px;
  background: rgba(255,255,255,.18);
  left: -100%;
  top: 50px;

  }


.subBtn:hover {
			opacity: 0.9;
			background-color:#4CAF50 ;
			color: white;
			box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
		}
.subBtn {
			background-color: #4CAF50;
			border: 2px solid #8e44ad;
			border-radius: 10px;
			color: black;
			display: block;
			font-family: inherit;
			font-size: 14px;
			padding: 10px;
			margin-top: 20px;
			width: 10%;
			text-align: center;
			cursor: pointer;
			transition: all 0.3s
		}

table {
  border-collapse: collapse;
  width: 60%;
  margin:105px 0 0 105px;
  top:30px;
  }
  


  
  th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
  color:white;
}
.but1 {background-color: #008000;
	color: white;
}
.but2 {background-color: #008000;
	color: white;
}
.but3 {background-color: #008000;
	color: white;
}


	/*Header*/
	.head{
  		padding: 1px;
  		text-align: center;
 		background: black;
        color: red;
        font-size: 20px;
        text-transform: uppercase;
        
	}
	.head h1{
    	text-align: center;
  		color:white;
	}
	
	
	
	
		
		/*Footer*/
.footer{
  background: black;
  height: 200px;
  width: 100%;
}
.column1 p{
  color: white;
}
.column1{
  position: relative;
}
.row1{
  display: flex;
  justify-content: center;
 }
 .card1{
  float: left;
  margin: 30px;
 }
 
 
  .nav {
  overflow: hidden;
  background-color: #333;
}

.nav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.nav a:hover {
  background-color: #ddd;
  color: black;
}

.nav a.active {
  background-color: red;
  color: white;
}
 
  /*Logo*/
 .mlogo img{
  width: 205px;
  height: 205px;
  left: -40px;
  position: absolute;
  transform: translateX(95px);
  }
 



</style>
</head>
<body>

		<!--logos -->
<div>
    <div class="mlogo">
         <img  src="logo.jpeg" alt="images">
    </div>
</div>
<!--Header -->
	<header>
       <div class="head">
       		<h2><br>Pizza_mania<br></h2>  <h4>Order Management System</h4>
			<h5>Display Order Page</h5>
	   </div>
	   
	   
	    
	    <div class="nav">
  <a href="Main.jsp">Main</a>
  <a href="Login.jsp.jsp">Login</a>
  <a href="UpdateOrder.jsp">Update Order</a>
  <a href="DeleteOrder.jsp">Delete Order</a>
  <a href="orderInsert.jsp">Create Order</a>
  <a class="active">Order Table Page</a>
</div>
    </header>
	
	
	<table>
	<c:forEach var= "ord" items= "${ordDetails}">
	
	<c:set var ="oid" value= "${ord.oid }"/>
	<c:set var ="name" value= "${ord.name }"/>
	<c:set var ="email" value= "${ord.email }"/>
	<c:set var ="mobileno" value= "${ord.mobileno }"/>
	<c:set var ="cusid" value= "${ord.cusid }"/>
	<c:set var ="type" value= "${ord.type }"/>
	<c:set var ="quantity" value= "${ord.quantity }"/>
	<c:set var ="ordlid" value= "${ord.ordlid }"/>
	<c:set var ="odate" value= "${ord.odate }"/>
	

	
	
	<tr>
		<td>Order ID</td>
		<td>${ord.oid}</td>
	</tr>
	<tr>
		<td><b>Customer Name</td>
		<td>${ord.name}</td>
	</tr>
	<tr>
		<td><b>E-mail</td>
		<td>${ord.email}</td>
	</tr>
	<tr>
		<td><b>Mobile NO</td>
		<td>${ord.mobileno}</td>
	</tr>
	<tr>
		<td><b>Customer ID</td>
		<td>${ord.cusid}</td>
	</tr>
	<tr>
		<td><b>Type</td>
		<td>${ord.type}</td>
	</tr>
	<tr>
		<td><b>Quantity</td>
		<td>${ord.quantity}</td>
	</tr>
	<tr>
		<td><b>Order Line ID</td>
		<td>${ord.ordlid}</td>
	</tr>
	
	<tr>
		<td><b>Order Date</td>
		<td>${ord.odate}</td>
	</tr>
	</c:forEach>
	</table>

	
	
	
	<br><br><br>
	<c:url value= "UpdateOrder.jsp" var= "ordupdate">
		<c:param name= "oid" value="${oid}"/>
		<c:param name= "name" value="${name}"/>
		<c:param name= "email" value="${email}"/>
		<c:param name= "mobileno" value="${mobileno}"/>
		<c:param name= "cusid" value="${cusid}"/>
		<c:param name= "type" value="${type}"/>
		<c:param name= "quantity" value="${quantity}"/>
		<c:param name= "ordlid" value="${ordlid}"/>	
		<c:param name= "odate" value="${odate}"/>
		
	</c:url>
	
	<a href= "${ordupdate}">
	<input type= "button" class="but1" name= "update" value= "Update Order">
	</a>
	
	
	<c:url value= "DeleteOrder.jsp" var= "orddelete">
		<c:param name= "oid" value="${oid}"/>
		<c:param name= "name" value="${name}"/>
		<c:param name= "email" value="${email}"/>
		<c:param name= "mobileno" value="${mobileno}"/>
		<c:param name= "cusid" value="${cusid}"/>
		<c:param name= "type" value="${type}"/>
		<c:param name= "quantity" value="${quantity}"/>
		<c:param name= "ordlid" value="${ordlid}"/>
		<c:param name= "odate" value="${odate}"/>	
		
	</c:url>
	<a href = "${orddelete}">
	<input type = "button" class="but2"  name= "delete" value = "Delete Order">
	</a>
	
	
	<c:url value= "orderInsert.jsp" var= "ordinsert">
		<c:param name= "oid" value="${oid}"/>
		<c:param name= "name" value="${name}"/>
		<c:param name= "email" value="${email}"/>
		<c:param name= "mobileno" value="${mobileno}"/>
		<c:param name= "cusid" value="${cusid}"/>
		<c:param name= "type" value="${type}"/>
		<c:param name= "quantity" value="${quantity}"/>
		<c:param name= "ordlid" value="${ordlid}"/>	
		<c:param name= "odate" value="${odate}"/>
		
	</c:url>
	<a href = "${ordinsert}">
	<input type = "button" class="but3" name= "insert" value = "Create Order">
	</a>



					<br><br><br><br><br>
<!--//Footer -->
<footer>
<div class="footer">
	<div class="row1">
	  <div class="column1">
	  	<div class="card1">
       <p>Order Now</p>
       <p>PROMOS</p>
       <p>PIZZAS</p>
       <p>BEVERAGES</p>
       </div>
       </div>

       <div class="column1">
       	<div class="card1">
       <p>About</p>
       <p>CAREERS</p>
       <p>FEEDBACK</p>
       <p>HOTLINE</p>
       </div>
       </div>

        <div class="column1">
       	<div class="card1">
       <p>Policy</p>
       <p>TERMS & CONDITIONS</p>
       <p>PRIVACT POLICY</p>
       </div>
       </div>

       <div class="column1">
       	<div class="card1">
       <p>My Pizza_Mania</p>
       <p>email- pizzamania@gmail.com </p>
       <p>SIGN IN/ REGISTER</p>
       <p>Telephone- 0112345987</p>
       </div>
   </div>
 </div>
</footer>
</body>
</html>