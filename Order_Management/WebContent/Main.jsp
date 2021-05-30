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
	
	.row{
  display: flex;
  text-align: center;
  justify-content: center;
 }
 .column1 p{
  color: white;
}
.column1{
  position: relative;
}
.card1{
  float: left;
  margin: 30px;
 }
 .card{
  position: relative;  
  border-radius: 26px;                           
  width: 300px;
  height: 360px;
  margin: 5px;
  background: rgba(255,255,255,.18);
  left: -60%
  }
  
  .contents{
  width: 300px;
  padding: 80px;
  box-sizing: border-box;
}
 
h1{
	color:white;
}



	 #myS a {
  position: absolute;
  left: -78px;
  transition: 0.3s;
  padding: 15px;
  width: 150px;
  text-decoration: none;
  font-size: 20px;
  color: white;
  border-radius: 0 5px 5px 0;
 
}
#myS a:hover {
  left: 0;
}


#a {
  top: 350px;
  background-color: #4CAF50;
}

#b {
  top: 410px;
  background-color: #2196F3;
}

#c {
  top: 470px;
  background-color: #f44336;
}

#a {width: 50%;}

.headL {
 font-family: "Lucida Console", "Courier New", monospace;
 color: white;
 font-size: 60px;
 text-align: left;
 padding: 40px;
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
			<h5>Main  Page</h5>
	   </div>



	<div id="myS" class="sid">
  		<a href="Login.jsp" id="a" style="width:23%">View Order</a>
  		<a href="orderInsert.jsp" id="b" style="width:28%">Create Order</a>
  		<a href="Report.jsp" id="c" style="width:33%">Generate Report</a>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
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
<br><br>

</body>
</html>



