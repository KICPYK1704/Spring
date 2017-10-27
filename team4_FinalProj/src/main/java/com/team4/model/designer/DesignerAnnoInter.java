package com.team4.model.designer;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.team4.finalproj.designer.DesignerBean;

public interface DesignerAnnoInter {
	@Insert("insert into designer values(#{des_id},#{des_pwd},#{des_name},#{des_tel},#{des_email},#{des_account},"
			+ "#{des_shoptitle}, null, null,now())")
	int insertdesigner(DesignerBean bean);
	
	
	@Select("select des_id, des_pwd from designer where des_id=#{des_id}")
	DesignerDto loginDesigner(DesignerBean bean);
}
