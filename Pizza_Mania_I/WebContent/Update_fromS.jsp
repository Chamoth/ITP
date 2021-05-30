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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from supplier where supID="+supID;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<title>Update Supplier Details</title>
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
		        
		<div class="mainAddSup">
			<h2 class="col-md-8 title1">Update Supplier Details</h2>
			
			<form method="post" action="updatefs" class="row g-3 needs-validation" novalidate>
			
					<div class="col-md-8">
					    <label  class="form-label" >Supplier ID</label>
					    <input type="text" name="supID" id="supID" value="<%=resultSet.getString("supID") %>" class="form-control" readonly>
					</div>
					
					<div class="col-md-8">
					    <label  class="form-label" >Company Name</label>
					    <input type="text" name="companyName" id="companyName" value="<%=resultSet.getString("companyName") %>" class="form-control" >
					    <div class="invalid-feedback">
							      Please provide the Company Name.
						</div>
					</div>
					<br>
					<div class="col-md-8">
					    <label  class="form-label" >Location</label>
					    <input type="text" name="location" id="location" value="<%=resultSet.getString("location") %>" class="form-control" >
					    <div class="invalid-feedback">
							      Please provide the location.
							    </div>
					</div>
					<br>
					<div class="col-md-8">
					    <label  class="form-label" >Contact Number</label>
					    <input type="text" name="contactNum" id="contactNum" value="<%=resultSet.getString("contactNum") %>" class="form-control" >
					    <div class="invalid-feedback">
							      Please provide a contact number.
							    </div>
					</div>
					<br>
					<div class="col-md-8">
					    <label  class="form-label" >Email</label>
					    <input type="email" name="email" id="email" value="<%=resultSet.getString("email") %>" class="form-control" >
					    <div class="invalid-feedback">
							      Please provide a email.
							    </div>
						<br><br>
					</div>
						<button class="ui primary button col-md-4" type="submit" name="submit" >Update</button>
				</form>
				<button class="ui button right floated " onclick="document.location='View_All_Suppliers.jsp'" >Cancel</button>

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
<script type="text/javascript">
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()
</script>
</html>











