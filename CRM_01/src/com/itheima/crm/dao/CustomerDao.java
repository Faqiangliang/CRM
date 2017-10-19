package com.itheima.crm.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.itheima.crm.bean.Customer;

public interface CustomerDao {

	public List<Customer> findAll();
	
	public Integer findByCondition(DetachedCriteria detachedCriteria);

	public List<Customer> findPageByCondition(DetachedCriteria detachedCriteria, Integer begin, int pageSize);

	public void save(Customer customer);

	public Customer findByID(long cust_id);

	public void removeByID(long cust_id);

	public void editSave(Customer customer);
}
