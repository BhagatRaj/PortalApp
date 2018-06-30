package com.tutorials.userregbean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="UserRegiTable")
public class UserRegBean {

	private Integer register_Id;
	private String user_MobNo;
	private String user_FirstName;
	private String user_LastName;
	private Date user_DateOfBirth;
	private String user_Email;
	private String user_Name;
	private String user_Pass;
	private String user_address;
	private String user_pinCode;
	private String user_pan;
	private String user_adhaar;
	private String user_uan;

	public  UserRegBean() {
	
	}
	
	@Id
	@GeneratedValue
	@Column(name = "register_Id", unique = true, nullable = false, length = 10)
	public Integer getRegister_Id() {
		return register_Id;
	}
	public void setRegister_Id(Integer register_Id) {
		this.register_Id = register_Id;
	}
	@Column(name="user_firstName",length=100)
	public String getUser_FirstName() {
		return user_FirstName;
	}
	public void setUser_FirstName(String user_FirstName) {
		this.user_FirstName = user_FirstName;
	}
	
	@Column(name="user_lastName", length=100)
	public String getUser_LastName() {
		return user_LastName;
	}
	public void setUser_LastName(String user_LastName) {
		this.user_LastName = user_LastName;
	}
	
	@Column(name="user_dateofBirth")
	@Temporal(TemporalType.TIMESTAMP)
	public Date getUser_DateOfBirth() {
		return user_DateOfBirth;
	}
	public void setUser_DateOfBirth(Date user_DateOfBirth) {
		this.user_DateOfBirth = user_DateOfBirth;
	}
	
	@Column(name="user_email", length=23)
	public String getUser_Email() {
		return user_Email;
	}
	public void setUser_Email(String user_Email) {
		this.user_Email = user_Email;
	}
	

	@Column(name="user_mobno", length=10)
	public String getUser_MobNo() {
		return user_MobNo;
	}
	public void setUser_MobNo(String user_MobNo) {
		this.user_MobNo = user_MobNo;
	}
	
	@Column(name="user_Name",length=100)
	public String getUser_Name() {
		return user_Name;
	}
	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}
	
	@Column(name="user_Pass",length=100)
	public String getUser_Pass() {
		return user_Pass;
	}
	public void setUser_Pass(String user_Pass) {
		this.user_Pass = user_Pass;
	}

	@Column(name="user_address",length=100)
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	
	@Column(name="user_pinCode",length=100)
	public String getUser_pinCode() {
		return user_pinCode;
	}
	public void setUser_pinCode(String user_pinCode) {
		this.user_pinCode = user_pinCode;
	}	

	@Column(name="user_pan",length=100)
	public String getUser_pan() {
		return user_pan;
	}
	public void setUser_pan(String user_pan) {
		this.user_pan = user_pan;
	}
	
	@Column(name="user_adhaar",length=100)
	public String getUser_adhaar() {
		return user_adhaar;
	}
	public void setUser_adhaar(String user_adhaar) {
		this.user_adhaar = user_adhaar;
	}
	
	@Column(name="user_uan",length=100)
	public String getUser_uan() {
		return user_uan;
	}
	public void setUser_uan(String user_uan) {
		this.user_uan = user_uan;
	}
	public UserRegBean(Integer register_Id, String user_MobNo, String user_FirstName, String user_LastName,
			Date user_DateOfBirth, String user_Email, String user_Name, String user_Pass, String user_address,
			String user_pinCode, String user_pan, String user_adhaar, String user_uan) {
		super();
		this.register_Id = register_Id;
		this.user_MobNo = user_MobNo;
		this.user_FirstName = user_FirstName;
		this.user_LastName = user_LastName;
		this.user_DateOfBirth = user_DateOfBirth;
		this.user_Email = user_Email;
		this.user_Name = user_Name;
		this.user_Pass = user_Pass;
		this.user_address = user_address;
		this.user_pinCode = user_pinCode;
		this.user_pan = user_pan;
		this.user_adhaar = user_adhaar;
		this.user_uan = user_uan;
	}

	
}
