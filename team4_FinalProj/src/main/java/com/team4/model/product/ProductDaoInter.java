package com.team4.model.product;

import com.team4.finalproj.product.ProductBean;
import com.team4.finalproj.product.ProductPictureBean;

public interface ProductDaoInter {
	String getNewNo();
	boolean insertProductPic(ProductPictureBean productPictureBean);
	boolean insertProduct(ProductBean productBean);
}
