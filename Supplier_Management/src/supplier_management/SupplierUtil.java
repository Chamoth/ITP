package supplier_management;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class SupplierUtil {
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet result = null;
	
	
	//-----------view all--------------------
	public static List<SupplierModel> getAllSupDetails(){
		
		ArrayList<SupplierModel> supl = new ArrayList<>();
		
		try {
			
			conn = ConnectDB.getConnection(); 
			stmt = conn.createStatement();
			String sql = "select * from supplier";
			result = stmt.executeQuery(sql);
			
			while(result.next()){
				   int supID = result.getInt(1);
				   String companyName = result.getString(2); 
				   String location = result.getString(3); 
				   String contactNum = result.getString(4);
				   String email = result.getString(5);
				   
		  
				   SupplierModel sup = new SupplierModel(supID, companyName, location, contactNum, email); 
					  supl.add(sup); 
					  
			  } 
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return supl;
		
	}
	

	
	
	//--------------------------get sup---------------------
		public static List<SupplierModel> getSupplier(String comName){
			
			
			ArrayList<SupplierModel> supp = new ArrayList<>();
			
			try {
				
				conn = ConnectDB.getConnection(); 
				stmt = conn.createStatement();
				String sql = "select * from supplier where companyName ='"+comName+"'";
				result = stmt.executeQuery(sql);
				
				
				while(result.next()){
					   int supID = result.getInt(1);
					   String compName = result.getString(2); 
					   String location = result.getString(3); 
					   String contNum = result.getString(4); 
					   String email = result.getString(5);
			  
					   SupplierModel sup = new SupplierModel(supID , compName ,location , contNum, email); 
						  supp.add(sup); 
						  
				  } 
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return supp;
			
		}
		
		
	//-------------------------insert-------------------
		public static boolean addSupplier(String compName ,String location , String contNum,String email){
			boolean isSuccess = false;
			
			try {
				conn = ConnectDB.getConnection();
				stmt = conn.createStatement();
				
				String sql = "insert into supplier values (0,'"+compName+"' ,'"+location+"','"+contNum+"','"+email+"')";
				
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
				public static boolean updateSup(String supID,String companyName, String location, String contactNum, String email) {
					
					boolean isSuccess = false;
					try {
						conn = ConnectDB.getConnection();
						stmt = conn.createStatement();
						String sql = "update supplier set companyName='"+companyName+"' , location='"+location+"' , contactNum ='"+contactNum+"' , email='"+email+"'" + "where supID='"+supID+"'";
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
				
				public static boolean deleteSup(String supid) {
					boolean isSuccess = false;
					
					int convId = Integer.parseInt(supid);
				
					try {
						
						conn = ConnectDB.getConnection();
						stmt = conn.createStatement();
						
						String sql = "delete from supplier where supID='"+convId+"'";
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

				
				//------------------------get supplier details----------------------
				public static List<SupplierModel> getSupDetails(String supid){
					
					int convertedID = Integer.parseInt(supid);
							
					ArrayList<SupplierModel> supl = new ArrayList<>();
					
					try {
						
						conn = ConnectDB.getConnection(); 
						stmt = conn.createStatement();
						String sql = "select * from supplier where supID ='"+convertedID+"'";
						result = stmt.executeQuery(sql);
						
						while(result.next()){
							   int supID = result.getInt(1);
							   String companyName = result.getString(2); 
							   String location = result.getString(3); 
							   String contactNum = result.getString(4);
							   String email = result.getString(5);
							   
					  
							   SupplierModel sup = new SupplierModel(supID, companyName, location, contactNum, email); 
								  supl.add(sup); 
								  
						  } 
						
					}catch (Exception e) {
						e.printStackTrace();
					}
					
					return supl;
					
				}
				
				
		}

		
