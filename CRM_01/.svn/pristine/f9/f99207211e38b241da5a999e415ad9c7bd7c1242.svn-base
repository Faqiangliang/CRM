package com.itheima.crm.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.itheima.crm.bean.Customer;
import com.itheima.crm.bean.LinkMan;

public interface LinkManDao {

	void saveLinkMan(LinkMan linkMan);

	Integer findByCondition(DetachedCriteria forClass);

	List<Customer> findPageByCondition(DetachedCriteria forClass, Integer begin, int pageSize);

	void removeLinkMan(Long lkm_id);

	LinkMan findByID(Long lkm_id);

	void editSave(LinkMan linkMan);

	List<LinkMan> findByCustomerID(Long long1);

}
