package com.itheima.crm.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.crm.bean.Customer;
import com.itheima.crm.dao.CustomerDao;
@Transactional
public class CustomerDaoImpl extends HibernateDaoSupport implements CustomerDao{

	
/*
	public CustomerDaoImpl(Class clazz) {
		super(Customer.class);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public Integer findByCondition(DetachedCriteria detachedCriteria) {
		// TODO Auto-generated method stub
		return super.findCount(detachedCriteria);
	}

	@Override
	public List<Customer> findPageByCondition(DetachedCriteria detachedCriteria, Integer begin, int pageSize) {
		// TODO Auto-generated method stub
		return super.findByPage(detachedCriteria, begin, pageSize);
	}

	@Override
	public Customer findByID(long cust_id) {
		// TODO Auto-generated method stub
		System.out.println("没有实现此方法！！！！！！！！"+cust_id);
		return (Customer) super.findByID(cust_id);
	}

	@Override
	public void removeByID(long cust_id) {
		// TODO Auto-generated method stub
		System.out.println("没有实现此方法！！！！！！！！");
	}

	@Override
	public void editSave(Customer customer) {
		// TODO Auto-generated method stub
		super.save(customer);
	}

	@Override
	public void save(Customer customer) {
		// TODO Auto-generated method stub
		
	}
*/
	@Override
	public List<Customer> findAll() {
		// TODO Auto-generated method stub
		
	
		String hql="from Customer";
		List<Customer> find = (List<Customer>) getHibernateTemplate().find(hql);
		if(find.size()>0)
		{
			return find;
		}
		return null;
	}

	@Override
	public Integer findByCondition(DetachedCriteria detachedCriteria) {
		// TODO Auto-generated method stub
		detachedCriteria.setProjection(Projections.rowCount());
		List<Long> list = (List<Long>) getHibernateTemplate().findByCriteria(detachedCriteria);
		if(list.size()>0)
		{
			return list.get(0).intValue();
		}
		
		return 0;
	}

	@Override
	public List<Customer> findPageByCondition(DetachedCriteria detachedCriteria, Integer begin, int pageSize) {
		// TODO Auto-generated method stub
		detachedCriteria.setProjection(null);
		List<Customer> findByCriteria = (List<Customer>) getHibernateTemplate().findByCriteria(detachedCriteria,begin,pageSize);
		return findByCriteria;
	}

	@Override
	public void save(Customer customer) {
		// TODO Auto-generated method stub
		System.out.println(customer.toString());
		this.getHibernateTemplate().save(customer);
	}

	@Override
	public Customer findByID(long cust_id) {
		// TODO Auto-generated method stub
		String hql="from Customer where cust_id=?";
		List<Customer> find = (List<Customer>) getHibernateTemplate().find(hql, cust_id);
		if(find.size()>0){
			System.out.println("获得用户信息"+find.get(0).toString());
			return find.get(0);
		}
		return null;
	}

	@Override
	public void removeByID(long cust_id) {
		// TODO Auto-generated method stub
		String hql="from Customer where cust_id=?";
		List<Customer> find = (List<Customer>) getHibernateTemplate().find(hql, cust_id);
		if(find.size()>0)
		{
		getHibernateTemplate().delete(find.get(0));
		}
		
	}

	@Override
	public void editSave(Customer customer) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(customer);
	}

	

}
