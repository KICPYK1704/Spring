package com.team4.model.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.finalproj.admin.AdminBean;

@Repository
public class AdminDao implements AdminDaoInter {
	@Autowired
	private AdminAnnoInter annoInter;
	
	public boolean loginAdmin(AdminBean bean){
		boolean b = false;
		
		AdminDto dto = annoInter.loginAdmin(bean);
		System.out.println(bean.getAdm_id());
		if(dto != null)
			if(bean.getAdm_pwd().equals(dto.getAdm_pwd()))
				b = true;
		
		return b;
	}
	
}
