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
		// īƮ ���
		return annoInter.cartIn(bean);
	}
	
	@Override
	public int cartNewCount() {
		// īƮ ����ȣ
		int count = annoInter.cartCount();
		int NewCount = count + 1;
		
		return NewCount;
	}
	
	@Override
	public List<CartDto> CartList(String member_id) {
		// īƮ ���
		return annoInter.CartList(member_id);
	}
	
	@Override
	public int cartCount() {
		// īƮ �� ����
		return annoInter.cartCount();
	}
	
	@Override
	public int cartDelete(String cart_no) {
		// īƮ ����
		return annoInter.cartDelete(cart_no);
	}
}
