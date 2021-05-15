package com.employee;

public class Employee {

	private String empId;
	private String fname;
	private String age;
	private String dOB;
	private String address;
	private String phoneNo;
	private String nIC;
	private String email;
	private String jobPost;
	
	
	public Employee(String empId, String fname, String age, String dOB, String address, String phoneNo, String nIC,
			String email, String jobPost) {
		this.empId = empId;
		this.fname = fname;
		this.age = age;
		this.dOB = dOB;
		this.address = address;
		this.phoneNo = phoneNo;
		this.nIC = nIC;
		this.email = email;
		this.jobPost = jobPost;
	}


	public String getEmpId() {
		return empId;
	}


	public String getFname() {
		return fname;
	}


	public String getAge() {
		return age;
	}


	public String getdOB() {
		return dOB;
	}


	public String getAddress() {
		return address;
	}


	public String getPhoneNo() {
		return phoneNo;
	}

	public String getnIC() {
		return nIC;
	}


	public String getEmail() {
		return email;
	}


	public String getJobPost() {
		return jobPost;
	}

	
}
