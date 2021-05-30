package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DeliveryDBUtil {
	
	private static boolean isSuccess;
	private static Connection con= null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	
	public static boolean vali(String id) {
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql="select from delivery where DeliveryID='"+id+"'";
			rs= stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	
	public static List<Delivery> validate(String id){
		
		ArrayList<Delivery> del= new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="select * from delivery where DeliveryID= '"+id+"'";
			rs = stmt.executeQuery(sql);
			 
			if(rs.next()) {
				
				int deliveryID=rs.getInt(1);
				String date= rs.getString(2);
				String time= rs.getString(3);
				String address=rs.getString(4);
				String riderID= rs.getString(5);
				String vehicleNo= rs.getString(6);
				String deliveryCharge=rs.getString(7);
				
				Delivery d=new Delivery(deliveryID,date,time,address,riderID,vehicleNo,deliveryCharge);
				
				del.add(d);
			}
			
		}
		catch(Exception e) {
		e.printStackTrace();	
		}
		
		return del;
		 
	}

		//insert
 		
	public static boolean insertdelivery(String deliveryID, String date, String time, String address, String riderID, String vehicleNo, String deliveryCharge ) {
	
		boolean isSuccess=false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql="insert into delivery values('"+deliveryID+"','"+date+"','"+time+"','"+address+"','"+riderID+"','"+vehicleNo+"','"+deliveryCharge+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	//update
	
	public static boolean updatedelivery(String deliveryID, String date, String time, String address, String riderID, String vehicleNo, String deliveryCharge) {
		
		try {
			con= DBConnect.getConnection();
			stmt= con.createStatement();
			String sql= "update delivery set Date='"+date+"',Time='"+time+"', Address='"+address+"',RiderID='"+riderID+"',VehicleNo='"+vehicleNo+"',DeliveryCharge='"+deliveryCharge+"'"
					     +"where DeliveryID='"+deliveryID+"'";
			
			int rs= stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	public static List<Delivery> getDeliveryDetails(String deliveryID){
		
		int convertedID= Integer.parseInt(deliveryID);
		
		ArrayList<Delivery> del = new ArrayList<>();
		
		try {
			
			con= DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from delivery where DeliveryID='"+convertedID+"'";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int DeliveryID= rs.getInt(1);
				String Date= rs.getString(2);
				String Time=rs.getString(3);
				String Address=rs.getString(4);
				String RiderID = rs.getString(5);
				String VehicleNo = rs.getString(6);
				String DeliveryCharge=rs.getString(7);
				
				Delivery d= new Delivery(DeliveryID,Date,Time,Address,RiderID,VehicleNo,DeliveryCharge);
				del.add(d);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return del;
	}
	
	//delete
	
	public static boolean deleteDelivery(String deliveryId) {
		
		int convId = Integer.parseInt(deliveryId);
		
		try {
			
			con= DBConnect.getConnection();
			stmt= con.createStatement();
			String sql="delete from delivery where DeliveryID='"+convId+"'"; 
			int r= stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
	
	
}
