<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<style type="text/css">

body{
		background-image: url('repo.jpeg');
		background-repeat: no-repeat;
 		 background-attachment: fixed;  
 		 background-size: cover;
		text-align: center;
	}
	
.button{
margin: 5% 45%;
color: white;
}

table,th,td{
   border: 1px solid red;
 
}

.btn{
margin:5% 45%;
}


 

img{
  border: 5px solid #A52A2A;
}
</style>




<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "pizza";
String userId = "root";
String password = "mysqlshakthi";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<body>


<div id="list">
<div class="img1">
<img src="logo.jpeg"width="200px" height="200px">
</div>
<h1 align="center" ><font><strong>Pizza_mania</strong></font></h1>
<h2 align="center" ><font><strong>Order Management System</strong></font></h1>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
<center><h2>Order Report</h2></center>
<p align="center"> Date & Time : <%=new Date().toString() %></p>
<table align="center" cellpadding="2" cellspacing="2" border="2">
<tr>

</tr>
<tr bgcolor="#808080">
<td><b>Order ID</b></td>
<td><b>Name</b></td>
<td><b>Email</b></td>
<td><b>Contact No</b></td>
<td><b>Customer ID</b></td>
<td><b>Type</b></td>
<td><b>Quantity Charge</b></td>
<td><b>Order ID</b></td>
<td><b>Order Date</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM pizza.order";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#E0E0E0">

<td><%=resultSet.getString("oid") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("mobileno") %></td>
<td><%=resultSet.getString("cusid") %></td>
<td><%=resultSet.getString("type") %></td>
<td><%=resultSet.getString("quantity") %></td>
<td><%=resultSet.getString("ordlid") %></td>
<td><%=resultSet.getString("odate") %></td>

</tr>

<% 
}
connection.close();

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>

<button onclick="print()" class="btn"> Download Report</button>
</body>


<script>

function print(){
	var element = document.getElementById("list");
	var opt = {
	  margin:       1,
	  filename:     'Orderlist.pdf',
	  image:        { type: 'jpeg', quality: 0.98 },
	  html2canvas:  { scale: 2 },
	  jsPDF:        { unit: 'in', format: 'A3', orientation: 'landscape' }
	};
	 
	// New Promise-based usage:
	html2pdf().from(element).set(opt).save();
}

</script>
</html>