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
				<a href="Home.jsp" class="navbar-brand"> PizzaMania
					Home Page </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Finance</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3  class="text-center"> List of Finance </h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New Finance</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Employee ID</th>
						<th>Total Salary</th>
						<th>Total Supplier Cost</th>
						<th>Total Cost</th>
						<th>Total Income </th>
						<th>Profit</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody >
					<!--   for (Todo todo: todos) {  -->
					
					<c:forEach var="finance" items="${listFinance}">

						<tr>
							<td><c:out value="${finance.id}" /></td>
							<td><c:out value="${finance.empId}" /></td>
							<td><c:out value="${finance.totSalary}" /></td>
							<td><c:out value="${finance.totSup}" /></td>
							<td><c:out value="${finance.totCost}" /></td>
							<td><c:out value="${finance.totIncome}" /></td>
							<td><c:out value="${finance.profit}" /></td>
							<td><a href="edit?id=<c:out value='${finance.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp;
							<a	href="delete?id=<c:out value='${finance.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
