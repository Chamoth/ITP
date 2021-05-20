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
 * Servlet implementation class DeleteFoodServlet
 */
@WebServlet("/DeleteFoodServlet")
public class DeleteFoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String foodcode = request.getParameter("foodcode");
		boolean isTrue;
		
		isTrue = FoodUtil.deletefood(foodcode);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("FoodDetails.jsp");
			dis.forward(request, response);
			
		}
		else {
			List<FoodModel> foodDetails = FoodUtil.getFoodDetails(foodcode);
			  request.setAttribute("foodDetails", foodDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Delete_fromF.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}