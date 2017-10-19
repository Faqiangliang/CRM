package com.itheima.crm.bean;

import java.util.Date;

public class SaleVisit {
	
	private String visit_id;
	private Date visit_time; //拜访时间
	private Date visit_nexttime; //下次拜访时间
	private String visit_addr; //拜访地址
	private String visit_detail; //拜访详
	//1. 拜访的是哪一个客户
	private Customer customer;
	//2. 拜访的是哪一个联系人
	private LinkMan linkMan;
	//3. 谁去拜访了。
	private User user;
	public String getVisit_id() {
		return visit_id;
	}
	public void setVisit_id(String visit_id) {
		this.visit_id = visit_id;
	}
	public Date getVisit_time() {
		return visit_time;
	}
	public void setVisit_time(Date visit_time) {
		this.visit_time = visit_time;
	}
	public Date getVisit_nexttime() {
		return visit_nexttime;
	}
	public void setVisit_nexttime(Date visit_nexttime) {
		this.visit_nexttime = visit_nexttime;
	}
	public String getVisit_addr() {
		return visit_addr;
	}
	public void setVisit_addr(String visit_addr) {
		this.visit_addr = visit_addr;
	}
	public String getVisit_detail() {
		return visit_detail;
	}
	public void setVisit_detail(String visit_detail) {
		this.visit_detail = visit_detail;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public LinkMan getLinkMan() {
		return linkMan;
	}
	public void setLinkMan(LinkMan linkMan) {
		this.linkMan = linkMan;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
}
