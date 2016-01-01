package com.cfx.fiance.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.cfx.fiance.entity.BxInfo;

@Component
public interface BxDao {

	void add(BxInfo bx);
	 
	BxInfo getById(String id);

	void edit(BxInfo bx);

	List<BxInfo> getList(Map<String, Object> map);
}
