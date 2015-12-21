package com.cfx.fiance.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cfx.base.entity.User;
import com.cfx.base.service.UnitService;
import com.cfx.base.service.UserService;
import com.cfx.fiance.entity.BxInfo;


@Controller
@RequestMapping("/finance/bx/")
public class BxController {

	@Autowired
	private UserService userService;
	@Autowired
	private UnitService unitService;
	
	
	@RequestMapping("toList")
	public ModelAndView toList(HttpServletRequest request) throws Exception{
		ModelAndView v = new ModelAndView();
		System.err.println("保存报销信息");
		 
		v.setViewName("finance/BxList"); 
		 
		return v;
	}
 
	@RequestMapping("save")
	public ModelAndView save(HttpServletRequest request) throws Exception{
		ModelAndView v = new ModelAndView();


		String applyUserId=request.getParameter("applyUserId");
		String bizType=request.getParameter("bizType");
		String bxType=request.getParameter("bxType");
		String applyMoney=request.getParameter("applyMoney");
		String receiptCount=request.getParameter("receiptCount");
		String bxContent=request.getParameter("bxContent");
		String memo=request.getParameter("memo");
		
		String bankName=request.getParameter("bankName");
		String skrPersion=request.getParameter("skrPersion");
		String skrPhone=request.getParameter("skrPhone");
		String bankCard=request.getParameter("bankCard");
 
		User user=userService.getById(applyUserId);
		BxInfo bx=new  BxInfo();
		bx.setApplyUserId(applyUserId);
		bx.setApplyUnitId(user.getUnitId());
		bx.setApplyDate(new java.sql.Date(System.currentTimeMillis()));
		bx.setBizType(bizType);
		bx.setBxType(bxType);
		bx.setApplyMoney(Double.parseDouble(applyMoney));
		bx.setReceiptCount(Integer.parseInt(receiptCount));
		bx.setMemo(memo);
		v.setViewName("finance/BxApply"); 
		
		v.addObject("bx", bx);
		v.addObject("user", user);
		v.addObject("unitName", unitService.getById(user.getUnitId()).getUnitName()); 
		
		v.addObject("msg", "报销申请提交成功");
		return v;
	}
	
	@RequestMapping("add")
	public ModelAndView add(HttpServletRequest request) throws Exception{
		ModelAndView v = new ModelAndView();
	  
		User user=(User)request.getSession().getAttribute("user");
		v.addObject("user",user);
		v.addObject("unitName",unitService.getById(user.getUnitId()).getUnitName());
		v.setViewName("finance/BxApply"); 
		return v;
	}
	
	
}
