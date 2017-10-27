package com.team4.model.product;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface ProductAnnoInter {
	
	@Select("select prod_no, prod_name, des_name, des_shoptitle, prod_price, (select pic_url from productpicture where pic_no = (select min(pic_no) from productpicture where pic_prodno = prod_no)) from product inner join designer on prod_desginerid=des_id order by prod_regdate asc;")
	public List<ProductDto> prod_listAll();	//제품 리스트 전체
	
	@Select("select prod_no, prod_name, des_name, des_shoptitle, prod_price, (select pic_url from productpicture where pic_no = (select min(pic_no) from productpicture where pic_prodno = prod_no)) from product inner join designer on prod_desginerid=des_id where prod_classf2=#{prod_classf2} order by prod_regdate asc;")
	public List<ProductDto> prod_listC1(@Param("prod_classf2")String prod_classf2);	//제품 리스트 의류 카테고리
	
	@Select("select prod_no, prod_name, des_name, des_shoptitle, prod_price, (select pic_url from productpicture where pic_no = (select min(pic_no) from productpicture where pic_prodno = prod_no)) from product inner join designer on prod_desginerid=des_id where prod_classf1=#{prod_classf1}, prod_classf2=#{prod_classf2} order by prod_regdate asc;")
	public List<ProductDto> prod_listC2(@Param("prod_classf1")String prod_classf1, @Param("prod_classf2")String prod_classf2);	//제품 리스트 의류 카테고리별 성별 카테고리
}
