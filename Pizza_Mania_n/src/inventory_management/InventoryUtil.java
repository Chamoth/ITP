package inventory_management;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class InventoryUtil {

	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet result = null;
	
	//--------------------------View total inventory---------------------
	
	
	
	//--------------------------get item---------------------
		public static List<InventoryModel> getItem(String itmName){
			
			
			ArrayList<InventoryModel> item = new ArrayList<>();
			
			try {
				
				conn = ConnectDB.getConnection(); 
				stmt = conn.createStatement();
				String sql = "select * from inventory where itemName ='"+itmName+"'";
				result = stmt.executeQuery(sql);
				
				
				while(result.next()){
					   int itemID = result.getInt(1);
					   String itemName = result.getString(2); 
					   String category = result.getString(3); 
					   int qty = result.getInt(4); 
					   String expDate = result.getString(5); 
					   String supplierID = result.getString(6); 
					   String status = result.getString(7); 
			  
						  InventoryModel inv = new InventoryModel(itemID , itemName ,category , qty, expDate , supplierID , status); 
						  item.add(inv); 
						  
				  } 
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return item;
			
		}
		
		
	//-------------------------insert-------------------
		public static boolean addItem(String itemName, String category, int qty, String expDate, String supID, String status){
			boolean isSuccess = false;
			
			try {
				conn = ConnectDB.getConnection();
				stmt = conn.createStatement();
				
				String sql = "insert into inventory values (0,'"+itemName+"' ,'"+category+"','"+qty+"','"+expDate+"','"+supID+"','"+status+"')";
				
				int result = stmt.executeUpdate(sql);
				
				if (result > 0) {
	    			isSuccess = true;
				}else {
					isSuccess = false;
				}
	    		
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		
		
		//-------------update---------------------------------------
		public static boolean updateItem(String itemID, String itemName, String category ,int qty , String expDate ,String supID , String status) {
			
			boolean isSuccess = false;
			try {
				conn = ConnectDB.getConnection();
				stmt = conn.createStatement();
				String sql = "update inventory set itemName='"+itemName+"' , category='"+category+"' , availableQnty='"+qty+"' , expDate='"+expDate+"' , supplierID='"+supID+"' , status= '"+status+"'" + "where itemID='"+itemID+"'";
				int result = stmt.executeUpdate(sql);
				
				if(result > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		
		
		//-------------delete----------------------------------------
		
		public static boolean deleteItem(String itemid) {
			boolean isSuccess = false;
			
			int convId = Integer.parseInt(itemid);
		
			try {
				
				conn = ConnectDB.getConnection();
				stmt = conn.createStatement();
				
				String sql = "delete from inventory where itemID='"+convId+"'";
				int result = stmt.executeUpdate(sql);
				
				if(result > 0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}catch (Exception e) {
				e.printStackTrace();
			}
		
			return isSuccess;
		}

		
		//------------------------get user details----------------------
		public static List<InventoryModel> getItemDetails(String itemid){
			
			int convertedID = Integer.parseInt(itemid);
					
			ArrayList<InventoryModel> item = new ArrayList<>();
			
			try {
				
				conn = ConnectDB.getConnection(); 
				stmt = conn.createStatement();
				String sql = "select * from inventory where itemID ='"+convertedID+"'";
				result = stmt.executeQuery(sql);
				
				
				while(result.next()){
					int itemID = result.getInt(1);
					   String itemName = result.getString(2); 
					   String category = result.getString(3); 
					   int qty = result.getInt(4); 
					   String expDate = result.getString(5); 
					   String supplierID = result.getString(6); 
					   String status = result.getString(7); 
			  
					   InventoryModel itm = new InventoryModel(itemID , itemName ,category , qty, expDate , supplierID , status); 
						  item.add(itm); 
						  
				  } 
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return item;
			
		}
		
		
}
