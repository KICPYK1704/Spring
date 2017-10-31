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
}
