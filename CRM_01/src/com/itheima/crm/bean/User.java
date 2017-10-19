package com.itheima.crm.bean;

public class User {

	private long id;
	private String code;
	private String name;
	private String password;
	private char state;
	private int uid;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public char getState() {
		return state;
	}
	public void setState(char state) {
		this.state = state;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", code=" + code + ", name=" + name + ", password=" + password + ", state=" + state
				+ ", uid=" + uid + "]";
	}
    
	
	
}
