package com.itheima.crm.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.itheima.crm.bean.Customer;
import com.itheima.crm.bean.SaleVisit;

public interface SaleVisitDao {

	void save(SaleVisit saleVisit);

	Integer findByCondition(DetachedCriteria detachedCriteria);

	List<Customer> findPageByCondition(DetachedCriteria detachedCriteria, Integer begin, int pageSize);

}
