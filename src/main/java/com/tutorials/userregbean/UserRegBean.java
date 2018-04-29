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

	
	
}
