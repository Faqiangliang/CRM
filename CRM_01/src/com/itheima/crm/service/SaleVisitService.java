package com.itheima.crm.service;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.itheima.crm.bean.Customer;
import com.itheima.crm.bean.PageBean;
import com.itheima.crm.bean.SaleVisit;

public interface SaleVisitService {

	void save(SaleVisit saleVisit);

	PageBean<Customer> findByPage(DetachedCriteria detachedCriteria, int currentPage, int pageSize);

}
