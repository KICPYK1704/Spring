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
		List<OrderDto> list = annoInter.selectOrderAll(mem_id);
		for(OrderDto o : list){
			List<String> imsi = annoInter.getProductPic(o.getProd_no());
			if(imsi != null) o.setPic_url(imsi.get(0));
		}
		return list;
	}
	
	@Override
	public PreOrderDto selectOneProduct(String stock_no) {
		System.out.println(stock_no);
		PreOrderDto dto = annoInter.selectOneProduct(stock_no);
		List<String> imsi = annoInter.getProductPic(dto.getProd_no());
		if(imsi != null) dto.setPic_url(imsi.get(0));
		return dto;
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
