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
 * Servlet implementation class UpdateFInServlet
 */
@WebServlet("/UpdateFInServlet")
public class UpdateFInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String itemID = request.getParameter("itemID");
		String itemName = request.getParameter("itemName");
		String category = request.getParameter("category");
		Integer qty = Integer.parseInt(request.getParameter("qty"));
		String expDate = request.getParameter("expDate");
		String supID = request.getParameter("supID");
		String status = request.getParameter("status");
		
		if(qty < 5)
			status = "Very Low";
		else if(5 < qty && qty < 10)
			status = "Low";
		else if(10 < qty && qty < 20)
			status = "Normal";
		else if(20 < qty )
			status = "High";
		
		boolean isTrue;
		isTrue = InventoryUtil.updateItem(itemID, itemName, category, qty, expDate, supID, status);
		
		if(isTrue == true) {
			  List<InventoryModel> inventoryDetails = InventoryUtil.getItemDetails(itemID);
			  request.setAttribute("inventoryDetails", inventoryDetails);
			 
			  RequestDispatcher dis = request.getRequestDispatcher("View_Total_Inventory.jsp");
			  dis.forward(request, response);
		}else {
			
			  List<InventoryModel> inventoryDetails = InventoryUtil.getItemDetails(itemID);
			  request.setAttribute("inventoryDetailss", inventoryDetails);
			 
			
			RequestDispatcher dis = request.getRequestDispatcher("Update_fromI.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
