package com.team4.model.product;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.team4.finalproj.product.ProductBean;
import com.team4.finalproj.product.ProductPictureBean;
import com.team4.finalproj.product.StockBean;

public interface ProductAnnoInter {
	@Select("select prod_no, prod_name, prod_designerid, prod_price, prod_hit, prod_classf1, prod_classf2, prod_regdate from product where prod_designerid = #{prod_designerid}")
	List<ProductMgtDto> getProdMgtList(String des_id);
	
	@Select("select max(prod_no) from product")
	String getNewNo();
	
	@Select("select max(pic_no) from productpicture")
	String getNewPicNo();

	@Insert("insert into productpicture values(#{pic_no}, #{pic_prodno}, #{pic_url})")
	boolean insertProductPic(ProductPictureBean productPictureBean);
	
	@Insert("insert into product values(#{prod_no}, #{prod_name}, #{prod_intro}, #{prod_Msg}, #{prod_classf1}, #{prod_classf2}, #{prod_designerid}, #{prod_price}, 0, now())")
	boolean insertProduct(ProductBean productBean);
	
	//stock
	@Select("select * from stock where stock_prodno = #{prod_no}")
	List<StockDto> getStockList(String prod_no);
	
	@Select("select max(stock_no) from stock")
	String getNewStockNo();
	
	@Insert("insert into stock values(#{stock_no}, #{stock_prodno}, #{stock_size}, #{stock_color}, #{stock_quantity})")
	boolean insertStock(StockBean stockBean);
}
