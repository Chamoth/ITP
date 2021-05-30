package com.order;

public class order {
	private int oid;
	private String name;
	private String email;
	private String mobileno;
	private String cusid;
	private String type;
	private String quantity;
	private String ordlid;
	private String odate;
	public order(int oid, String name, String email, String mobileno, String cusid, String type, String quantity,
			String ordlid, String odate) {
		super();
		this.oid = oid;
		this.name = name;
		this.email = email;
		this.mobileno = mobileno;
		this.cusid = cusid;
		this.type = type;
		this.quantity = quantity;
		this.ordlid = ordlid;
		this.odate = odate;
	}
	public int getOid() {
		return oid;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getMobileno() {
		return mobileno;
	}
	public String getCusid() {
		return cusid;
	}
	public String getType() {
		return type;
	}
	public String getQuantity() {
		return quantity;
	}
	public String getOrdlid() {
		return ordlid;
	}
	public String getOdate() {
		return odate;
	}
	
}
