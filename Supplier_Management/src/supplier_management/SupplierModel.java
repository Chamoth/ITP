package supplier_management;

public class SupplierModel {

	private int supID;
	private String compName;
	private String location;
	private String contNum;
	private String email;
	
	public SupplierModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SupplierModel(int supID, String compName, String location, String contNum, String email) {
		super();
		this.supID = supID;
		this.compName = compName;
		this.location = location;
		this.contNum = contNum;
		this.email = email;
	}

	public int getSupID() {
		return supID;
	}

	public void setSupID(int supID) {
		this.supID = supID;
	}

	public String getCompName() {
		return compName;
	}

	public void setCompName(String compName) {
		this.compName = compName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getContNum() {
		return contNum;
	}

	public void setContNum(String contNum) {
		this.contNum = contNum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "SupplierModel [supID=" + supID + ", compName=" + compName + ", location=" + location + ", contNum="
				+ contNum + ", email=" + email + "]";
	}
	
	
	
}
