package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.Customerimpl;

/**
 * Servlet implementation class AddCustomer
 */
@WebServlet("/AddCustomer")
public class AddCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int cid = Integer.parseInt(request.getParameter("id"));
		String cphoneno = request.getParameter("phoneNo") ;
		String cname = request.getParameter("name");
		String cCity= request.getParameter("city");
		String cemail= request.getParameter("email");
		 
		Customerimpl impl = new Customerimpl();
		impl.addCustomer(cid, cphoneno, cname, cCity, cemail);
		
		RequestDispatcher dis = getServletContext().getRequestDispatcher("/CustomerList.jsp");
		dis.forward(request, response);
		
	}

}
