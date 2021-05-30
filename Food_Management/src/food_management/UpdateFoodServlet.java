package food_management;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateFoodServlet
 */
@WebServlet("/UpdateFoodServlet")
public class UpdateFoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String foodcode = request.getParameter("foodcode");
		String foodname = request.getParameter("foodname");
		String introduction = request.getParameter("introduction");
		Float unitprice = Float.parseFloat(request.getParameter("unitprice"));
		String category = request.getParameter("category");
		String size = request.getParameter("size");
		
		boolean isTrue;
		isTrue = FoodUtil.updatefood(foodcode, foodname, introduction, unitprice, category, size);
		
		if(isTrue == true) {
			  List<FoodModel> foodDetails = FoodUtil.getFoodDetails(foodcode);
			  request.setAttribute("foodDetails", foodDetails);
			 
			  RequestDispatcher dis = request.getRequestDispatcher("FoodDetails.jsp");
			  dis.forward(request, response);
		}else {
			
			List<FoodModel> foodDetails = FoodUtil.getFoodDetails(foodcode);
			  request.setAttribute("foodDetails", foodDetails);
			 
			
			RequestDispatcher dis = request.getRequestDispatcher("Update_fromF.jsp");
			dis.forward(request, response);
		}
		
		
	}

}

		
		