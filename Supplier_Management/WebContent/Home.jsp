<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>pizza mania home</title>
<link href="./Styles/Semantic-UI-CSS-master/semantic.css" rel="stylesheet" type="text/css" >
<link href="./Styles/bootstrap-5.0.0-beta3-dist/css/bootstrap.css" rel="stylesheet" type="text/css" >
<script src="./Styles/Semantic-UI-CSS-master/semantic.js"></script>

<link href="./Styles/home2.css" rel="stylesheet" type="text/css" >
</head>
<body class="bodyH">

<div>
		<div class="tm-site-header">
		<img class="ui tiny circular image imglogo " src="./Images/logo.jpg">
            <h1 class="tm-site-name">Pizza Mania</h1>
          </div>
</div>





<div>
  <div class="tm-container">
    <div class="tm-row">
      <!-- Site Header -->
      <div class="tm-left">
        <div class="tm-left-inner">
          <nav class="tm-site-nav">
            <ul class="tm-site-nav-ul">
              <li class="tm-page-nav-item">
                <a href="#" class="tm-page-link">
                  <i class="fas fa-mug-hot tm-page-link-icon"></i>
                  <span>Order Management</span>
                </a>
              </li>
              <li class="tm-page-nav-item">
                <a href="#" class="tm-page-link">
                  <i class="fas fa-mug-hot tm-page-link-icon"></i>
                  <span>Employee Management</span>
                </a>
              </li>
              <li class="tm-page-nav-item">
                <a href="#" class="tm-page-link">
                  <i class="fas fa-mug-hot tm-page-link-icon"></i>
                  <span>Delivery Management</span>
                </a>
              </li>
              <li class="tm-page-nav-item">
                <a href="View_Total_Inventory.jsp" class="tm-page-link">
                  <i class="fas fa-mug-hot tm-page-link-icon"></i>
                  <span>Inventory Management</span>
                </a>
              </li>
              <li class="tm-page-nav-item">
                <a href="#" class="tm-page-link">
                  <i class="fas fa-mug-hot tm-page-link-icon"></i>
                  <span>Finance Management</span>
                </a>
              </li>
              <li class="tm-page-nav-item">
                <a href="View_All_Suppliers.jsp" class="tm-page-link">
                  <i class="fas fa-users tm-page-link-icon"></i>
                  <span>Supplier Management</span>
                </a>
              </li>
              <li class="tm-page-nav-item">
                <a href="#" class="tm-page-link">
                  <i class="fas fa-glass-martini tm-page-link-icon"></i>
                  <span>Food Management</span>
                </a>
              </li>
              <li class="tm-page-nav-item">
                <a href="#" class="tm-page-link">
                  <i class="fas fa-comments tm-page-link-icon"></i>
                  <span>Customer Management</span>
                </a>
              </li>
            </ul>
          </nav>
        </div>        
      </div>
      </div>
      </div>
</div>
<br><br>
<button class="ui btn right floated labeled icon button btnL"  onclick="document.location='Login.jsp'">Log out<i class="arrow left icon"></i></button>
</body>
</html>