package com.cfx.base.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cfx.base.dao.UserDao;
import com.cfx.base.entity.User;
import com.cfx.base.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	
	@Resource
	private UserDao userDao;

	public User getByAccount(String account) {
		 
		return userDao.getUserByAccount(account);
	}

	public User getById(String id) {
		 
		return userDao.getUserById(id);
	}
	 


	 

}
