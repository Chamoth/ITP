package web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FinanceDAO;
import model.Finance;


@WebServlet("/")
public class FinanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FinanceDAO financeDao;
   
    public FinanceServlet() {
    	this.financeDao = new FinanceDAO();
       
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();
		
		switch (action) {
		case "/new":
			showNewForm(request, response);
			break;
			
		case "/insert":
			try {
				insertFinance(request, response);
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			break;
			
		case "/delete":
			try {
				deleteFinance(request, response);
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			break;
			               
		case "/edit":
			try {
				showEditForm(request, response);
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			break;
			
		case "/update":
			try {
				updateFinance(request, response);
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			break;

		default:
			try {
				listFinance(request, response);
			} catch (SQLException e) {
			
				e.printStackTrace();
			}
			break;
		}
		
	}
	
	
	private void listFinance(HttpServletRequest request, HttpServletResponse response)
				throws SQLException, IOException, ServletException 
	{
		List<Finance> listFinance = financeDao.selectAllFinance();
		request.setAttribute("listFinance",listFinance);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("finance-list.jsp");
		dispatcher.forward(request, response);
		}
	
	private void updateFinance(HttpServletRequest request, HttpServletResponse response)
	throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String empId = (request.getParameter("empId")); //In here you can not operate String So this is the code for that
		String totSalary = (request.getParameter("totSalary"));//This is how you can change this to float to string
		String totSup = (request.getParameter("totSup"));
		String totCost = (request.getParameter("totCost"));
		String totIncome =(request.getParameter("totIncome"));
		String profit = (request.getParameter("profit"));
		
		Finance finance = new Finance(id, empId, totSalary, totSup, totCost, totIncome, profit);
		financeDao.updateFinance(finance);
		response.sendRedirect("list");
		
	}
	
	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("finance-form.jsp");
		dispatcher.forward(request, response);
	}
	
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
				throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Finance existingFinance = financeDao.selectFinance(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("finance-form.jsp");
		request.setAttribute("finance", existingFinance);
		dispatcher.forward(request, response);
	}

	private void insertFinance(HttpServletRequest request, HttpServletResponse response)
	throws SQLException, IOException {
		String empId = (request.getParameter("empId")); //In here you can not operate String So this is the code for that
		String totSalary = (request.getParameter("totSalary"));//This is how you can change this to float to string
		String totSup = (request.getParameter("totSup"));
		String totCost =(request.getParameter("totCost"));
		String totIncome =(request.getParameter("totIncome"));
		String profit = (request.getParameter("profit"));
		
		Finance newFinance = new Finance(empId, totSalary, totSup, totCost, totIncome, profit);
		
		financeDao.insertFinance(newFinance);
		response.sendRedirect("list");
		
				
	}
	
	private void deleteFinance(HttpServletRequest request, HttpServletResponse response)
	throws SQLException, IOException {
		int id =Integer.parseInt(request.getParameter("id"));
		financeDao.deleteFinance(id);
		response.sendRedirect("list");
	
	

	
	}

	
}
