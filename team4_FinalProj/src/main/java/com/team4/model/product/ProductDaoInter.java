package com.team4.model.product;

import java.util.List;

public interface ProductDaoInter {

	public List<ProductDto> prod_listAll();	//제품 리스트 전체
	
	public List<ProductDto> prod_listC1(String prod_classf2);	//제품 리스트 의류 카테고리
	
	public List<ProductDto> prod_listC2(String prod_classf1, String prod_classf2);	//제품 리스트 의류 카테고리별 성별 카테고리
}
