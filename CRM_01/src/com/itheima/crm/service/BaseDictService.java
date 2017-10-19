package com.itheima.crm.service;

import java.util.List;

import com.itheima.crm.bean.BaseDict;

public interface BaseDictService {

	List<BaseDict> findByCode(String dict_type_code);

}
