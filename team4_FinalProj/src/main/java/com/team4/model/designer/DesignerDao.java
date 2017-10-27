package com.team4.model.designer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.finalproj.designer.DesignerBean;

@Repository
public class DesignerDao implements DesignerDaoInter {
	@Autowired
	private DesignerAnnoInter annoInter;
	
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
	
}
