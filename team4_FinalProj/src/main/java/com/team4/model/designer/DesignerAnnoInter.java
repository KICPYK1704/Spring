package com.team4.model.designer;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.team4.finalproj.designer.DesignerBean;

public interface DesignerAnnoInter {
	@Insert("insert into designer values(#{des_id},#{des_pwd},#{des_name},#{des_tel},#{des_email},#{des_account},"
			+ "#{des_shoptitle}, null, null,now())")
	int insertdesigner(DesignerBean bean);
	
	@Select("select des_id, des_pwd from designer where des_id=#{des_id}")
	DesignerDto loginDesigner(DesignerBean bean);
	
	@Select("select * from designer where des_id=#{des_id}")
	DesignerDto getDesigner(String des_id);

	@Select("select des_id, des_pwd, des_name, des_tel, des_email, des_account, des_shoptitle, des_shopintro, des_style from designer where des_id=#{des_id}")
	DesignerDto getDesignerDataAll(String des_id);

	@Update("update designer set des_pwd=#{des_pwd}, des_name=#{des_name}, des_tel=#{des_tel}, "
			+ "des_email=#{des_email}, des_account=#{des_account}, des_shoptitle=#{des_shoptitle}, des_shopintro=#{des_shopintro}, des_style=#{des_style} where des_id=#{des_id}")
	int updateDesigner(DesignerBean bean);
}
