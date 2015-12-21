package com.cfx.base.dao;

import org.springframework.stereotype.Component;

import com.cfx.base.entity.Unit;

@Component
public interface UnitDao {

	Unit getById(String id);
}
