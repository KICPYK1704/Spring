package com.team4.model.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao implements ProductDaoInter {
	
	@Autowired
	private ProductAnnoInter annoInter;
	
	@Override
	public List<ProductDto> prod_listAll() {
		
		return annoInter.prod_listAll();
	}
	
	@Override
	public List<ProductDto> prod_listC1(String prod_classf2) {
		
		return annoInter.prod_listC1(prod_classf2);
	}
	
	@Override
	public List<ProductDto> prod_listC2(String prod_classf1, String prod_classf2) {
		
		return annoInter.prod_listC2(prod_classf1, prod_classf2);
	}
	
}
