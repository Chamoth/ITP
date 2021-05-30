package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Finance;

public class FinanceDAO {

	//jdbc:mysql://localhost:3306/?user=root
	 private String jdbcURL = "jdbc:mysql://localhost:3306/finance";
	 private String jdbcUsername = "root";
	 private String jdbcpassword = "eksith1234.";

	//This will add data to the finance table using insert command in SQL
	 private static final String INSERT_FINANCE_SQL = "INSERT INTO finance " + " (empId, totSalary,"
		 		+ " totSup, totCost, totIncome, profit) VALUES "
				 					+ " (? ,? ,? ,? ,? ,? ,);";
		 
		 //select all details using Finance ID
		 private static final String SELECT_FINANCE_BY_ID = "select id, empId, totSalary, totSup,"
		 		+ " totCost, totIncome, profit from finance where id = ? ";
		  
		 private static final String SELECT_ALL_FINANCE = "select * from finance;";
		 
		 private static final String DELETE_FINANCE_SQL = "delete from finance where id = ?;";
		 
		 private static final String UPDATE_FINANCE_SQL = "update finance set empId = ?,"
		 		+ "totSalary = ?, totSup = ?, totCost = ?, totIncome = ?, profit = ?;";
		 public FinanceDAO () {}
		 
		 protected Connection getConnection() {
				Connection connection = null;
				try {
					Class.forName("com.mysql.jdbc.Driver");
					connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcpassword);
					
				}catch (SQLException e) {
					 e.printStackTrace();
				}catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				return connection;		
				
			 }
		 
		 
		 
		/* protected Connection getConnection() {
				Connection connection = null;
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection(jdbcURL,jdbcUsername,jdbcpassword);
					Statement stmt =con.createStatement();
					String sql = "select * from finance";
					ResultSet rs = stmt.executeQuery(sql); 
					//connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcpassword);
					
					if(rs.next()) {
						int id = rs.getString(1);
						
						
					}
					
				}catch (SQLException e) {
					 e.printStackTrace();
				}catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				return connection;		
				
			 }*/
		 
		 
		 
		 
		//Create or insert Finance Details
		 public void insertFinance(Finance finance) throws SQLException  {
			 try(Connection connection = getConnection();
					 PreparedStatement preparedStatement = connection.prepareStatement(INSERT_FINANCE_SQL)) {
				 preparedStatement.setString(1, finance.getEmpId());
				 preparedStatement.setString(2, finance.getTotSalary());
				 preparedStatement.setString(3, finance.getTotSup());
				 preparedStatement.setString(4, finance.getTotCost());
				 preparedStatement.setString(5, finance.getTotIncome());
				 preparedStatement.setString(6, finance.getProfit());
				 preparedStatement.executeUpdate();
				 }
				 
				 catch (Exception e) {
					 e.printStackTrace();
					
				}			 
		 } 
		 //Update Finance Details
		 
		 public boolean updateFinance(Finance finance) throws SQLException  {
			 boolean rowUpdated;
			 try(Connection connection = getConnection();
					 PreparedStatement statement = connection.prepareStatement(UPDATE_FINANCE_SQL)) {
				 statement.setString(1, finance.getEmpId());
				 statement.setString(2, finance.getTotSalary());
				 statement.setString(3, finance.getTotSup());
				 statement.setString(4, finance.getTotCost());
				 statement.setString(5, finance.getTotIncome());
				 statement.setString(6, finance.getProfit());
				
				 {
					 rowUpdated = statement.executeUpdate() > 0;
				 }
				 
				return rowUpdated;
				}			 
		 } 
		 
		 //Select Finance by ID
		public Finance selectFinance(int id) {
			Finance finance = null;
			//Step1-Establishing a Connection
			try(Connection connection = getConnection();
					//Create statement using connection object
					PreparedStatement preparedStatement= connection.prepareStatement(SELECT_FINANCE_BY_ID);) {
				preparedStatement.setInt(1, id);
				System.out.println(preparedStatement);
				//execute the query or update
				ResultSet rs = preparedStatement.executeQuery();
				
				// set the result set objects
				while(rs.next()) {
					
					String empId = rs.getString("empId");
					String totSalary = rs.getString("totSalary");
					String totSup = rs.getString("totSup");
					String totCost = rs.getString("totCost");
					String totIncome = rs.getString("totIncome");
					String profit = rs.getString("profit");
					finance = new Finance(id, empId, totSalary, totSup, totCost, totIncome, profit);
				} 
			}
				catch (SQLException e) {
					e.printStackTrace();
					
				}
				
				return finance;
				
			}
			
		

		 //Select all Finance
		
		public List<Finance> selectAllFinance() {
			List<Finance> finances = new ArrayList<>();
			//Step1-Establishing a Connection
			try(Connection connection = getConnection();
					//Create statement using connection object
					PreparedStatement preparedStatement= connection.prepareStatement(SELECT_ALL_FINANCE);) {
				
				System.out.println(preparedStatement);
				//execute the query or update
				ResultSet rs = preparedStatement.executeQuery();
				
				// set the result set objects
				while(rs.next()) {
					
					int id = rs.getInt("id");
					String empId = rs.getString("empId");
					String totSalary = rs.getString("totSalary");
					String totSup = rs.getString("totSup");
					String totCost = rs.getString("totCost");
					String totIncome = rs.getString("totIncome");
					String profit = rs.getString("profit");
					finances.add(new Finance(id, empId, totSalary, totSup, totCost, totIncome, profit));
				} 
			}
				catch (SQLException e) {
					e.printStackTrace();					
				}				
				return finances;			
			}
		
		 //Delete Finance
		public boolean deleteFinance(int id) throws SQLException {
			boolean rowDelete;
			try (Connection connection = getConnection();
					PreparedStatement statement= connection.prepareStatement(DELETE_FINANCE_SQL);) {
				statement.setInt(1, id);
				rowDelete = statement.executeUpdate() > 0;
			}
			return rowDelete;
		}
}
