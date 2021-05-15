package com.employee;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EmployeeInsert")
public class EmployeeInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String empId = request.getParameter("empId");
		String name = request.getParameter("fname");
		String age = request.getParameter("age");
		String dOB = request.getParameter("dOB");
		String address = request.getParameter("address");
		String phone = request.getParameter("phoneNo");
		String nic = request.getParameter("nIC");
		String email = request.getParameter("email");
		String jobPost = request.getParameter("jobPost");
		
		boolean isTrue;
		
		
		isTrue = EmployeeDBUtil.insertemployee(empId, name, age, dOB, address, phone, nic, email, jobPost);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
