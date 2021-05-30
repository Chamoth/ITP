package Service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Model.Customer;
import Util.DBconnection;

public class Customerimpl implements ICustomer {
	
	private static Connection connection;
	private static CallableStatement ct;
	private static PreparedStatement pt;
	@Override
	
	public void addCustomer(int id, String phoneNo, String name, String city, String email) {
		// TODO Auto-generated method stub
		
		try {
			connection = DBconnection.initialdb();
			pt= connection.prepareStatement("insert into customer values(?,?,?,?,?)");
			pt.setInt(1, id);
			pt.setString(2, phoneNo);
			pt.setString(3, name);
			pt.setString(4, city);
			pt.setString(5, email);
			pt.execute();
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pt.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}
	public static CallableStatement getCt() {
		return ct;
	}
	public static void setCt(CallableStatement ct) {
		Customerimpl.ct = ct;
	}
	@Override
	public ArrayList<Customer> listcustomer() {
		// TODO Auto-generated method stub
		
		
		ArrayList<Customer> customers = new ArrayList<Customer>();
		
		try {
			connection = DBconnection.initialdb();
			pt= connection.prepareStatement("select * from customer");
			ResultSet rs=  pt.executeQuery();
			while(rs.next()) {
				Customer st = new Customer();
				st.setId(rs.getInt(1));
				st.setPhoneNo(rs.getString(2));
				st.setName(rs.getString(3));
				st.setCity(rs.getString(4));
				st.setEmail(rs.getString(5));
				
				customers.add(st);
			
			}
			
	
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pt.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		
		return customers;
	}
	@Override
	public Customer getCustomer(int cid) {
		// TODO Auto-generated method stub
		
		Customer st = new Customer();
		
		
		try {
			connection = DBconnection.initialdb();
			pt= connection.prepareStatement("select * from customer where id=?");
			pt.setInt(1, cid);
			ResultSet rs=  pt.executeQuery();
			while(rs.next()) {
			
				st.setId(rs.getInt(1));
				st.setPhoneNo(rs.getString(2));
				st.setName(rs.getString(3));
				st.setCity(rs.getString(4));
				st.setEmail(rs.getString(5));
			}
			
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pt.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		
		
		
		
		
		return st;
	}
	@Override
	public void updateCustomer(int id, String phoneNo, String name, String city, String email) {
	// TODO Auto-generated method stub
		try {
			connection = DBconnection.initialdb();
			pt= connection.prepareStatement("update customer set phoneNo=?,name=?,city=?,email=? where id=?");
			
			pt.setString(1, phoneNo);
			pt.setString(2, name);
			pt.setString(3, city);
			pt.setString(4, email);
			pt.setInt(5, id);
			pt.execute();
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pt.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		
		
		
	}
	@Override
	public void deleteCustomer(int cid) {
		// TODO Auto-generated method stub
		
		try {
			connection = DBconnection.initialdb();
			pt= connection.prepareStatement("delete from customer where id=?");
			pt.setInt(1, cid);
			pt.execute();
			
			
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pt.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		
		
		
	}
	
	
	
	
	
	
	

}
