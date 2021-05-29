package inventory_management;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ValidateLoginServlet
 */
@WebServlet("/ValidateLoginServlet")
public class ValidateLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("username");
		String upass =request.getParameter("password");

		boolean isTrue;  
		isTrue = UserUtil.validate(username, upass);
		
		if(isTrue == true ) {
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request, response);
		}else {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('incorrect username or password');");
			out.println("location = 'Login.jsp'");
			out.println("</script>");
		}
		
	}

}
