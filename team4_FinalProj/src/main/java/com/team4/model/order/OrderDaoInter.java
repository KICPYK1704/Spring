package com.team4.model.order;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.team4.finalproj.order.OrderBean;
import com.team4.model.member.MemberDto;

public interface OrderDaoInter {
	List<OrderDto> selectOrderAll(String mem_id);
	PreOrderDto selectOneProduct(String stock_no);
	List<PreOrderDto> selectCartProduct(String mem_id);
	MemberDto selectMemberInfo(String mem_id);
	boolean insertOrder(OrderBean bean);
	String getEmail(String mem_id);
}
