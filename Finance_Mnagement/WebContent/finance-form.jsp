<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Finance Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="finance-list.jsp" class="navbar-brand"> Finance Management App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Finance</a></li>
			</ul>
		</nav>
	</header>
	
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
			
				<c:if test="${finance != null}">
					<form action="update" method="post"></form>
				</c:if>
				
				<c:if test="${finance == null}">
					<form action="insert" method="post"></form>
				</c:if>

				
                            
                        
                                <c:if test="${finance != null}">
                                    Edit finance
                                </c:if>
                                <c:if test="${finance == null}">
                                    Add New finance
                                </c:if>
                           
				

				<c:if test="${finance != null}">
				
					<input type="hidden" name="id" value="<c:out value='${finance.id}' />" />
				</c:if>

				
				
				<fieldset class="form-group">
					<label>Employee ID</label> <input type="text"
						value="<c:out value='${finance.empId}' />" class="form-control"
						name="empId" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Total Salary</label> <input type="text"
						value="<c:out value='${finance.totSalary}' />" class="form-control"
						name="totSalary">
				</fieldset>

				<fieldset class="form-group">
					<label>Total of Supplier Cost</label> <input type="text"
						value="<c:out value='${finance.totSup}' />" class="form-control"
						name="totSup">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Total Cost</label> <input type="text"
						value="<c:out value='${finance.totCost}' />" class="form-control"
						name="totCost">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Total of Income </label> <input type="text"
						value="<c:out value='${finance.totIncome}' />" class="form-control"
						name="totIncome">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Profit</label> <input type="text"
						value="<c:out value='${finance.profit}' />" class="form-control"
						name="profit">
				</fieldset>
				

				<button type="submit" class="btn btn-success">Save</button>
				
				
				
			
			</div>
		</div>
	</div>
</body>
</html>

