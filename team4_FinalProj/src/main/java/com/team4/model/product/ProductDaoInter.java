package com.team4.model.product;

import java.util.List;

public interface ProductDaoInter {

	public List<ProductDto> prod_listAll();	//��ǰ ����Ʈ ��ü
	
	public List<ProductDto> prod_listC1(String prod_classf2);	//��ǰ ����Ʈ �Ƿ� ī�װ�
	
	public List<ProductDto> prod_listC2(String prod_classf1, String prod_classf2);	//��ǰ ����Ʈ �Ƿ� ī�װ��� ���� ī�װ�
}
