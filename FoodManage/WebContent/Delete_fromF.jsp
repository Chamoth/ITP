

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String foodcode = request.getParameter("foodcode");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "pizza";
String userid = "root";
String password = "Yasasvi";
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
String sql ="select * from food where Food_Code="+foodcode;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PizzaMania - Delete Food</title>

<style type = "text/css">

body{
background-image:url('bg6.jpeg');
background-attachment:fixed;
background-repeat: no-repeat;
background-size:cover;
}

.bttn {
  background-color: #f4511e;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.6;
  transition: 0.3s;
}

.bttn:hover {opacity: 1}

.center {
  margin: 0;
  position: absolute;
  top: 90%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}

.col-md-8 {color: #f98404;}

 </style>

</head>
<body>
<br><br><br><br><br><br><br><br><br><br>
<h1 class="col-md-8 title1" align = "center">Delete Food Details</h1><br>
					
			<form method="post" action="deletefood">

				<div class="col-md-8" align = "center">
				    <label  style ="color:red;" class="form-label" >Food Code</label>
				    <input type="text" name="foodcode" id="foodcode" value="<%=resultSet.getString("Food_Code") %>" class="form-control" readonly>
				</div>
				<br>
				<div class="col-md-8" align = "center">
				    <label  style ="color:red;" class="form-label"  >Food Name</label>
				    <input  type="text" name="foodname" id="foodname" value="<%=resultSet.getString("Food_Name") %>" class="form-control" readonly>
				 </div>
				 
				 <br>
				 <div class="col-md-8" align = "center">
				    <label  style ="color:red;" class="form-label" >Introduction</label>
				    <input type="text" name="introduction" value="<%=resultSet.getString("Introduction") %>" class="form-control" readonly>
				 </div>
				 
				 <br>
				 <div class="col-md-8" align = "center">
				    <label style ="color:red;" class="form-label" >Unit Price</label>
				    <input type="number" name="unitprice" value="<%=resultSet.getString("Unit_Price") %>" class="form-control" readonly>
				 </div>
				 
				 <br>
				 <div class="col-md-8" align = "center">
				    <label style ="color:red;" class="form-label" >Category</label>
				    <input type="text" name="category" value="<%=resultSet.getString("Category") %>" class="form-control" readonly>
				 </div>
				 
			
				 <br>
				  <div class="col-md-8" align = "center">
				    <label style ="color:red;" class="form-label" >Size</label>
				    <input type="text" name="size" value="<%=resultSet.getString("Size") %>" class="form-control" readonly>
				    <br><br>
				 </div>
				 
				 <br>
				  <div class="container">
  				<div class="center">
  				<div class = "bttn">
					<button class="ui primary button col-md-4" type="submit" name="submit" >Delete</button>
					</div>
 				 </div>
				</div>
			</form>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>