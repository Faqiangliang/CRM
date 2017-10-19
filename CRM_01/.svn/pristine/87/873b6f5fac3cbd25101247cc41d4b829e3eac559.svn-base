package com.itheima.crm.service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.itheima.crm.bean.Customer;
import com.itheima.crm.bean.PageBean;
import com.itheima.crm.dao.CustomerDao;
import com.itheima.crm.service.CustomerService;

public class CustomerServiceImpl implements CustomerService {
	
	private CustomerDao customerDao;
	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}
	@Override
	public List<Customer> findAll() {
		// TODO Auto-generated method stub
		return customerDao.findAll();
	}
	@Override
	public PageBean<Customer> findByPage(DetachedCriteria detachedCriteria, int currPage, int pageSize) {
		// TODO Auto-generated method stub
		PageBean pageBean=new PageBean();
		pageBean.setCurrPage(currPage);
		pageBean.setPageSize(pageSize);
		
		Integer totalCount=customerDao.findByCondition(detachedCriteria);
		
		pageBean.setTotalCount(totalCount);
		
		//double tc=(double)totalCount;
		//Double num=Math.ceil(tc/pageSize);
		int totalPage=(int) totalCount/pageSize==0?totalCount/pageSize:(totalCount/pageSize)+1;
		pageBean.setTotalPage(totalPage);
		
		Integer begin=(currPage-1)*pageSize;
		List<Customer> list=customerDao.findPageByCondition(detachedCriteria,begin,pageSize);
		
		pageBean.setList(list);
		return pageBean;
	}
	@Override
	public void save(Customer customer) {
		// TODO Auto-generated method stub
		customerDao.save(customer);
	}
	@Override
	public Customer findByID(long cust_id) {
		// TODO Auto-generated method stub
		return customerDao.findByID(cust_id);
	}
	@Override
	public void removeByID(long cust_id) {
		// TODO Auto-generated method stub
		customerDao.removeByID(cust_id);
	}
	@Override
	public void editSave(Customer customer) {
		// TODO Auto-generated method stub
		customerDao.editSave(customer);
	}
	

}
