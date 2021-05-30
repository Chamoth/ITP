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
 * Servlet implementation class DeleteOrderServlet
 */
@WebServlet("/DeleteOrderServlet")
public class DeleteOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			// TODO Auto-generated method stub
			
			String oid =  request.getParameter("oid");
			boolean isTrue;
			
			isTrue = OrderDBUtil.DeleteOrder(oid);
			
			if(isTrue == true) {
				
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("orderInsert.jsp");
				dispatcher.forward(request, response);
			}
			else {
				List<order> ordDetails = OrderDBUtil.getOrderDetails(oid);
				request.setAttribute("ordDetails", ordDetails);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("DisplayPage.jsp");
				dispatcher.forward(request, response);
			}
		}

	}

