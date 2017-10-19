package com.itheima.crm.web.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;
import com.itheima.crm.bean.BaseDict;
import com.itheima.crm.service.BaseDictService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import net.sf.json.JSONArray;

public class BaseDictAction extends ActionSupport{
	private final String JSON_SUCCESS="json_success";
	private BaseDict baseDict;
	private String dict_type_code;
	private BaseDictService baseDictService;
	private List<BaseDict> list;
	public List<BaseDict> getList() {
		return list;
	}
	public void setBaseDictService(BaseDictService baseDictService) {
		this.baseDictService = baseDictService;
	}
	public void setDict_type_code(String dict_type_code) {
		this.dict_type_code = dict_type_code;
	}
	
	public String findByCode() throws IOException{
		
	
		 list=baseDictService.findByCode(dict_type_code);
	
		/*
		String json = new Gson().toJson(list);
		System.out.println(json.toString());
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=UTF-8");
		
		response.getWriter().write(json);*/
		return JSON_SUCCESS;
	}

	
}
