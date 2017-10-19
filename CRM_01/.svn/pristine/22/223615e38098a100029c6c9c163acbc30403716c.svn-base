package com.itheima.crm.web.interceptor;

import org.apache.struts2.ServletActionContext;

import com.itheima.crm.bean.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
		// TODO Auto-generated method stub
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
		System.out.println("进入拦截器前！！！");
		if(user==null){
			
		   System.out.println("进入拦截器！！！");
			return "Login_page";
		}
		 System.out.println("拦截器放行！！！");
		return actionInvocation.invoke();
	}

}
