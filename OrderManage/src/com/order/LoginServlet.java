package com.order;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String cusid = request.getParameter("cusid");
		String ordlid = request.getParameter("ordlid");
		
		boolean isTrue;
		isTrue = OrderDBUtil.validate(cusid, ordlid);
		
	
		if(isTrue == true) {
			List <order> ordDetails = OrderDBUtil.getOrder(cusid);
			request.setAttribute("ordDetails", ordDetails);
		
			RequestDispatcher dis = request.getRequestDispatcher("DisplayPage.jsp");
			dis.forward(request, response);
		}else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('There is no any Order match for the Order ID you entered');");
			out.println("location = 'Login.jsp'");
			out.println("</script>");
		}
		
		try {
		
		}
		catch(Exception e) {
			e.printStackTrace(); 
		}
		
	}

}

