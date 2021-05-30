package com.order;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class OrderDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	
	public static boolean validate(String cusid,String ordlid) {
		try {
			con = DBClass.getConnection();
			stmt = con.createStatement();
			String sql = "select * from pizza.order where cusid = '"+cusid+"' and ordlid='"+ordlid+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
		
	
	
	public static List<order> getOrder(String cusid){
		ArrayList<order> order = new ArrayList<>();
		
		try {
			con = DBClass.getConnection();
			stmt = con.createStatement();
			String sql = "select * from pizza.order where cusid = '"+cusid+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int oid = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String mobileno = rs.getString(4);
				String cusiD = rs.getString(5);
				String type = rs.getString(6);
				String quantity = rs.getString(7);
				String ordlid = rs.getString(8);
				String odate = rs.getString(9);
				
				order ord  = new order(oid,name,email,mobileno,cusid,type,quantity,ordlid,odate);
				order.add(ord);
			}
		}catch(Exception e) {
			
		}
			return order;
	}
	
	
	public static boolean orderInsert(String oidi,String namei,String emaili ,String mobilenoi, String cusidi, String typei, String quantityi, String ordlidi,String odatei) {
		
		
		boolean isSuccess = false;
		try {
			con = DBClass.getConnection();
			stmt = con.createStatement(); 
			String sql = "insert into pizza.order values (0,'"+namei+"','"+emaili+"','"+mobilenoi+"','"+cusidi+"','"+typei+"','"+quantityi+"','"+ordlidi+"','"+odatei+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static boolean UpdateOrder(String oido,String nameo,String emailo,String mobilenoo, String cusido, String typeo, String quantityo, String ordlido,String odateo) {
		
		boolean isSuccess = false;
		try {
			
			con = DBClass.getConnection();
			stmt = con.createStatement();
			String sql = "update pizza.order set name='"+nameo+"',email='"+emailo+"',mobileno ='"+mobilenoo+"',cusid='"+cusido+"',type='"+typeo+"',quantity='"+quantityo+"',ordlid='"+ordlido+"',odate='"+odateo+"'"
					+ "where oid = '"+oido+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	public static List<order> getOrderDetails(String oid){
		int convertedID = Integer.parseInt(oid);
		ArrayList<order> ord = new ArrayList<>();
		
		try {
			con = DBClass.getConnection();
			stmt = con.createStatement();
			String sql = "select * from pizza.order where oid ='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int oidi = rs.getInt(1);
				String namei = rs.getString(2); 
				String emaili = rs.getString(3);
				String mobilenoi = rs.getString(4);
				String cusidi = rs.getString(5);
				String typei = rs.getString(6);
				String quantityi = rs.getString(7);
				String ordlidi= rs.getString(8);
				String odatei= rs.getString(9);
				
				order o  = new order(oidi,namei,emaili,mobilenoi,cusidi,typei,quantityi,ordlidi,odatei);
				ord.add(o);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return ord;
	}
	
	public static boolean DeleteOrder(String oid) {
		
		int convId = Integer.parseInt(oid);
	
	try {
			con = DBClass.getConnection();
			stmt = con.createStatement();
			String sql = "delete from pizza.order where oid = '"+convId+"'";
			int r = stmt.executeUpdate(sql);
			
		if(r > 0) {		
			isSuccess = true;
		}
		else {
			isSuccess = false;
	    }
	 }
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
}
