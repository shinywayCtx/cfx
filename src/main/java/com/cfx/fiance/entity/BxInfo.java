package com.cfx.fiance.entity;

public class BxInfo {

	
	private String id;
	private String applyUserId;
	private String bizType;
	private String bxType;
	private int status;
	private String applyUnitId;
	private String bxContent;
	private String memo;
	private int receiptCount;
	private String attachId;
	
	private double applyMoney;
	private double confirmMoney;
	private java.sql.Date applyDate;
	private java.sql.Date passDate;
	private java.sql.Date payDate;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getApplyUserId() {
		return applyUserId;
	}
	public void setApplyUserId(String applyUserId) {
		this.applyUserId = applyUserId;
	}
	public String getBizType() {
		return bizType;
	}
	public void setBizType(String bizType) {
		this.bizType = bizType;
	}
	public String getBxType() {
		return bxType;
	}
	public void setBxType(String bxType) {
		this.bxType = bxType;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getApplyUnitId() {
		return applyUnitId;
	}
	public void setApplyUnitId(String applyUnitId) {
		this.applyUnitId = applyUnitId;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public int getReceiptCount() {
		return receiptCount;
	}
	public void setReceiptCount(int receiptCount) {
		this.receiptCount = receiptCount;
	}
	public double getApplyMoney() {
		return applyMoney;
	}
	public void setApplyMoney(double applyMoney) {
		this.applyMoney = applyMoney;
	}
	public double getConfirmMoney() {
		return confirmMoney;
	}
	public void setConfirmMoney(double confirmMoney) {
		this.confirmMoney = confirmMoney;
	}
	public java.sql.Date getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(java.sql.Date applyDate) {
		this.applyDate = applyDate;
	}
	public java.sql.Date getPassDate() {
		return passDate;
	}
	public void setPassDate(java.sql.Date passDate) {
		this.passDate = passDate;
	}
	public java.sql.Date getPayDate() {
		return payDate;
	}
	public void setPayDate(java.sql.Date payDate) {
		this.payDate = payDate;
	}
	public String getAttachId() {
		return attachId;
	}
	public void setAttachId(String attachId) {
		this.attachId = attachId;
	}
	
	
}
