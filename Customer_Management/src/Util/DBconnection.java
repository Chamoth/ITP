package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
private static Connection connection;
	
	public static Connection initialdb() throws ClassNotFoundException, SQLException {
		
		
		String url = "jdbc:mysql://localhost:3306/pizzamania";
		String user="root";
		String pass = "1234qwas!@";
		
		
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection(url,user,pass);
		
		return connection;
}
}