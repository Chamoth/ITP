package supplier_management;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class UpdateFSServlet
 */
@WebServlet("/UpdateFSServlet")
public class UpdateFSServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String supID = request.getParameter("supID");
		String companyName = request.getParameter("companyName");
		String location = request.getParameter("location");
		String contactNum = request.getParameter("contactNum");
		String email = request.getParameter("email");
		
		boolean isTrue;
		isTrue = SupplierUtil.updateSup(supID, companyName, location, contactNum, email);
		
		if(isTrue == true) {
			  List<SupplierModel> supplierDetails = SupplierUtil.getSupDetails(supID);
			  request.setAttribute("supplierDetails", supplierDetails);
			 
			  RequestDispatcher dis = request.getRequestDispatcher("View_All_Suppliers.jsp");
				dis.forward(request, response);
		}else {
			List<SupplierModel> supplierDetails = SupplierUtil.getSupDetails(supID);
			  request.setAttribute("supplierDetails", supplierDetails);
			 
			  RequestDispatcher dis = request.getRequestDispatcher("View_All_Suppliers.jsp");
				dis.forward(request, response);
		}
		
		
	}

}
