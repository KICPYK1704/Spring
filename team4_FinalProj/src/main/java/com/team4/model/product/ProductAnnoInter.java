package com.team4.model.product;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.team4.finalproj.product.ProductBean;
import com.team4.finalproj.product.ProductPictureBean;

public interface ProductAnnoInter {
	@Select("select max(prod_no) from product")
	String getNewNo();
	
	@Select("select max(pic_no) from productpicture")
	String getNewPicNo();
	
	@Insert("insert into productpicture values(#{pic_no}, #{pic_prodno}, #{pic_url})")
	boolean insertProductPic(ProductPictureBean productPictureBean);
	
	@Insert("insert into product values(#{prod_no}, #{prod_name}, #{prod_intro}, #{prod_Msg}, #{prod_classf1}, #{prod_classf2}, #{prod_designerid}, #{prod_price}, 0, now())")
	boolean insertProduct(ProductBean productBean);
}
