package com.itheima.crm.dao.impl;

import java.util.List;


import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.itheima.crm.bean.User;
import com.itheima.crm.dao.UserDao;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
    
	
	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		System.out.println(user.getName()+user.getPassword());
		
		String hql="from User where code=? and password=?";
		List<User> find = (List<User>) getHibernateTemplate().find(hql,user.getName(),user.getPassword());
		
		if(find.size()>0)
		{
			return find.get(0);
		}
		return null;
		
	}

	@Override
	public void regist(User user) {
		// TODO Auto-generated method stub
		System.out.println(user.getName()+"註冊"+user.getCode());
		getHibernateTemplate().save(user);
		
	}

	

}
