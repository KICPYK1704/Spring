package com.team4.model.designer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.finalproj.designer.DesignerBean;
import com.team4.finalproj.member.MemberBean;
import com.team4.model.member.MemberDto;

@Repository
public class DesignerDao implements DesignerDaoInter {
	@Autowired
	private DesignerAnnoInter annoInter;
	
	@Override
	public DesignerDto getDesigner(String des_id) {
		return annoInter.getDesigner(des_id);
	}
	
	public boolean insertDesigner(DesignerBean bean) {
		boolean b= false;
		System.out.println(bean.getDes_name());
		int a = annoInter.insertdesigner(bean);
		if(a > 0) b = true;	
		return b;
	}
	
	public boolean loginDesigner(DesignerBean bean){
		boolean b = false;
		
		DesignerDto dto = annoInter.loginDesigner(bean);
		System.out.println(bean.getDes_id());
		if(dto != null)
			if(bean.getDes_pwd().equals(dto.getDes_pwd()))
				b = true;
		
		return b;
	}
	
public DesignerDto getDesignerDataAll(String des_id){
		
		
		DesignerDto dto = null;
		if(des_id != null){
			dto = new DesignerDto();
			dto = annoInter.getDesignerDataAll(des_id);
		}
		
		return dto;
	}

public boolean updateDesigner(DesignerBean bean) {
	boolean b= false;
	
	int a = annoInter.updateDesigner(bean);
	System.out.println(a);
	if(a > 0) b = true;	
	return b;
}

	
}
