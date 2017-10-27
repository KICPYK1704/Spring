package com.team4.model.order;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.team4.model.member.MemberDto;

public interface OrderAnnoInter {
	@Select("select * from orderlist where order_memid = #{mem_id}")
	List<OrderDto> selectOrderAll(@Param("mem_id")String mem_id);
	
	@Select("select * from product inner join stock on stock_prodno = prod_no"
			+ " inner join productpicture on pic_prodno = prod_no where stock_no = #{stock_no}")
	List<PreOrderDto> selectOneProduct(@Param("stock_no")String stock_no);
	
	@Select("select * from product inner join cart on cart_product = prod_no inner join stock on stock_prodno = prod_no"
			+ " inner join productpicture on pic_prodno = prod_no where cart_buyer = #{mem_id}")
	List<PreOrderDto> selectCartProduct(@Param("mem_id")String mem_id);
	
	@Select("select * from member where mem_id = #{mem_id}")
	MemberDto selectMemberInfo(@Param("mem_id")String mem_id);
}
