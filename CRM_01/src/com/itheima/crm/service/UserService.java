package com.itheima.crm.service;

import com.itheima.crm.bean.User;

public interface UserService {

	//public User regist(User user);
	public User login(User user);

	public void regist(User user);

}
