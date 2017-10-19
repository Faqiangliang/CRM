package com.itheima.crm.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.itheima.crm.bean.Customer;
import com.itheima.crm.bean.LinkMan;
import com.itheima.crm.dao.LinkManDao;

public class LinkManDaoImpl extends HibernateDaoSupport implements LinkManDao {

	@Override
	public void saveLinkMan(LinkMan linkMan) {
		// TODO Auto-generated method stub
		System.out.println(linkMan.toString());
		getHibernateTemplate().save(linkMan);
	}

	@Override
	public Integer findByCondition(DetachedCriteria forClass) {
		// TODO Auto-generated method stub
		forClass.setProjection(Projections.rowCount());
		List<Long> list = (List<Long>) getHibernateTemplate().findByCriteria(forClass);
		if(list.size()>0)
		{
			System.out.println(list.get(0).intValue()+"条联系人结果");
			return list.get(0).intValue();
		}
		
		return 0;
	}

	@Override
	public List<Customer> findPageByCondition(DetachedCriteria forClass, Integer begin, int pageSize) {
		// TODO Auto-generated method stub
		forClass.setProjection(null);
		List<Customer> findByCriteria = (List<Customer>) getHibernateTemplate().findByCriteria(forClass,begin,pageSize);
		return findByCriteria;
	}

	@Override
	public void removeLinkMan(Long lkm_id) {
		// TODO Auto-generated method stub
		String hql="from LinkMan where lkm_id=?";
		List<LinkMan> find = (List<LinkMan>) getHibernateTemplate().find(hql, lkm_id);
		if(find.size()>0){
			LinkMan linkMan = find.get(0);
			getHibernateTemplate().delete(linkMan);
		}
	}

	@Override
	public LinkMan findByID(Long lkm_id) {
		// TODO Auto-generated method stub
		String hql="from LinkMan where lkm_id=?";
		List<LinkMan> find = (List<LinkMan>) getHibernateTemplate().find(hql, lkm_id);
		if(find.size()>0){
			return find.get(0);
		}
		return null;
	}

	@Override
	public void editSave(LinkMan linkMan) {
		// TODO Auto-generated method stub
		System.out.println(linkMan.toString());
		getHibernateTemplate().update(linkMan);
		/*String hql="from LinkMan where lkm_id=?";
		List<LinkMan> find = (List<LinkMan>) getHibernateTemplate().find(hql, linkMan.getLkm_id());
		if(find.size()>0){
			LinkMan linkMan2 = find.get(0);
			
		}*/
	}

	

	@Override
	public List<LinkMan> findByCustomerID(Long long1) {
		// TODO Auto-generated method stub
		DetachedCriteria forClass = DetachedCriteria.forClass(LinkMan.class);
		forClass.setProjection(null);
		forClass.add(Restrictions.eq("customer.cust_id", long1));
		List<LinkMan> findByCriteria = (List<LinkMan>) getHibernateTemplate().findByCriteria(forClass);
		return findByCriteria;
	}

}
