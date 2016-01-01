package com.cfx.self.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/self/")
public class SelfController {

 
	
	@RequestMapping("home.do")
	public ModelAndView WorkShop(HttpServletRequest request) throws Exception{
		ModelAndView v = new ModelAndView();
		v.setViewName("/self/Home");
 
		return v;
	}
}
