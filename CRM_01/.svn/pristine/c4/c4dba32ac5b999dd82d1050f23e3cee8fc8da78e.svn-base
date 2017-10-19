package com.itheima.crm.service;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.itheima.crm.bean.Customer;
import com.itheima.crm.bean.PageBean;

public interface CustomerService {

	public List<Customer> findAll();

	public PageBean<Customer> findByPage(DetachedCriteria detachedCriteria, int currPage, int pageSize);

	public void save(Customer customer);

	public Customer findByID(long cust_id);

	public void removeByID(long cust_id);

	public void editSave(Customer customer);
}
