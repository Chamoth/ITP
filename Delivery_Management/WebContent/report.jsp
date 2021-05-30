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
body
{ padding:2;
 marging:0;
 background-image:url(./images/bkground.jfif);
 background-size:cover;
 background-attachment:fixed;
 text-align:center;
}
 
 
 img{
border:5px solid #A52A2A;
}
 </style>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "deliverymanagementdb";
String userId = "root";
String password = "root1234";

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
<img src="./images/img1.jfif"width="200px" height="200px">
</div>
<h1 align="center"><font><strong>Delivery Management System.</strong></font></h1>
<h2 align="center">Delivery Report</h2>
<p align="center">Date&Time:<%=new Date().toString() %></p>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>

<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Delivery ID</b></td>
<td><b>Date</b></td>
<td><b>Time</b></td>
<td><b>Address</b></td>
<td><b>Rider Id</b></td>
<td><b>Vehicle No</b></td>
<td><b>Delivery Charge</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM delivery";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("DeliveryID") %></td>
<td><%=resultSet.getString("Date") %></td>
<td><%=resultSet.getString("Time") %></td>
<td><%=resultSet.getString("Address") %></td>
<td><%=resultSet.getString("RiderID") %></td>
<td><%=resultSet.getString("VehicleNo") %></td>
<td><%=resultSet.getString("DeliveryCharge") %></td>

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

<center><button onclick="print()">Download Report</button></center>
</body>
<script>

function print(){
	
	var element=document.getElementById("list");
	var opt={
			margin: 1,
			filename:'Deliverylist.pdf',
			image:{type:'jpeg',quality:0.98},
			html2canvas:{scale:2},
			jsPDF:{unit:'in',format:'letter',orientation:'landscape'}
	};
	
	//New promise-based usage:
		html2pdf().from(element).set(opt).save();
}


</script>
</html>



