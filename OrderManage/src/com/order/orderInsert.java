package com.order;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class orderInsert
 */
@WebServlet("/orderInsert")
public class orderInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String oidi = request.getParameter("oid");
		String namei = request.getParameter("name");
		String emaili = request.getParameter("email");
		String mobilenoi = request.getParameter("mobileno");
		String cusidi = request.getParameter("cusid");
		String typei = request.getParameter("type");
		String quantityi = request.getParameter("quantity");
		String ordlidi = request.getParameter("ordlid");
		String odatei = request.getParameter("odate");
		
		boolean isTrue;
		
		isTrue = OrderDBUtil.orderInsert(oidi, namei, emaili, mobilenoi, cusidi, typei, quantityi, ordlidi, odatei);
		
		if(isTrue == true) {
			
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}else {
			
		
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
