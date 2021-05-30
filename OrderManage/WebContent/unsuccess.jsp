<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
 
 .word{
   color: #FDFEFE;
   font-size: 30px;
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
			<h5>Create Order Page</h5>
	   </div>
	   
	   
	    
	    <div class="nav">
  <a href="Main.jsp">Main</a>
  <a href="Login.jsp">Login</a>
  <a href="UpdateOrder.jsp">Update Order</a>
  <a href="DeleteOrder.jsp">Delete Order</a>
  <a href="orderInsert.jsp">Create Order</a>
  <a href="DisplayPage.jsp">Order Table Page</a>
  <a class="active">Order UnSuccess</a>
</div>
    </header>
    
<div class = "word">
<h1>Hello Pizza Lovers...</h1>
<h3>Create UnSuccess</h3>
<h2>TRY AGAIN.</h2>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>					
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