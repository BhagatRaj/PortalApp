package com.tutorials.bean;

public class CreditCardBean extends LoginBeanVO {
	
	private String cardName;
	private String cardNum;
	private String creditExpAm;
	private String creditExpMonth;
	private String creditExpYear;
	private String comment;
	private String cardType;
	private String cardStatus;
	
	
	public String getCardStatus() {
		return cardStatus;
	}
	public void setCardStatus(String cardStatus) {
		this.cardStatus = cardStatus;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public String getCreditExpAm() {
		return creditExpAm;
	}
	public void setCreditExpAm(String creditExpAm) {
		this.creditExpAm = creditExpAm;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public String getCardNum() {
		return cardNum;
	}
	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getCreditExpMonth() {
		return creditExpMonth;
	}
	public void setCreditExpMonth(String creditExpMonth) {
		this.creditExpMonth = creditExpMonth;
	}
	public String getCreditExpYear() {
		return creditExpYear;
	}
	public void setCreditExpYear(String creditExpYear) {
		this.creditExpYear = creditExpYear;
	}	
}
