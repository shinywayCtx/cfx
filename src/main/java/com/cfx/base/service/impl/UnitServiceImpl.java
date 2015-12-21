package com.cfx.base.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cfx.base.dao.UnitDao;
import com.cfx.base.entity.Unit;
import com.cfx.base.service.UnitService;

@Service("unitService")
public class UnitServiceImpl implements UnitService {

	
	@Resource
	private UnitDao unitDao;
	@Override
	public Unit getById(String id) {
		 
		return unitDao.getById(id);
	}
}
