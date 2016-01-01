package com.cfx.base.controller;

import javax.servlet.http.HttpServletRequest;

import com.cfx.base.entity.User;

public class BasicController {

	protected User getSessionUser(HttpServletRequest request ) throws Exception
	{
		User user=(User)request.getSession().getAttribute("user");
		
		return user;
		
	}
 
}

