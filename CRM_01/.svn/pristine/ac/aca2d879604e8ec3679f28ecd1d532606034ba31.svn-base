package com.itheima.crm.service.impl;

import java.util.List;

import com.itheima.crm.bean.BaseDict;
import com.itheima.crm.dao.BaseDictDao;
import com.itheima.crm.service.BaseDictService;

public class BaseDictServiceImpl implements BaseDictService {

	private BaseDictDao baseDictDao;
	public void setBaseDictDao(BaseDictDao baseDictDao) {
		this.baseDictDao = baseDictDao;
	}
	@Override
	public List<BaseDict> findByCode(String dict_type_code) {
		// TODO Auto-generated method stub
		return baseDictDao.findByCode(dict_type_code);
	}
}
