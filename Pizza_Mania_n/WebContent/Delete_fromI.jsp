<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String itemID = request.getParameter("itemID");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "pizza_mania_db";
String userid = "root";
String password = "root123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from inventory where itemID="+itemID;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<title>Delete Inventory Item</title>
<link href="./Styles/Semantic-UI-CSS-master/semantic.css" rel="stylesheet" type="text/css" >
<link href="./Styles/bootstrap-5.0.0-beta3-dist/css/bootstrap.css" rel="stylesheet" type="text/css" >
<script src="./Styles/Semantic-UI-CSS-master/semantic.js"></script>
<link href="./Styles/main.css" rel="stylesheet" type="text/css" >

</head>
<body class="bodybg">

<div class="row">
		<div class="side">
			<div class="ui bottom attached segment pushable">
				  <div class="ui visible inverted left vertical sidebar menu">
				  		<img class="ui small circular image imglogo " src="./Images/logo.jpg">
				  		<br><br>
					    <a class="item" href="Home.jsp">
					      <i class="home icon"></i>
					      Home
					    </a>
					    <a class="item">
					      <i class="first order icon"></i>
					      Order Management 
					    </a>
					    <a class="item">
					      <i class="users icon"></i>
					      Employee Management 
					    </a>
					    <a class="item">
					      <i class="truck icon"></i>
					      Delivery Management  
					    </a>
					    <a class="item">
					      <i class="warehouse icon"></i>
					     Inventory Management  
					    </a>
					    <a class="item">
					      <i class="dollar sign icon"></i>
					      Finance Management  
					    </a>
					    <a class="item">
					      <i class="dolly icon"></i>
					      Supplier Management  
					    </a>
					    <a class="item">
					      <i class="calendar icon"></i>
					      Food Management  
					    </a>
				  </div>
			</div>
		</div>
		
		<div class="mainAddInv">
				<h2 class="col-md-8 title1">Delete Item</h2>
				<button class="ui btn right floated labeled icon button"  onclick="document.location='View_Total_Inventory.jsp'">
					Cancel<i class="window close outline icon"></i></button>
		
				<form method="post" action="deletefin">
				
						<div class="col-md-8">
						    <label  class="form-label" >Item ID</label>
						    <input type="text" name="itemID" id="itemID" value="<%=resultSet.getString("itemID") %>" class="form-control" readonly>
						</div>
						
						<div class="col-md-8">
						    <label  class="form-label" >Item Name</label>
						    <input  type="text" name="itemName" id="itemname" value="<%=resultSet.getString("itemName") %>" class="form-control" readonly>
						 </div>
						 
						<div class="col-md-8">
						    <label  class="form-label" >Category</label>
						    <select class="form-select" name="category" disabled>
						      <option value="<%=resultSet.getString("category") %>"></option>
						      <option>aa</option>
						      <option>bb</option>
						      <option>cc</option>
						    </select>
						 </div>
						 
						 <div class="col-md-8">
						    <label  class="form-label" >Quantity</label>
						    <input type="text" name="qty" value="<%=resultSet.getString("availableQnty") %>" class="form-control" readonly>
						 </div>
						 
						 <div class="col-md-8">
						    <label  class="form-label" >Expire Date</label>
						    <input type="date" name="expDate" value="<%=resultSet.getString("expDate") %>" class="form-control" readonly>
						 </div>
						 
						 <div class="col-md-8">
						    <label  class="form-label" >Supplier ID</label>
						    <input type="text" name="supID" value="<%=resultSet.getString("supplierID") %>" class="form-control" readonly>
						 </div>
						 
						  <div class="col-md-8">
						    <label  class="form-label" >Status</label>
						    <input type="text" name="status" value="<%=resultSet.getString("status") %>" class="form-control" readonly>
						 </div>
						<br>
				<button class="negative ui button col-md-3"  type="submit" name="submit" >Delete</button>
				</form>
				
				</div>
			</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>