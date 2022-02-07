package com.cts.vo;


public class Warehouse {
	
	private String branchId;
	
	private String branchName;
	
	private String branchLocation;
	
	private String contactNo;
	
	public Warehouse(String branchId, String branchName, String branchLocation, String contactNo) {
		this.branchId=branchId;
		this.branchName=branchName;
		this.branchLocation=branchLocation;
		this.contactNo=contactNo;
	}
	
	public Warehouse() {}
	
	public String getBranchId() {
		return branchId;
	}
	public void setBranchId(String branchId) {
		this.branchId = branchId;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public String getBranchLocation() {
		return branchLocation;
	}
	public void setBranchLocation(String branchLocation) {
		this.branchLocation = branchLocation;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	
	
}
