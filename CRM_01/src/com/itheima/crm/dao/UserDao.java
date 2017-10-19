package com.itheima.crm.dao;

import com.itheima.crm.bean.User;

public interface UserDao {

	//public User regist(User user);
	public User login(User user);

	public void regist(User user);
}
