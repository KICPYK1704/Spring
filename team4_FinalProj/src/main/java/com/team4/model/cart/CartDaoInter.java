package com.team4.model.cart;

import java.util.List;



public interface CartDaoInter {

	public int cartIn(CartBean bean);	//īƮ ���
	
	public int cartNewCount();	//īƮ �� ��ȣ
	
	public List<CartDto> CartList(String member_id);	//īƮ ���
	
	public int cartCount();	//īƮ �Ѽ���
	
	public int cartDelete(String cart_no);	//īƮ ����
}
