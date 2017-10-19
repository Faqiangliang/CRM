package com.itheima.crm.service;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.itheima.crm.bean.LinkMan;
import com.itheima.crm.bean.PageBean;

public interface LinkManService {

	void saveLinkMan(LinkMan linkMan);

	PageBean<LinkMan> findByPage(DetachedCriteria forClass, int currPage, int pageSize);

	void removeLinkMan(Long lkm_id);

	LinkMan findByID(Long lkm_id);

	void editSave(LinkMan linkMan);

	List<LinkMan> findByCustomerID(Long long1);

}
