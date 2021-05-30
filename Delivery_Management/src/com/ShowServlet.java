 package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ShowServlet")
public class ShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String id=request.getParameter("did");
		
		boolean isTrue;
		isTrue=DeliveryDBUtil.vali(id);
		
		if(isTrue == true) {
			List<Delivery> DelDetails = DeliveryDBUtil.getDeliveryDetails(id);
			request.setAttribute("DelDetails", DelDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("deldetails.jsp"); 
			dis.forward(request, response);
		} else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('There is no delivery match for the id');");
			out.println("location='show.jsp'");
			out.println("</script>");
		}
		
		
		try {
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
