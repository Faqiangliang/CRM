package com.itheima.crm.dao;

import java.util.List;

import com.itheima.crm.bean.BaseDict;

public interface BaseDictDao {

	List<BaseDict> findByCode(String dict_type_code);

}
