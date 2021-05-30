package com;

public class Delivery {

	private int deliveryID;
	private String date;
	private String time;
	private String address;
	private  String riderID;
	private String vehicleNo;
	private String deliveryCharge;
	
	public Delivery(int deliveryID, String date, String time, String address, String riderID, String vehicleNo,
			String deliveryCharge) {
		super();
		this.deliveryID = deliveryID;
		this.date = date;
		this.time = time;
		this.address = address;
		this.riderID = riderID;
		this.vehicleNo = vehicleNo;
		this.deliveryCharge = deliveryCharge;
	}

	public int getDeliveryID() {
		return deliveryID;
	}

	public String getDate() {
		return date;
	}

	public String getTime() {
		return time;
	}

	public String getAddress() {
		return address;
	}

	public String getRiderID() {
		return riderID;
	}

	public String getVehicleNo() {
		return vehicleNo;
	}

	public String getDeliveryCharge() {
		return deliveryCharge;
	}

	
	
	
	
}
