package com.team4.model.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDao implements CartDaoInter {
	@Autowired
	private CartAnnoInter annoInter;
	
	@Override
	public int cartIn(CartBean bean) {
		int count = cartNewCount();
		String cart_no = Integer.toString(count);
		bean.setCart_no(cart_no);
		// 카트 담기
		return annoInter.cartIn(bean);
	}
	
	@Override
	public int cartNewCount() {
		// 카트 새번호
		int count = annoInter.cartCount();
		int NewCount = count + 1;
		
		return NewCount;
	}
	
	@Override
	public List<CartDto> CartList(String member_id) {
		// 카트 목록
		return annoInter.CartList(member_id);
	}
	
	@Override
	public int cartCount() {
		// 카트 총 수량
		return annoInter.cartCount();
	}
	
	@Override
	public int cartDelete(String cart_no) {
		// 카트 삭제
		return annoInter.cartDelete(cart_no);
	}
}
