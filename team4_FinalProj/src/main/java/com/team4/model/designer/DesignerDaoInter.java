package com.team4.model.designer;

import com.team4.finalproj.designer.DesignerBean;
import com.team4.finalproj.member.MemberBean;

public interface DesignerDaoInter {
	boolean insertDesigner(DesignerBean bean);
	
	boolean loginDesigner(DesignerBean bean);
	
	DesignerDto getDesignerDataAll(String des_id);
	
	boolean updateDesigner(DesignerBean bean);
}
