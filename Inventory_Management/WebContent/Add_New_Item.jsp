<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Items</title>

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
					    <a class="item">
					      <i class="users icon"></i>
					      Customer Management 
					    </a>
				  </div>
			</div>
		</div>
		
		
		<div class="mainAddInv">
			<button class="ui btn right floated labeled icon button"  onclick="document.location='View_Total_Inventory.jsp'">
					View Total Inventory<i class="book icon"></i></button>
				<h2 class="col-md-8 title1">Add New Item</h2>

				<form action="addnewitem" method="post" class="row g-3 needs-validation" novalidate>
				
				  <div class="col-md-8">
				    <label  class="form-label" >Item Name</label>
				    <input type="text" class="form-control"   name="itemName" required>
				  </div>
				  
				  <div class="col-md-8">
				    <label class="form-label">Category</label>
				    <select class="form-select" name="category" required>
				      <option selected disabled value="">select...</option>
				      <option>Pizza Ingredients</option>
				      <option>Pizza Bake wares</option>
				      <option>Pizza Tools</option>
				      <option>Pizza Equipment</option>
				      <option>Pizza Packaging Supplies</option>
				      <option>Delivery Supplies</option>
					</select>
				    <div class="invalid-feedback">
				      Please select a Category.
				    </div>
				  </div>
				  <div class="col-md-8">
				    <label  class="form-label">Quantity</label>
				    <input type="number" class="form-control" name="qty" required>
				    <div class="invalid-feedback">
				      Please provide the Quantity
				    </div>
				  </div>
				  
				  <div class="col-md-8">
				    <label  class="form-label">Expire Date</label>
				    <input type="date" class="form-control" name="expDate" required>
				    <div class="invalid-feedback">
				      Please provide the expire date.
				    </div>
				  </div>
				  
				  <div class="col-md-8">
				    <label class="form-label">Supplier ID</label>
				    <input type="text" class="form-control" name="supID" required>
				    <div class="invalid-feedback">
				      Please provide the Supplier ID.
				    </div>
				    <br><br>
				  </div>
				  
				<button class="ui primary button col-md-4" name="submit" type="submit">
				  Add Item
				</button>
				<button class="ui button col-md-4"  type="reset">
				 	Reset
				</button>
				</form>
			</div>
		</div>


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