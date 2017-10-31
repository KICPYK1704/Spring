package com.team4.model.cart;

import java.util.List;



public interface CartDaoInter {

	public int cartIn(CartBean bean);	//카트 담기
	
	public int cartNewCount();	//카트 새 번호
	
	public List<CartDto> CartList(String member_id);	//카트 목록
	
	public int cartCount();	//카트 총수량
	
	public int cartDelete(String cart_no);	//카트 삭제
}
