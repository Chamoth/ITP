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


		.button{
		margin: 5% 45%;
		color: white;
		}
		
		.img{
			display: block;
			margin-left: 43%;
			
			
		}

		table,th,td{
  	 	border: 1px solid red;
		}
		
		.button {
			button-align: center;
			background-color: Transparent;
			border: 2px solid #8e44ad;
			border-radius: 10px;
			color: black;
			display: block;
			font-family: inherit;
			font-size: 14px;
			padding: 10px;
			margin-top: 20px;
			margin-left: 50%;
			width: 25%;
			text-align: center;
			cursor: pointer;
			transition: all 0.3s
			margin: 0;
  			position: absolute;
  			top: 100%;
  			left: 0%;
  			-ms-transform: translate(-50%, -50%);
  			transform: translate(-50%, -50%);
		}
		
		.button:hover {
			opacity: 0.9;
			background-color: #9400D3;
			color: white;
			box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
		}
		
	</style>




	<%
		String id = request.getParameter("userId");
		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String dbName = "pizza";
		String userId = "root";
		String password = "990219";
		
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
	<div class="img">
	<img src="img1.jfif" width="200px" height="200px">
	</div>
	<h1 align="center"><font><strong>Employee Management System</strong></font></h1>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
	<center><h2>Monthly Employee Report</h2>
	<p style="width:40%; margin:0% 25%;"> Date&Time: <%=new Date().toString() %></p>
	</center>
	<br>
	<table align="center" cellpadding="2" cellspacing="2" border="1">
	<tr>
	
		</tr>
		<tr bgcolor="#808080">
		<td><b>Emp ID</b></td>
		<td><b>Name</b></td>
		<td><b>Age</b></td>
		<td><b>Date of Birth</b></td>
		<td><b>Address</b></td>
		<td><b>Phone</b></td>
		<td><b>NIC</b></td>
		<td><b>Email Address</b></td>
		<td><b>Job Post</b></td>
		</tr>
	<%
	try{ 
	connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	statement=connection.createStatement();
	String sql ="SELECT * FROM pizza.employee";
	
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
	%>
		<tr bgcolor="#E0E0E0">
		
		<td><%=resultSet.getString("EmpID") %></td>
		<td><%=resultSet.getString("Name") %></td>
		<td><%=resultSet.getString("Age") %></td>
		<td><%=resultSet.getString("DOB") %></td>
		<td><%=resultSet.getString("Address") %></td>
		<td><%=resultSet.getString("Phone") %></td>
		<td><%=resultSet.getString("NIC") %></td>
		<td><%=resultSet.getString("Email") %></td>
		<td><%=resultSet.getString("JobPost") %></td>
		
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
	
	<button onclick="print()" class="button"> Download Report</button>
</body>


<script>


function print(){
	var element = document.getElementById("list");
	var opt = {
	  margin:       1,
	  filename:     'Employee List.pdf',
	  image:        { type: 'jpeg', quality: 0.98 },
	  html2canvas:  { scale: 2 },
	  jsPDF:        { unit: 'in', format: 'A3', orientation: 'landscape' }
	};
	 
	// New Promise-based usage:
	html2pdf().from(element).set(opt).save();
}

</script>
</html>