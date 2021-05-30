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
 * Servlet implementation class UpdateOrderServlet
 */
@WebServlet("/UpdateOrderServlet")
public class UpdateOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String oido = request.getParameter("oid");
		String nameo = request.getParameter("name");
		String emailo =  request.getParameter("email");
		String mobilenoo = request.getParameter("mobileno");
		String cusido = request.getParameter("custid");
		String typeo = request.getParameter("type");
		String quantityo = request.getParameter("quantity");
		String ordlido = request.getParameter("ordlid");
		String odateo = request.getParameter("odate");
		
		boolean isTrue;
		isTrue = OrderDBUtil.UpdateOrder(oido, nameo, emailo, mobilenoo, cusido, typeo, quantityo, ordlido, odateo);
		
		if(isTrue == true) {
			
			List<order> ordDetails = OrderDBUtil.getOrderDetails(oido);
			request.setAttribute("ordDetails", ordDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("DisplayPage.jsp");
			dis.forward(request, response);
		}
		else {
			List<order> ordDetails = OrderDBUtil.getOrderDetails(oido);
			request.setAttribute("ordDetails", ordDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("DisplayPage.jsp");
			dis2.forward(request, response);
		}
	}

}