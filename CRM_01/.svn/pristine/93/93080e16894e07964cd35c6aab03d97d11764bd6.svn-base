package com.itheima.crm.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

public interface BaseDao<T> {

	void save(T t);
	
	void delete(T t);
	
	void update(T t);
	
	List<T> findAll();
	
	T findByID(Serializable id);
	
	int findCount(DetachedCriteria detachedCriteria);
	
	List<T> findByPage(DetachedCriteria detachedCriteria,int currentPage,int pageSize);
	
}
