package com.itheima.crm.web.action;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.itheima.crm.bean.User;
import com.itheima.crm.service.UserService;
import com.itheima.crm.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User>{

	private UserService userService;
	private User user;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		if(user==null){
			user=new User();
		}
		return user;
	}
	
	public String regist(){
		
		user.setState('1');
		user.setUid(0);
		System.out.println("註冊"+user.getCode());
	    userService.regist(user);
		return "regist_suc";
	}
	
	public String login(){
		
		
		System.out.println("正在登陆");
		User loginuser = userService.login(user);
		if(loginuser!=null){
			ServletActionContext.getRequest().getSession().setAttribute("user", loginuser);
			return "login_suc";
		}else{
			ServletActionContext.getRequest().setAttribute("msg", "用户名或密码错误！");
			return "login_error";
		}
	}

	
}
