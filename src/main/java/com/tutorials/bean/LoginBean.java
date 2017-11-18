package com.tutorials.bean;

import java.io.Serializable;

import org.hibernate.validator.constraints.NotEmpty;

public class LoginBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@NotEmpty
	private String userName;
	@NotEmpty
	private String passWord;
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	
	public String toString(){
		return "UserName"+userName;
	}
	
}
