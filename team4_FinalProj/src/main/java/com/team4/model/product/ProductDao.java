package com.team4.model.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao implements ProductDaoInter {
	
	@Autowired
	private ProductAnnoInter annoInter;
	
	/* 상품 리스트 */
	@Override
	public List<ProductDto> prod_listAll() {
		//제품 리스트 전체
		return annoInter.prod_listAll();
	}
	
	@Override
	public List<ProductDto> prod_listC1(String prod_classf2) {
		//제품 리스트 의류 카테고리
		return annoInter.prod_listC1(prod_classf2);
	}
	
	@Override
	public List<ProductDto> prod_listC2(String prod_classf1, String prod_classf2) {
		//제품 리스트 의류 카테고리별 성별 카테고리
		return annoInter.prod_listC2(prod_classf1, prod_classf2);
	}
	
	/* 상품 상세보기 */
	@Override
	public ProductDto prod_view(String prod_no) {
		// 상품 상세 내용
		return annoInter.prod_view(prod_no);
	}
	
	@Override
	public List<ProductPicDto> prod_imageView(String prod_no) {
		// 상품 상세 이미지 목록
		return annoInter.prod_imageView(prod_no);
	}
	
	@Override
	public List<ProductStockDto> prod_option(String prod_no) {
		// 상품 상세 옵션
		return annoInter.prod_option(prod_no);
	}
	
}
