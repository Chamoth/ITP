package com;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateDelServlet")
public class UpdateDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String deliveryID=request.getParameter("id");
		String date= request.getParameter("date");
		String time= request.getParameter("time");
		String address= request.getParameter("addr");
		String riderID= request.getParameter("rID");
		String vehicleNo= request.getParameter("vehicle");
		String deliveryCharge= request.getParameter("dCharge");
		
		boolean isTrue;
		isTrue = DeliveryDBUtil.updatedelivery(deliveryID, date, time, address, riderID, vehicleNo, deliveryCharge);
		
		if(isTrue==true) {
			
			List<Delivery> DelDetails= DeliveryDBUtil.getDeliveryDetails(deliveryID);
			request.setAttribute("DelDetails",DelDetails);
			
			RequestDispatcher dis= request.getRequestDispatcher("deldetails.jsp");
			dis.forward(request, response);
		}else {
			List<Delivery> DelDetails= DeliveryDBUtil.getDeliveryDetails(deliveryID);
			request.setAttribute("DelDetails",DelDetails);
			
			RequestDispatcher dis= request.getRequestDispatcher("deldetails.jsp");
			dis.forward(request, response);
		}
	}

}
