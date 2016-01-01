package com.cfx.lx.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/lx/")
public class CustController {

	
 
	@RequestMapping("custAdd")
	public ModelAndView WorkShop(HttpServletRequest request) throws Exception{
		ModelAndView v = new ModelAndView();
		v.setViewName("/lx/CustAdd");
 
		return v;
	}
}
