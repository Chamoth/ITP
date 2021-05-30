package inventory_management;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteFInServlet
 */
@WebServlet("/DeleteFInServlet")
public class DeleteFInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String itemID = request.getParameter("itemID");
		boolean isTrue;
		
		isTrue = InventoryUtil.deleteItem(itemID);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("View_Total_Inventory.jsp");
			dis.forward(request, response);
			
		}
		else {
			List<InventoryModel> inventoryDetails = InventoryUtil.getItemDetails(itemID);
			request.setAttribute("inventoryDetails", inventoryDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Delete_fromI.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
