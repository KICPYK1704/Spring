package com.team4.model.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.finalproj.product.ProductBean;
import com.team4.finalproj.product.ProductPictureBean;

@Repository
public class ProductDao implements ProductDaoInter {
	@Autowired
	private ProductAnnoInter annoInter;
	
	@Override
	public String getNewNo() {
		return String.valueOf((Integer.valueOf(annoInter.getNewNo()) + 1));
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
}
