package Service;

import java.util.ArrayList;

import Model.Customer;

public interface ICustomer {
	
	public void addCustomer(int id, String phoneNo, String name,String city,String email);
	
	public ArrayList<Customer> listcustomer();
	
	public Customer getCustomer(int cid);
	
	public void updateCustomer(int id, String phoneNo, String name,String city,String email);
	
	public void deleteCustomer(int cid);
	
}
