package com.cfx.base.service;

import com.cfx.base.entity.User;

public interface UserService {

	
	User getByAccount(String account);
	User getById(String id);
}
