package com.itheima.crm.service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.crm.bean.Customer;
import com.itheima.crm.bean.LinkMan;
import com.itheima.crm.bean.PageBean;
import com.itheima.crm.dao.LinkManDao;
import com.itheima.crm.service.LinkManService;
@Transactional
public class LinkManServiceImpl implements LinkManService {
	
	private LinkManDao linkManDao;

	public void setLinkManDao(LinkManDao linkManDao) {
		this.linkManDao = linkManDao;
	}
	
	@Override
	public void saveLinkMan(LinkMan linkMan) {
		// TODO Auto-generated method stub
		linkManDao.saveLinkMan(linkMan);
		
	}

	@Override
	public PageBean<LinkMan> findByPage(DetachedCriteria forClass, int currPage, int pageSize) {
		// TODO Auto-generated method stub
		PageBean pageBean=new PageBean();
		pageBean.setCurrPage(currPage);
		pageBean.setPageSize(pageSize);
		
		Integer totalCount=linkManDao.findByCondition(forClass);
		
		pageBean.setTotalCount(totalCount);
		
		//double tc=(double)totalCount;
		//Double num=Math.ceil(tc/pageSize);
		int totalPage=(int) totalCount/pageSize==0?totalCount/pageSize:(totalCount/pageSize)+1;
		pageBean.setTotalPage(totalPage);
		
		Integer begin=(currPage-1)*pageSize;
		List<Customer> list=linkManDao.findPageByCondition(forClass,begin,pageSize);
		
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public void removeLinkMan(Long lkm_id) {
		// TODO Auto-generated method stub
		linkManDao.removeLinkMan(lkm_id);
	}

	@Override
	public LinkMan findByID(Long lkm_id) {
		// TODO Auto-generated method stub
		return linkManDao.findByID(lkm_id);
	}

	@Override
	public void editSave(LinkMan linkMan) {
		// TODO Auto-generated method stub
		linkManDao.editSave(linkMan);
		
	}

	@Override
	public List<LinkMan> findByCustomerID(Long long1) {
		// TODO Auto-generated method stub
		return linkManDao.findByCustomerID(long1);
	}

	
}
