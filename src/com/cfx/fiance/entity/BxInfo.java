package com.cfx.fiance.entity;

import java.util.Date;

public class BxInfo {
    private String applyId;

    private String applyUserId;

    private String bizType;

    private String bxType;

    private String bankname;

    private String skrpersion;

    private String skrphone;

    private String bankcard;

    private Integer status;

    private String applyUnitId;

    private String memo;
    
    private String bxContent;

    private Integer receiptCount;

    private String attachId;

    private Double applyMoney;

    private Double confirMoney;

    private Date applyDate;

    private Date passDate;

    private Date payDate;

    public String getApplyId() {
        return applyId;
    }

    public void setApplyId(String applyId) {
        this.applyId = applyId == null ? null : applyId.trim();
    }

    public String getApplyUserId() {
        return applyUserId;
    }

    public void setApplyUserId(String applyUserId) {
        this.applyUserId = applyUserId == null ? null : applyUserId.trim();
    }

    public String getBizType() {
        return bizType;
    }

    public void setBizType(String bizType) {
        this.bizType = bizType == null ? null : bizType.trim();
    }

    public String getBxType() {
        return bxType;
    }

    public void setBxType(String bxType) {
        this.bxType = bxType == null ? null : bxType.trim();
    }

    public String getBankname() {
        return bankname;
    }

    public void setBankname(String bankname) {
        this.bankname = bankname == null ? null : bankname.trim();
    }

    public String getSkrpersion() {
        return skrpersion;
    }

    public void setSkrpersion(String skrpersion) {
        this.skrpersion = skrpersion == null ? null : skrpersion.trim();
    }

    public String getSkrphone() {
        return skrphone;
    }

    public void setSkrphone(String skrphone) {
        this.skrphone = skrphone == null ? null : skrphone.trim();
    }

    public String getBankcard() {
        return bankcard;
    }

    public void setBankcard(String bankcard) {
        this.bankcard = bankcard == null ? null : bankcard.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getApplyUnitId() {
        return applyUnitId;
    }

    public void setApplyUnitId(String applyUnitId) {
        this.applyUnitId = applyUnitId == null ? null : applyUnitId.trim();
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo == null ? null : memo.trim();
    }

    public Integer getReceiptCount() {
        return receiptCount;
    }

    public void setReceiptCount(Integer receiptCount) {
        this.receiptCount = receiptCount;
    }

    public String getAttachId() {
        return attachId;
    }

    public void setAttachId(String attachId) {
        this.attachId = attachId == null ? null : attachId.trim();
    }

    public Double getApplyMoney() {
        return applyMoney;
    }

    public void setApplyMoney(Double applyMoney) {
        this.applyMoney = applyMoney;
    }

    public Double getConfirMoney() {
        return confirMoney;
    }

    public void setConfirMoney(Double confirMoney) {
        this.confirMoney = confirMoney;
    }

    public Date getApplyDate() {
        return applyDate;
    }

    public void setApplyDate(Date applyDate) {
        this.applyDate = applyDate;
    }

    public Date getPassDate() {
        return passDate;
    }

    public void setPassDate(Date passDate) {
        this.passDate = passDate;
    }

    public Date getPayDate() {
        return payDate;
    }

    public void setPayDate(Date payDate) {
        this.payDate = payDate;
    }

	public String getBxContent() {
		return bxContent;
	}

	public void setBxContent(String bxContent) {
		this.bxContent = bxContent;
	}
}