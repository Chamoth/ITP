package inventory_management;

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
 * Servlet implementation class addNewItem
 */
@WebServlet("/AddNewItemServlet")
public class AddNewItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		
   		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String itemName = request.getParameter("itemName");
		String category = request.getParameter("category");
		Integer qty = Integer.parseInt(request.getParameter("qty"));
		String expDate = request.getParameter("expDate");
		String supID = request.getParameter("supID");
		
		String status = null;
		
		if(qty < 5)
			status = "Very Low";
		else if(5 < qty && qty < 10)
			status = "Low";
		else if(10 < qty && qty < 20)
			status = "Normal";
		else if(20 < qty )
			status = "High";
		
		
		
		
		boolean result;
		
		result = InventoryUtil.addItem(itemName,category,qty,expDate,supID,status);
   		
		if(result == true) {
			List<InventoryModel> inventoryDetails = InventoryUtil.getItem(itemName);
			request.setAttribute("inventoryDetails", inventoryDetails);
   		
			RequestDispatcher dis = request.getRequestDispatcher("View_Total_Inventory.jsp");
			dis.forward(request, response);
			
		} else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('error:can't add item');");
			out.println("location = 'Add_New_Item.jsp'");
			out.println("</script>");
   		
   		
		}
   		
	}
}
