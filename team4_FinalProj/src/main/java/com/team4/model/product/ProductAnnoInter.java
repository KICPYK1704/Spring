package com.team4.model.product;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
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
	
	//ShoppingSt
	@Select("select pic_url from (select p.pic_url, ROW_NUMBER() OVER(ORDER BY prod_regdate DESC) as rn from productpicture as p inner join product as pd on prod_no = pic_prodno where prod_designerid = #{des_id}) as shopSt where rn <= 3")
	String[] getLatestAddition(String des_id);
	
	@Select("select des_id, des_shoptitle, des_name, des_shopintro from designer")
	List<ShopStDto> getShopSt();
	
	@Select("select prod_no, prod_name, des_name, des_shoptitle, prod_price, (select pic_url from productpicture where pic_no = (select min(pic_no) from productpicture where pic_prodno = prod_no))as pic_url from product inner join designer on prod_designerid=des_id order by prod_regdate asc;")
	public List<ProductDto> prod_listAll();	//제품 리스트 전체
	
	@Select("select prod_no, prod_name, des_name, des_shoptitle, prod_price, (select pic_url from productpicture where pic_no = (select min(pic_no) from productpicture where pic_prodno = prod_no))as pic_url from product inner join designer on prod_designerid=des_id where prod_classf2=#{prod_classf2} order by prod_regdate asc;")
	public List<ProductDto> prod_listC1(@Param("prod_classf2")String prod_classf2);	//제품 리스트 의류 카테고리
	
	@Select("select prod_no, prod_name, des_name, des_shoptitle, prod_price, (select pic_url from productpicture where pic_no = (select min(pic_no) from productpicture where pic_prodno = prod_no))as pic_url from product inner join designer on prod_designerid=des_id where prod_classf1=#{prod_classf1} and prod_classf2=#{prod_classf2} order by prod_regdate asc;")
	public List<ProductDto> prod_listC2(@Param("prod_classf1")String prod_classf1, @Param("prod_classf2")String prod_classf2);	//제품 리스트 의류 카테고리별 성별 카테고리
	
	@Select("select prod_no, prod_name, prod_intro, prod_Msg, des_name, des_shoptitle, prod_price from product inner join designer on prod_designerid=des_id where prod_no=#{prod_no}")
	public ProductDto prod_view(@Param("prod_no")String prod_no);	//제품 상세보기
	
	@Select("select pic_no, pic_prodno, pic_url from productpicture where pic_prodno=#{pic_prodno} order by pic_no asc")
	public List<ProductPicDto> prod_imageView(@Param("pic_prodno")String prod_no);	//제품 이미지 상세보기
	
	@Select("select stock_no, stock_prodno, stock_size, stock_color, stock_quantity from stock where stock_prodno=#{stock_prodno} order by stock_no asc")
	public List<ProductStockDto> prod_option(@Param("stock_prodno")String prod_no);	//제품 옵션
}
