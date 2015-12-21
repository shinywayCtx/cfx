package com.cfx.base.dao;

import org.springframework.stereotype.Component;

import com.cfx.base.entity.User;

@Component
public interface UserDao {

	User getUserByAccount(String account);
	User getUserById(String id);
	
}
