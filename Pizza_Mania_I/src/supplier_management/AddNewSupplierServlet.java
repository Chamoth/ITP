package supplier_management;

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
 * Servlet implementation class AddNewSupplierServlet
 */
@WebServlet("/AddNewSupplierServlet")
public class AddNewSupplierServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String compName = request.getParameter("compName");
		String location = request.getParameter("location");
		String contNum = request.getParameter("contNum");
		String email = request.getParameter("email");
		
		boolean result;
		
		result = SupplierUtil.addSupplier(compName,location,contNum,email);
   		
		if(result == true) {
			List<SupplierModel> supplierDetails = SupplierUtil.getSupplier(compName);
			request.setAttribute("supplierDetails", supplierDetails);
   		
			RequestDispatcher dis = request.getRequestDispatcher("View_All_Suppliers.jsp");
			dis.forward(request, response);
			
		} else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('error:can't add Supplier');");
			out.println("location = 'Add_Supplier_Details.jsp'");
			out.println("</script>");
   		
   		
		}
   		
	}
		
	}

