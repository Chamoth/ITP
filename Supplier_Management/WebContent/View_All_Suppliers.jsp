<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String supID = request.getParameter("supID");
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
<html>
<head>
<title>Supplier Details</title>

<link href="./Styles/Semantic-UI-CSS-master/semantic.css" rel="stylesheet" type="text/css" >
<link href="./Styles/bootstrap-5.0.0-beta3-dist/css/bootstrap.css" rel="stylesheet" type="text/css" >
<script src="./Styles/Semantic-UI-CSS-master/semantic.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
<link href="./Styles/main.css" rel="stylesheet" type="text/css" >
</head>
<body  class="bodybg">
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

		<div class="mainViewSup">
				<button class="ui btn right floated labeled icon button"  onclick="document.location='Add_Supplier_Details.jsp'">
					Add New Supplier<i class="user icon"></i></button>
					
					
					<h2 class="col-md-8 title2">Suppliers</h2>
					<table class="ui selectable singel line table tblS">
					<thead>
						<tr>
							<th>Supplier ID</th>
							<th>Company Name</th>
							<th>Location</th>
							<th>Contact Number</th>
							<th>Email</th>
							<th>Update</th>
							<th>Delete</th>
						</tr>
					</thead>
					<%
					try{
					connection = DriverManager.getConnection(connectionUrl+database, userid, password);
					statement=connection.createStatement();
					String sql ="select * from supplier";
					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
					<tr>
					<td><%=resultSet.getString("supID") %></td>
					<td><%=resultSet.getString("companyName") %></td>
					<td><%=resultSet.getString("location") %></td>
					<td><%=resultSet.getString("contactNum") %></td>
					<td><%=resultSet.getString("email") %></td>
					<td><a href="Update_fromS.jsp?supID=<%=resultSet.getString("supID")%>">update<i class="edit outline icon"></i></a></td>
					<td><a href="Delete_fromS.jsp?supID=<%=resultSet.getString("supID")%>">Delete<i class="trash icon"></i></a></td>
					</tr>
					
					<%
					}
					connection.close();
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
					</table>
					
					<br>
				<button class="ui btn right floated labeled icon button"  onclick="document.location='ViewReport.jsp'">
					Generate Report<i class="file alternate icon"></i></button>         
			</div>
	</div>

</body>

</html>













