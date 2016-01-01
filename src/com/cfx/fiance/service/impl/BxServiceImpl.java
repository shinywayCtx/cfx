package com.cfx.fiance.service.impl;

import java.util.List;
import java.util.Map;
import java.util.UUID;

 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cfx.fiance.dao.BxDao;
import com.cfx.fiance.entity.BxInfo;
import com.cfx.fiance.service.BxService;

@Service("bxService")
public class BxServiceImpl implements BxService {

	@Autowired
	private BxDao bxDao;
	public void save(BxInfo bx) {
		try{
			
			if(bx.getApplyId().length()>0){
				String applyId=UUID.randomUUID().toString();
				bx.setApplyId(applyId);
				bxDao.add(bx);
			}else {
				bxDao.edit(bx);
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	public List<BxInfo> getList(Map<String, Object> map) {
	 
		return bxDao.getList(map);
	}

	 

	 
}
