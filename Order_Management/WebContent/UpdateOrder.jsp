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
  height: 610px;
  margin: 5px;
  background: rgba(255,255,255,.18);
  left: -100%;
  top: 50px;

  }
.subBtn {
  background-color:green; 
  border: 2px solid #4CAF50;
 
}

.subBtn:hover {
  background-color:#4CAF50;
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
	
	<%
		String oid = request.getParameter("oid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobileno = request.getParameter("mobileno");
		String cusId = request.getParameter("cusid");
		String type = request.getParameter("type");
		String quantity = request.getParameter("quantity");
		String ordlid = request.getParameter("ordlid");
		String odate = request.getParameter("odate");
	%>
	
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
			<h5>Update Order Page</h5>
	   </div>
	   
	   
	    
	    <div class="nav">
  <a href="Main.jsp">Main</a>
  <a href="Login.jsp">Login</a>
  <a class="active">Update Order</a>
  <a href="DeleteOrder.jsp">Delete Order</a>
  <a href="orderInsert.jsp">Create Order</a>
  <a href="DisplayPage.jsp">Order Table Page</a>
</div>
    </header>
	
	
	
	
	
<div class="row">	
<div class="column">
<div class="card">
	 <div class="ordlogo">
         <img  src="ordlog.jpeg" alt="images">
         </div>

	<form action="update" method= "post">
	<table>
		<tr>
		<td><p><b>Order ID</td>  
		<td><input type = "text" name= "oid" value= "<%=oid %>"readonly ></td>
		</tr>
		<tr>
		<td><p><b>Customer Name</td>  
		<td><input type = "text" name= "name" value= "<%=name%>"></td>
		</tr>
		<tr>
		<td><p><b>E-mail</td>   
		<td><input type = "text" name= "email" value= "<%=email %>"></td>
		</tr>
		<tr>
		<td><p><b>Mobile NO</td>       
		<td><input type = "text" name= "mobileno" value= "<%=mobileno %>"></td>
		</tr>
		<tr>
		<td><p><b>Customer ID</td>       
		<td><p><input type = "text" name= "cusid" value= "<%=cusId %>"></td>
		</tr>
		
		<tr>
		<td><p><b><label class="form-label">Pizza Type</label></p></td> 
		<td><select name="type" value = "<%=type %>" class="form-input">
		<option value = "Chicken">Chicken</option>
		<option value = "Butter Chicken Masala">Butter Chicken Masala</option>
		<option value = "Cheese and Onion">Cheese and Onion</option>
		<option value = "BBQ Chicken">BBQ Chicken</option>
		</select></td>
		</tr>
		
		<td><p><b>Quantity</td>
		<td><input type = "text" name= "quantity" value= "<%=quantity %>"></td>
		</tr>
		<tr>
		<td><p><b>Order Line ID</td>
		<td><input type = "text" name= "quantity" value= "<%=ordlid %>"></td>
		</tr>
		<tr>
		<td><p><b>Order Date</td>
		<td><input type = "date" name= "odate" value= "<%=odate %>"></td>
		</tr>
		
		</table>
		<br><br>
		<div class="subBtn">
		<input type = "submit" name= "submit" value= "Update  Order"><br>
		</div>
	</form>
</div>
</div>
</div>


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


