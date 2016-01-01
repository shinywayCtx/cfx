package com.cfx.fiance.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import tool.FileUoLoadUtil;

import com.cfx.base.Json;
import com.cfx.base.controller.BasicController;
import com.cfx.base.entity.User;
import com.cfx.base.service.UnitService;
import com.cfx.base.service.UserService;
import com.cfx.fiance.entity.BxInfo;
import com.cfx.fiance.service.BxService;


@Controller
@RequestMapping("/finance/bx/")
public class BxController extends BasicController{

	@Autowired
	private UserService userService;
	@Autowired
	private UnitService unitService;
	
	@Autowired
	private BxService bxService;
	
	
	private static Log log = LogFactory.getLog(BxController.class);
	
	@RequestMapping("toList")
	public ModelAndView toList(HttpServletRequest request) throws Exception{
		ModelAndView v = new ModelAndView();
	 	 
		v.setViewName("finance/BxList"); 
		 
		return v;
	}
 
 
	@ResponseBody
	@RequestMapping("save")
	public Json getStu(HttpServletRequest request)   {
		Json json = new Json();
		try{
 
		
		 
			String applyId=request.getParameter("applyId");
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
			bx.setApplyId(applyId);
			bx.setApplyUserId(applyUserId);
			bx.setApplyUnitId(user.getUnitId());
			bx.setApplyDate(new java.sql.Date(System.currentTimeMillis()));
			bx.setBizType(bizType);
			bx.setBxType(bxType);
			bx.setApplyMoney(Double.parseDouble(applyMoney));
			bx.setReceiptCount(Integer.parseInt(receiptCount));
			bx.setBxContent(bxContent);
			bx.setMemo(memo);
			
			bx.setBankname(bankName);
			bx.setSkrpersion(skrPersion);
			bx.setSkrphone(skrPhone);
			bx.setBankcard(bankCard);
			
			bxService.save(bx);
		 
			json.setMsg("报销申请提交成功");
			json.setObj(bx);
		
		 }catch (Exception e) {
			json.setRc(Json.RC_FAILURE);
			json.setMsg("操作失败：" + e.getMessage());
		 }
		 return json;
	}
	
	@RequestMapping("add")
	public ModelAndView add(HttpServletRequest request,HttpServletResponse response) throws Exception{
		ModelAndView v = new ModelAndView();
	  
		User user=getSessionUser(request);
		 
		v.addObject("user",user);
		v.addObject("unitName",unitService.getById(user.getUnitId()).getUnitName());
 
		v.setViewName("finance/BxApply"); 
		return v;
	}
	
	@ResponseBody
	@RequestMapping("queryBxList")
	public List<BxInfo> queryBxList(HttpServletRequest request){
		
		String applyUserId=request.getParameter("applyUserId");
		
		log.info("报销列表查询中………………");
		Map<String, Object> map=new HashMap<String,Object>();

		map.put("applyUserId", applyUserId);
		List<BxInfo> bxList=bxService.getList(map);
		
		return bxList;
	}
	
	 
	@RequestMapping("upLoad")
	public ModelAndView upload(HttpServletRequest request) throws Exception{
	        init(request);
	        ModelAndView V=new ModelAndView();
	        
	        FileUoLoadUtil.upload(request);
	    
	        V.setViewName("finance/List");
	        V.addObject("map",getMap());
	        V.addObject("msg", "Ok");
	        return V;
	}
	 @RequestMapping("download")
	 public void download(HttpServletRequest request, HttpServletResponse response){
	        init(request);
	        try {
	            String downloadfFileName = request.getParameter("filename");
	            downloadfFileName = new String(downloadfFileName.getBytes("iso-8859-1"),"utf-8");
	            String fileName = downloadfFileName.substring(downloadfFileName.indexOf("_")+1);
	            String userAgent = request.getHeader("User-Agent");
	            byte[] bytes = userAgent.contains("MSIE") ? fileName.getBytes() : fileName.getBytes("UTF-8"); 
	            fileName = new String(bytes, "ISO-8859-1");
	            response.setHeader("Content-disposition", String.format("attachment; filename=\"%s\"", fileName));
	            FileUoLoadUtil.download(downloadfFileName, response.getOutputStream());
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    }
	private void init(HttpServletRequest request) {
        if(FileUoLoadUtil.FILEDIR == null)
        {
        	FileUoLoadUtil.FILEDIR = request.getSession().getServletContext().getRealPath("/") + "file/";
        }
    }
    private Map<String, String> getMap(){
        Map<String, String> map = new HashMap<String, String>();
        File[] files = new File(FileUoLoadUtil.FILEDIR).listFiles();
        if(files != null){
            for (File file : files) {
                if(file.isDirectory()){
                    File[] files2 = file.listFiles();
                    if(files2 != null){
                        for (File file2 : files2) {
                            String name = file2.getName();
                            map.put(file2.getParentFile().getName() + "/" + name, name.substring(name.lastIndexOf("_")+1));
                        }
                    }
                }
            }
        }
        return map;
    }   
}
