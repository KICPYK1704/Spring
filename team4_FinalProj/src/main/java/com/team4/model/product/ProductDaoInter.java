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
	List<ShopStDto> getShopSt();

	public List<ProductDto> prod_listAll();	//��ǰ ����Ʈ ��ü
	
	public List<ProductDto> prod_listC1(String prod_classf2);	//��ǰ ����Ʈ �Ƿ� ī�װ�
	
	public List<ProductDto> prod_listC2(String prod_classf1, String prod_classf2);	//��ǰ ����Ʈ �Ƿ� ī�װ��� ���� ī�װ�
	
	public ProductDto prod_view(String prod_no);	//��ǰ �󼼺���
	
	public List<ProductPicDto> prod_imageView(String prod_no);	//��ǰ �̹��� �󼼺���
	
	public List<ProductStockDto> prod_option(String prod_no);	//��ǰ �ɼ�
}
