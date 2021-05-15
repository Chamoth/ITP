package com.employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EmployeeDeleteServlet")
public class EmployeeDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String empId = request.getParameter("id");
		boolean isTrue;
		
		isTrue = EmployeeDBUtil.deleteEmployee(empId);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("EmployeeInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Employee> empDetails = EmployeeDBUtil.getEmployeeDetails(empId);
			request.setAttribute("empDetails", empDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("EmployeeManagement.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
