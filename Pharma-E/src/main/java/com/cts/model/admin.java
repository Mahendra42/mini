package com.cts.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class admin {
	@Id
	private Long aid;
	private String firstname;
	private String lastname;
	private String gender;
	private Long contact;
	private String email;
	private String userName;
	private String password;
	
	public admin() {
		
	}

	public admin(Long aid, String firstname, String lastname, String gender, Long contact, String email,
			String userName, String password) {
		super();
		this.aid = aid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.gender = gender;
		this.contact = contact;
		this.email = email;
		this.userName = userName;
		this.password = password;
	}

	public Long getAid() {
		return aid;
	}
	public void setAid(Long aid) {
		this.aid = aid;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Long getContact() {
		return contact;
	}
	public void setContact(Long contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "radmin [aid=" + aid + ", firstname=" + firstname + ", lastname=" + lastname + ", gender=" + gender
				+ ", contact=" + contact + ", email=" + email + ", userName=" + userName + ", password=" + password
				+ "]";
	}
	
	
	
}
