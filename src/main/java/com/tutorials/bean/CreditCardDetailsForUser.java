package com.tutorials.bean;

import java.util.Date;


public class CreditCardDetailsForUser {
	
	private String cardUser;
	private String cardName;
	private Integer cardNumber;
	private Date expiryDate;
	private Integer cvv;
	
	public String getCardUser() {
		return cardUser;
	}
	public void setCardUser(String cardUser) {
		this.cardUser = cardUser;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public Integer getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(Integer cardNumber) {
		this.cardNumber = cardNumber;
	}
	public Date getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}
	public Integer getCvv() {
		return cvv;
	}
	public void setCvv(Integer cvv) {
		this.cvv = cvv;
	}

}
