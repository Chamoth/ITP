<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String foodcode = request.getParameter("Food_Code");
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
<html>
<head>
<title>Details of Food Varieties</title>

<link href="Semantic-UI-CSS-master/semantic.css" rel="stylesheet" type="text/css" >
<link href="Main.css" rel="stylesheet" type="text/css" >
<script src="Semantic-UI-CSS-master/semantic.js"></script>

<style type = "text/css">

body{
background-image:url('bg7.jpeg');
background-attachment:fixed;
background-repeat: no-repeat;
background-size:cover;
}

.col-md-8 title2{text-align: center;}

.container {
  height: 200px;
  position: relative;
}

.vertical-center {
  margin: 0;
  position: absolute;
  top: 50%;
  left: 45%;
  -ms-transform: translateY(-50%);
  transform: translateY(-50%);
}


 </style>

</head>

<body>	
<button class="ui btn right floated labeled icon button"  onclick="document.location='AddFood.jsp'">
					Add New food<i class="plus square outline icon"></i></button>
					
		<div id="list">	
		<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
				<h1 class="col-md-8 title2">Download the Report of the Food Catalogue</h1>
			
				<table  class="ui selectable singel line table tblS">
				<thead>
					<tr>
						<th>Food Code</th>
						<th>Food Name</th>
						<th>Introduction</th>
						<th>Unit Price</th>
						<th>Category</th>
						<th>Size</th>
					</tr>
				</thead>
				<%
				try{
				connection = DriverManager.getConnection(connectionUrl+database, userid, password);
				statement=connection.createStatement();
				String sql ="select * from food";
				resultSet = statement.executeQuery(sql);
				while(resultSet.next()){
				%>
				<tr>
				<td><%=resultSet.getString("Food_Code") %></td>
				<td><%=resultSet.getString("Food_Name") %></td>
				<td><%=resultSet.getString("Introduction") %></td>
				<td><%=resultSet.getString("Unit_Price") %></td>
				<td><%=resultSet.getString("Category") %></td>
				<td><%=resultSet.getString("Size") %></td>

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
			<br>
				<div class="container">
  			<div class="vertical-center">
			<a href = "ReportFile.jsp"> <button class="ui btn right floated labeled icon button"  >
					Download Report<i class="download icon"></i></button></a>
			</div>
			</div>


</body>
<script>
		
		
		function print() {
			var element = document.getElementById("list");
			var opt = {
					margin: 1,
					filename: 'FoodDetails.pdf',
					image: { type:'jpeg', quality:0.98 },
					html2canvas: {scale:2},
					jsPDF:{unit: 'in' , format:'letter', orientation:'landscape'}
			};
			html2pdf().from(element).set(opt).save();
		}
		
		
		
	</script>
</html>

