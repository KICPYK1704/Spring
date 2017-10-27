package com.team4.model.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.model.member.MemberDto;

@Repository
public class OrderDao implements OrderDaoInter {
	@Autowired
	private OrderAnnoInter annoInter;
	
	@Override
	public List<OrderDto> selectOrderAll(String mem_id) {
		return annoInter.selectOrderAll(mem_id);
	}
	
	@Override
	public List<PreOrderDto> selectOneProduct(String stock_no) {
		return annoInter.selectOneProduct(stock_no);
	}
	
	@Override
	public List<PreOrderDto> selectCartProduct(String mem_id) {
		return annoInter.selectCartProduct(mem_id);
	}
	
	@Override
	public MemberDto selectMemberInfo(String mem_id) {
		return annoInter.selectMemberInfo(mem_id);
	}
}
