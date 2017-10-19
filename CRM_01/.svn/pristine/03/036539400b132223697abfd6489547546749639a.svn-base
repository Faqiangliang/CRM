package com.itheima.crm.service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.crm.bean.Customer;
import com.itheima.crm.bean.PageBean;
import com.itheima.crm.bean.SaleVisit;
import com.itheima.crm.dao.SaleVisitDao;
import com.itheima.crm.service.SaleVisitService;

@Transactional
public class SaleVisitServiceImpl implements SaleVisitService {
	
	private SaleVisitDao saleVisitdao;
	public void setSaleVisitdao(SaleVisitDao saleVisitdao) {
		this.saleVisitdao = saleVisitdao;
	}

	@Override
	public void save(SaleVisit saleVisit) {
		// TODO Auto-generated method stub
		saleVisitdao.save(saleVisit);
	}

	@Override
	public PageBean<Customer> findByPage(DetachedCriteria detachedCriteria, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		PageBean pageBean=new PageBean();
		pageBean.setCurrPage(currentPage);
		pageBean.setPageSize(pageSize);
		
		Integer totalCount=saleVisitdao.findByCondition(detachedCriteria);
		
		pageBean.setTotalCount(totalCount);
		
		//double tc=(double)totalCount;
		//Double num=Math.ceil(tc/pageSize);
		int totalPage=(int) totalCount/pageSize==0?totalCount/pageSize:(totalCount/pageSize)+1;
		pageBean.setTotalPage(totalPage);
		
		Integer begin=(currentPage-1)*pageSize;
		List<Customer> list=saleVisitdao.findPageByCondition(detachedCriteria,begin,pageSize);
		
		pageBean.setList(list);
		return pageBean;
	}

}
