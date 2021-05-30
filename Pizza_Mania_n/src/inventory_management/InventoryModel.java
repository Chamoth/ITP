package inventory_management;

public class InventoryModel {
	
	private int itemID;
	private String itemName;
	private String category;
	private int qty;
	private String expDate;
	private String supID;
	private String status;
	
	
	
	public InventoryModel() {
	}



	public InventoryModel(int itemID, String itemName, String category, int qty, String expDate, String supID,
			String status) {
		super();
		this.itemID = itemID;
		this.itemName = itemName;
		this.category = category;
		this.qty = qty;
		this.expDate = expDate;
		this.supID = supID;
		this.status = status;
	}



	public int getItemID() {
		return itemID;
	}



	public void setItemID(int itemID) {
		this.itemID = itemID;
	}



	public String getItemName() {
		return itemName;
	}



	public void setItemName(String itemName) {
		this.itemName = itemName;
	}



	public String getCategory() {
		return category;
	}



	public void setCategory(String category) {
		this.category = category;
	}



	public int getQty() {
		return qty;
	}



	public void setQty(int qty) {
		this.qty = qty;
	}



	public String getexpDate() {
		return expDate;
	}



	public void setexpDate(String expDate) {
		this.expDate = expDate;
	}



	public String getSupID() {
		return supID;
	}



	public void setSupID(String supID) {
		this.supID = supID;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	@Override
	public String toString() {
		return "inventoryModel [itemID=" + itemID + ", itemName=" + itemName + ", category=" + category + ", qty=" + qty
				+ ", expDate=" + expDate + ", supID=" + supID + ", status=" + status + "]";
	}
	
	
	
	

}
