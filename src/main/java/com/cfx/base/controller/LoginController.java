package com.cfx.base.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cfx.base.entity.User;
import com.cfx.base.service.UserService;


@Controller
@RequestMapping("/base/")
public class LoginController {

	@Autowired
	private UserService userService;
 
	@RequestMapping("login.do")
	public ModelAndView checklogin(HttpServletRequest request) throws Exception{
		ModelAndView v = new ModelAndView();
		String userAccount=request.getParameter("userAccount");
		String password=request.getParameter("password");
		
		User user=userService.getByAccount(userAccount);
		if(user.getUserPassword().equals(password))
		{
			
		}else
		{
			throw new Exception("用户名或密码错!");
		}
		
		
		request.getSession().setAttribute("user", user);
		
		v.setViewName("base/Home"); 
		return v;
	}
	
	
}
