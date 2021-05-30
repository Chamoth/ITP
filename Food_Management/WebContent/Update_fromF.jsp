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
<title>PizzaMania - Update Food</title>
<style type = "text/css">

body{
background-image:url('bg5.jpeg');
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
  top: 75%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}

.col-md-8 {
color: black;

}

 </style>
 
 <script type="text/javascript">
		function validate(){
			if((add1.unitprice.value)<0){
				alert("Check the Unit Price: Price Must not be a Negative Value."); 
				add1.unitprice.focus();
				return false;
			}
			/*if((fma.unitprice.value).length>7){
				alert("Check the phone number");
				fma.phoneNo.focus();
				return false;
			}*/
			
			return true;
			
		}
</script>
 
</head>
<body>
<h2 class="col-md-8 title1" align = "center">Update Food Details</h2><br>
					
			<form method="post" action="updatefood" name="add1">

				<div class="col-md-8" align = "center">
				    <label  class="form-label" ><b>Food Code</b></label>
				    <input type="text" name="foodcode" id="foodcode" value="<%=resultSet.getString("Food_Code") %>" class="form-control" readonly>
				</div>
				<br>
				
				<div class="col-md-8" align = "center">
				    <label  class="form-label" ><b>Food Name</b></label>
				    <input  type="text" name="foodname" id="foodname" value="<%=resultSet.getString("Food_Name") %>" class="form-control">
				 </div>
				 <br>
				 
				 
				 <div class="col-md-8"align = "center">
				    <label  class="form-label" ><b>Introduction</b></label>
				    <input type="text" name="introduction" value="<%=resultSet.getString("Introduction") %>" class="form-control" >
				 </div>
				 <br>
				 
				 <div class="col-md-8" align = "center">
				    <label  class="form-label" ><b>Unit Price</b></label>
				    <input type="number" name="unitprice" value="<%=resultSet.getString("Unit_Price") %>" class="form-control" >
				 </div>
				 <br>
				 
				 <div class="col-md-8" align = "center">
				    <label  class="form-label" ><b>Category</b></label>
				    <input type="text" name="category" value="<%=resultSet.getString("Category") %>" class="form-control" >
				 </div>
				 <br>
				 
			
				 
				  <div class="col-md-8" align = "center">
				    <label  class="form-label" ><b>Size</b></label>
				    <input type="text" name="size" value="<%=resultSet.getString("Size") %>" class="form-control" >
				    <br><br>
				 </div>
				 <br>
				 
				 <div class="container">
  				<div class="center">
  				<div class = "bttn">
   				 <button class="ui primary button col-md-4" type="submit" name="submit" onClick="return validate();">Update</button>
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