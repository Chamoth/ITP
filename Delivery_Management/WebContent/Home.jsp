<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>pizzaMania home</title>
<link href="Semantic-UI-CSS-master/semantic.css" rel="stylesheet" type="text/css" >
<link href="bootstrap-5.0.0-beta3-dist/css/bootstrap.css" rel="stylesheet" type="text/css" >
<script src="Semantic-UI-CSS-master/semantic.js"></script>

<style type="text/css">
html { scroll-behavior: smooth; }

body {
    font-family: 'Open Sans', Arial, Helvetica, sans-serif;
    font-size: 18px;
	background-image: url("bg2.jpeg");
	background-size: cover;
  	background-repeat: no-repeat;
}


.btnL{
	margin-right:30px;	
}

ul {
    padding:0;
    margin-left: 100px; margin-right: 100px
}

nav > ul > li { list-style: none; }

a { 
	color: #3CF;
    text-decoration: none;
    transition: all 0.3s ease; 
}

p { 
    line-height: 1.8; 
    margin-top: 0;
}

h2 { margin-top: 0; }

.tm-row {
    display: flex;
    justify-content: space-between;
}

.imglogo{
  margin-left: -70px;
  margin-right: 50px;
  
	}


.tm-site-header {
    background-color: #F0F8FF;
    color: #099; 
    width: 400px;
    height: 100px; 
    display: flex;
    align-items: center;
    justify-content: center;
    margin-left: 470px;
    margin-top:50px;
    padding-bottom:10px;
	border-radius:30px;
}

.tm-site-logo { margin-right: 30px; }

.tm-site-name {
    font-size: 2.2rem;
    font-style: italic;    
}


.tm-site-nav-ul {
	
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.tm-page-nav-item { margin-top: 20px; }

.tm-page-link {
    min-width: 300px;
    height: 100px;
    background-color: white;
    color: #099;
    display: flex;
    text-decoration: none;
    align-items: center;      
    font-size: 1.2rem;
    border-radius:30px;
}

.tm-page-link:hover,
.tm-page-link.active {
    background-color: #099;
    color: white;
}

.tm-page-link-icon {
    margin-right: 25px;
    margin-left: 25px;
    font-size: 1.5rem;
}

.tm-black-bg {
    background-color: rgba(0,0,0,0.6);
    color: white;
}

</style>


</head>
<body class="bodyH">

<div>
		<div class="tm-site-header">
		<img class="ui tiny circular image imglogo " src="./images/img1.jfif">
            <h1 class="tm-site-name">PizzaMania</h1>
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
                <a href="EmployeeManagement.jsp" class="tm-page-link">
                  <i class="fas fa-mug-hot tm-page-link-icon"></i>
                  <span>Employee Management</span>
                </a>
              </li>
              <li class="tm-page-nav-item">
                <a href="delMain.jsp" class="tm-page-link">
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
                <a href="#" class="tm-page-link">
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