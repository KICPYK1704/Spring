package com.team4.model.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao implements ProductDaoInter {
	
	@Autowired
	private ProductAnnoInter annoInter;
	
	/* ��ǰ ����Ʈ */
	@Override
	public List<ProductDto> prod_listAll() {
		//��ǰ ����Ʈ ��ü
		return annoInter.prod_listAll();
	}
	
	@Override
	public List<ProductDto> prod_listC1(String prod_classf2) {
		//��ǰ ����Ʈ �Ƿ� ī�װ�
		return annoInter.prod_listC1(prod_classf2);
	}
	
	@Override
	public List<ProductDto> prod_listC2(String prod_classf1, String prod_classf2) {
		//��ǰ ����Ʈ �Ƿ� ī�װ��� ���� ī�װ�
		return annoInter.prod_listC2(prod_classf1, prod_classf2);
	}
	
	/* ��ǰ �󼼺��� */
	@Override
	public ProductDto prod_view(String prod_no) {
		// ��ǰ �� ����
		return annoInter.prod_view(prod_no);
	}
	
	@Override
	public List<ProductPicDto> prod_imageView(String prod_no) {
		// ��ǰ �� �̹��� ���
		return annoInter.prod_imageView(prod_no);
	}
	
	@Override
	public List<ProductStockDto> prod_option(String prod_no) {
		// ��ǰ �� �ɼ�
		return annoInter.prod_option(prod_no);
	}
	
}
