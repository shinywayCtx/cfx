package com.cfx.fiance.service;

import java.util.List;
import java.util.Map;

import com.cfx.fiance.entity.BxInfo;

public interface BxService {

	void save(BxInfo bx);
	List<BxInfo>getList(Map<String,Object> map);
	 
}
