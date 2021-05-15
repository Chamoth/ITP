package com.employee;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class EmployeeDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean validate(String id) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from employee where EmpID='"+id+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Employee> getEmployee(String id) {
		
		ArrayList<Employee> employee = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from employee where EmpID='"+id+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				String empId = rs.getString(1);
				String fname = rs.getString(2);
				String age = rs.getString(3);
				String dOB = rs.getString(4);
				String address = rs.getString(5);
				String phoneNo = rs.getString(6);
				String nIC = rs.getString(7);
				String email = rs.getString(8);
				String jobPost = rs.getString(9);
				
				Employee emp = new Employee(empId, fname, age, dOB, address, phoneNo, nIC, email, jobPost);
				employee.add(emp);
			}
			
		} catch (Exception e) {
			
		}
		
		return employee;	
	}
	
	
	
	public static boolean insertemployee(String empId, String fname, String age, String dOB, String address, String phoneNo, String nIC, String email, String jobPost) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into employee values ('"+empId+"','"+fname+"','"+age+"','"+dOB+"', '"+address+"','"+phoneNo+"','"+nIC+"','"+email+"','"+jobPost+"' )";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
	
	
	
public static boolean updateemployee(String empId, String fname, String age, String dOB, String address, String phoneNo, String nIC, String email, String jobPost) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update employee set Name='"+fname+"',Age='"+age+"',DOB='"+dOB+"',Address='"+address+"',Phone='"+phoneNo+"',NIC='"+nIC+"',Email='"+email+"',JobPost='"+jobPost+"'"
    				+ "where EmpID='"+empId+"'";
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
 
    public static List<Employee> getEmployeeDetails(String empId) {
    	
    	String convertedID = (empId);
    	
    	ArrayList<Employee> emp = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from employee where Empid='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			String EmpID = rs.getString(1);
				String Name = rs.getString(2);
				String Age = rs.getString(3);
				String DOB = rs.getString(4);
				String Address = rs.getString(5);
				String Phone = rs.getString(6);
				String NIC = rs.getString(7);
				String Email = rs.getString(8);
				String JobPost = rs.getString(9);
    			
    			Employee e = new Employee(EmpID, Name, Age, DOB, Address, Phone, NIC, Email, JobPost);
    			emp.add(e);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return emp;	
    }
    
    
    public static boolean deleteEmployee(String empId) {
    	
    	String convId = (empId);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from employee where EmpID='"+convId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
			
}
