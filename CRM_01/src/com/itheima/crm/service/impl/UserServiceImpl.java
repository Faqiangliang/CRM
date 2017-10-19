package com.itheima.crm.service.impl;


import org.springframework.transaction.annotation.Transactional;

import com.itheima.crm.bean.User;
import com.itheima.crm.dao.UserDao;
import com.itheima.crm.service.UserService;
import com.itheima.crm.utils.MD5Utils;

@Transactional
public class UserServiceImpl implements UserService {
	
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	@Override
	public void regist(User user) {
		// TODO Auto-generated method stub
		user.setPassword(MD5Utils.encode(user.getPassword()));
		userDao.regist(user);
	}

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		user.setPassword(MD5Utils.encode(user.getPassword()));
		return userDao.login(user);
	}

	
}
