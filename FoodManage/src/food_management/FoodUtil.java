package food_management;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FoodUtil {

	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet result = null;
	
	//--------------------------getfood--------------------
			public static List<FoodModel> getfood(String fdName){
				
				
				ArrayList<FoodModel> food = new ArrayList<>();
				
				try {
					
					conn = ConnectDB.getConnection(); 
					stmt = conn.createStatement();
					String sql = "select * from food where Food_Name ='"+fdName+"'";
					result = stmt.executeQuery(sql);
					
					
					while(result.next()){
						   int foodcode = result.getInt(1);
						   String foodname = result.getString(2); 
						   String introduction = result.getString(3); 
						   Float unitprice = result.getFloat(4); 
						   String category = result.getString(5); 
						   String size = result.getString(6); 
					 
				  
							  FoodModel fd = new FoodModel(foodcode , foodname ,introduction , unitprice, category , size); 
							  food.add(fd); 
							  
					  } 
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				return food;
				
			}
			
			
		//-------------------------insert-------------------
			public static boolean addfood(String foodname, String introduction, Float unitprice, String category, String size){
				boolean isSuccess = false;
				
				try {
					conn = ConnectDB.getConnection();
					stmt = conn.createStatement();
					
					String sql = "insert into food values (0,'"+foodname+"' ,'"+introduction+"','"+unitprice+"','"+category+"','"+size+"')";
					
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
			public static boolean updatefood(String foodcode, String foodname, String introduction ,Float unitprice , String category ,String size) {
				
				boolean isSuccess = false;
				try {
					conn = ConnectDB.getConnection();
					stmt = conn.createStatement();
					String sql = "update food set Food_Name='"+foodname+"' , Introduction='"+introduction+"' , Unit_Price='"+unitprice+"' , Category ='"+category+"' , Size ='"+size+"'"+ "where Food_Code ='"+foodcode+"'";
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
			
			public static boolean deletefood(String foodcode) {
				boolean isSuccess = false;
				
				int convId = Integer.parseInt(foodcode);
			
				try {
					
					conn = ConnectDB.getConnection();
					stmt = conn.createStatement();
					
					String sql = "delete from food where Food_Code='"+convId+"'";
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

			
			//get food details
			public static List<FoodModel> getFoodDetails(String fd){
				
				int convertedID = Integer.parseInt(fd);
						
				ArrayList<FoodModel> food = new ArrayList<>();
				
				try {
					
					conn = ConnectDB.getConnection(); 
					stmt = conn.createStatement();
					String sql = "select * from food where Food_Code ='"+convertedID+"'";
					result = stmt.executeQuery(sql);
					
					
					while(result.next()){
						int foodcode = result.getInt(1);
						   String foodname = result.getString(2); 
						   String introduction = result.getString(3); 
						   Float unitprice = result.getFloat(4); 
						   String category = result.getString(5); 
						   String size = result.getString(6); 
					 
				  
							  FoodModel fdc = new FoodModel(foodcode , foodname ,introduction , unitprice, category , size); 
							  food.add(fdc); 
							  
					  } 
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				return food;
				
			}
			
			
}
