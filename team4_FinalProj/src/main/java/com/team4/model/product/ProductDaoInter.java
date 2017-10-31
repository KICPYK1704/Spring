package com.team4.model.product;

import java.util.List;

public interface ProductDaoInter {

	public List<ProductDto> prod_listAll();	//제품 리스트 전체
	
	public List<ProductDto> prod_listC1(String prod_classf2);	//제품 리스트 의류 카테고리
	
	public List<ProductDto> prod_listC2(String prod_classf1, String prod_classf2);	//제품 리스트 의류 카테고리별 성별 카테고리
	
	public ProductDto prod_view(String prod_no);	//제품 상세보기
	
	public List<ProductPicDto> prod_imageView(String prod_no);	//제품 이미지 상세보기
	
	public List<ProductStockDto> prod_option(String prod_no);	//제품 옵션
}
