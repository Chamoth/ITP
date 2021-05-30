package model;

public class Finance {

	private int id;
	private String empId;
	private String totSalary;
	private String totSup;
	private String totCost;
	private String totIncome;
	private String profit;
	
	
	
	
	public Finance(int id, String empId, String totSalary, String totSup, String totCost, String totIncome,
			String profit) {
		super();
		this.id = id;
		this.empId = empId;
		this.totSalary = totSalary;
		this.totSup = totSup;
		this.totCost = totCost;
		this.totIncome = totIncome;
		this.profit = profit;
	}
	
	
	public Finance(String empId, String totSalary, String totSup, String totCost, String totIncome, String profit) {
		super();
		this.empId = empId;
		this.totSalary = totSalary;
		this.totSup = totSup;
		this.totCost = totCost;
		this.totIncome = totIncome;
		this.profit = profit;
	}


	public int getId() {
		return id;
	}
	public String getEmpId() {
		return empId;
	}
	public String getTotSalary() {
		return totSalary;
	}
	public String getTotSup() {
		return totSup;
	}
	public String getTotCost() {
		return totCost;
	}
	public String getTotIncome() {
		return totIncome;
	}
	public String getProfit() {
		return profit;
	}
/*	public void setId(int id) {
		this.id = id;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public void setTotSalary(String totSalary) {
		this.totSalary = totSalary;
	}
	public void setTotSup(String totSup) {
		this.totSup = totSup;
	}
	public void setTotCost(String totCost) {
		this.totCost = totCost;
	}
	public void setTotIncome(String totIncome) {
		this.totIncome = totIncome;
	}
	public void setProfit(String profit) {
		this.profit = profit;
	}
*/

}
