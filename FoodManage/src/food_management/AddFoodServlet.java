package food_management;

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
 * Servlet implementation class AddFoodServlet
 */
@WebServlet("/AddFoodServlet")
public class AddFoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String foodname = request.getParameter("foodname");
		String introduction = request.getParameter("introduction");
		Float unitprice = Float.parseFloat(request.getParameter("unitprice"));
		String category = request.getParameter("category");
		String size = request.getParameter("size");
				
		
		boolean result;
		
		result = FoodUtil.addfood(foodname,introduction,unitprice,category,size);
   		
		if(result == true) {
			List<FoodModel> foodDetails = FoodUtil.getfood(foodname);
			request.setAttribute("foodDetails", foodDetails);
   		
			RequestDispatcher dis = request.getRequestDispatcher("FoodDetails.jsp");
			dis.forward(request, response);
			
		} else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('error:can't add item');");
			out.println("location = 'AddFood.jsp'");
			out.println("</script>");
   		
   		
		}
   		
	}
}

