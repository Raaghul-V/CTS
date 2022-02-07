package com.cts.vo;

public class Package {
	
	
	public Package(String cosignmentId, String acceptDate, String packageWeight, String cost, String senderAddress,
			String receiverAddress, String distance, String employeeId, String customerId, String type, String currentLocation, String packageStatus,
			 String currentDate) {
		super();
		this.cosignmentId = cosignmentId;
		this.acceptDate = acceptDate;
		this.packageWeight = packageWeight;
		this.cost = cost;
		this.senderAddress = senderAddress;
		this.receiverAddress = receiverAddress;
		this.employeeId = employeeId;
		this.customerId = customerId;
		this.currentLocation = currentLocation;
		this.packageStatus = packageStatus;
		this.type = type;
		this.distance = distance;
		this.currentDate = currentDate;
	}
	private String cosignmentId;
	private String acceptDate;
	private String packageWeight;
	private String cost;
	private String senderAddress;
	private String receiverAddress;
	private String employeeId;
	private String customerId;
	private String currentLocation;
	private String packageStatus;
	private String type;
	private String branchId;
	private String distance;
	private String currentDate;
	
	
	public String getCurrentDate() {
		return currentDate;
	}
	public void setCurrentDate(String currentDate) {
		this.currentDate = currentDate;
	}
	
	public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getBranchId() {
		return branchId;
	}
	public void setBranchId(String branchId) {
		this.branchId = branchId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
	public Package() {
		// TODO Auto-generated constructor stub
	}
	public String getCosignmentId() {
		return cosignmentId;
	}
	public void setCosignmentId(String cosignmentId) {
		this.cosignmentId = cosignmentId;
	}
	public String getAcceptDate() {
		return acceptDate;
	}
	public void setAcceptDate(String acceptDate2) {
		this.acceptDate = acceptDate2;
	}
	public String getPackageWeight() {
		return packageWeight;
	}
	public void setPackageWeight(String packageWeight2) {
		this.packageWeight = packageWeight2;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost2) {
		this.cost = cost2;
	}
	public String getSenderAddress() {
		return senderAddress;
	}
	public void setSenderAddress(String senderAddress) {
		this.senderAddress = senderAddress;
	}
	public String getReceiverAddress() {
		return receiverAddress;
	}
	public void setReceiverAddress(String receiverAddress) {
		this.receiverAddress = receiverAddress;
	}
	
	public String getCurrentLocation() {
		return currentLocation;
	}
	public void setCurrentLocation(String currentLocation) {
		this.currentLocation = currentLocation;
	}
	public String getPackageStatus() {
		return packageStatus;
	}
	public void setPackageStatus(String packageStatus) {
		this.packageStatus = packageStatus;
	}
	
	

}
