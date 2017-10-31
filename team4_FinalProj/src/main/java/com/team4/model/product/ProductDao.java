package com.team4.model.product;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.finalproj.product.ProductBean;
import com.team4.finalproj.product.ProductPictureBean;
import com.team4.finalproj.product.StockBean;

@Repository
public class ProductDao implements ProductDaoInter {
	@Autowired
	private ProductAnnoInter annoInter;
	
	@Override
	public String getNewNo() {
		return String.valueOf((Integer.valueOf(annoInter.getNewNo()) + 1));
	}
	
	@Override
	public List<ProductMgtDto> getProdMgtList(String des_id) {
		return annoInter.getProdMgtList(des_id);
	}

	@Override
	public List<StockDto> getStockList(String prod_no) {
		return annoInter.getStockList(prod_no);
	}
	
	@Override
	public boolean insertProductPic(ProductPictureBean productPictureBean) {
		boolean b = false;
		try {
			productPictureBean.setPic_no(String.valueOf((Integer.valueOf(annoInter.getNewPicNo()) + 1)));
			boolean re = annoInter.insertProductPic(productPictureBean);
			if(re) b = true;
		} catch (Exception e) {
			System.out.println("insertProductPic err : " + e);
		}
		return b;
	}
	
	@Override
	public boolean insertProduct(ProductBean productBean) {
		boolean b = false;
		try {
			boolean re = annoInter.insertProduct(productBean);
			if(re) b = true;
		} catch (Exception e) {
			System.out.println("insertProduct err : " + e);
		}
		return b;
	}
	
	@Override
	public boolean insertStock(StockBean stockBean) {
		boolean b = false;
		try {
			stockBean.setStock_no(String.valueOf((Integer.valueOf(annoInter.getNewStockNo()) + 1)));
			boolean re = annoInter.insertStock(stockBean);
			if(re) b = true;
		} catch (Exception e) {
			System.out.println("insertStock err : " + e);
		}
		return b;
	}
	
	@Override
	public List<ShopStDto> getShopSt() {
		List<ShopStDto> list = annoInter.getShopSt();
		for(int i = 0; i < list.size(); i++){
			String[] pic = annoInter.getLatestAddition(list.get(i).getDes_id());
			list.get(i).setPic(pic);
		}
		return list;
	}
	
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
