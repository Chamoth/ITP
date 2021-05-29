package com;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteDelServlet")
public class DeleteDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String deliveryId= request.getParameter("id");
		boolean isTrue;
		
		isTrue=DeliveryDBUtil.deleteDelivery(deliveryId);
		
		if(isTrue==true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("delMain.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Delivery> DelDetails= DeliveryDBUtil.getDeliveryDetails(deliveryId);
			request.setAttribute("DelDetails",DelDetails);
			RequestDispatcher dispatcher=request.getRequestDispatcher("deldetails.jsp");
			dispatcher.forward(request, response);
		}
	}

}
