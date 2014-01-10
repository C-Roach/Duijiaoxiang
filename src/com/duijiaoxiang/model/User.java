package com.duijiaoxiang.model;

import java.sql.Date;

public class User {
	private Integer ucode;
	private String username;
	private String password;
	private Date register_time;
	private String email;
	private Integer school_id;
	private String session_id;

	public String getSession_id() {
		return session_id;
	}
	public void setSession_id(String sessionId) {
		session_id = sessionId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public Integer getSchool_id() {
		return school_id;
	}
	public void setSchool_id(Integer schoolId) {
		school_id = schoolId;
	}
	public Integer getUcode() {
		return ucode;
	}
	public void setUcode(Integer ucode) {
		this.ucode = ucode;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getRegister_time() {
		return register_time;
	}
	public void setRegister_time(Date registerTime) {
		register_time = registerTime;
	}
}
