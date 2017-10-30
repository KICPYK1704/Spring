package com.team4.model.product;

import java.util.List;

import com.team4.finalproj.product.ProductBean;
import com.team4.finalproj.product.ProductPictureBean;
import com.team4.finalproj.product.StockBean;

public interface ProductDaoInter {
	String getNewNo();
	boolean insertProductPic(ProductPictureBean productPictureBean);
	boolean insertProduct(ProductBean productBean);
	List<ProductMgtDto> getProdMgtList(String des_id);
	List<StockDto> getStockList(String prod_no);
	boolean insertStock(StockBean stockBean);
}
