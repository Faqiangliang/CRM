package com.itheima.crm.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.itheima.crm.bean.Customer;
import com.itheima.crm.bean.SaleVisit;
import com.itheima.crm.dao.SaleVisitDao;

public class SaleVisitDaoImpl extends HibernateDaoSupport implements SaleVisitDao {

	@Override
	public void save(SaleVisit saleVisit) {
		// TODO Auto-generated method stub
	getHibernateTemplate().save(saleVisit);
		
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

}
