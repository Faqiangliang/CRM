package com.itheima.crm.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.itheima.crm.bean.BaseDict;
import com.itheima.crm.dao.BaseDictDao;

public class BaseDictDaoImpl extends HibernateDaoSupport implements BaseDictDao {

	@Override
	public List<BaseDict> findByCode(String dict_type_code) {
		// TODO Auto-generated method stub
		String hql="from BaseDict where dict_type_code=?";
		List<BaseDict> find = (List<BaseDict>) getHibernateTemplate().find(hql, dict_type_code);
		System.out.println("查找结果"+find.size());
		return find;
	}

}
