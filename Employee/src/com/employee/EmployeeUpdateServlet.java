package com.employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EmployeeUpdateServlet")
public class EmployeeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String empId = request.getParameter("id");
		String name = request.getParameter("fname");
		String age = request.getParameter("age");
		String dOB = request.getParameter("dOB");
		String address = request.getParameter("address");
		String phone = request.getParameter("phoneNo");
		String nic = request.getParameter("nIC");
		String email = request.getParameter("email");
		String jobPost = request.getParameter("jobPost");
		
		boolean isTrue;
		
		
		isTrue = EmployeeDBUtil.updateemployee(empId, name, age, dOB, address, phone, nic, email, jobPost);
		
		if(isTrue == true) {
			
			List<Employee> empDetails = EmployeeDBUtil.getEmployeeDetails(empId);
			request.setAttribute("empDetails", empDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("EmployeeDetails.jsp");
			dis.forward(request, response);
		}
		else {
			List<Employee> empDetails = EmployeeDBUtil.getEmployeeDetails(empId);
			request.setAttribute("empDetails", empDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("EmployeeDetails.jsp");
			dis.forward(request, response);
		}
		
	}

}
