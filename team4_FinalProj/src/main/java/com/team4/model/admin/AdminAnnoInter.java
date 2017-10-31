package com.team4.model.admin;

import org.apache.ibatis.annotations.Select;

import com.team4.finalproj.admin.AdminBean;

public interface AdminAnnoInter {
	@Select("select adm_id, adm_pwd from admin where adm_id=#{adm_id}")
	AdminDto loginAdmin(AdminBean bean);
	
}
