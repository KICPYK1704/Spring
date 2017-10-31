package com.team4.model.order;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.team4.model.member.MemberDto;

public interface OrderAnnoInter {
	@Select("select order_regdate, order_no, prod_name, stock_size, stock_color, order_quantity, order_pay, order_state, prod_no, prod_name"
			+ " from stock inner join orderlist on order_stockno = stock_no inner join product on stock_prodno = prod_no"
			+ " where order_memid = #{mem_id}")
	List<OrderDto> selectOrderAll(@Param("mem_id")String mem_id);
	
	@Select("select pic_url from productpicture where pic_prodno = #{prod_no} order by pic_no asc")
	List<String> getProductPic(@Param("prod_no")String prod_no);
	
	@Select("select * from product inner join stock on stock_prodno = prod_no"
			+ " where stock_no = #{stock_no}")
	PreOrderDto selectOneProduct(@Param("stock_no")String stock_no);
	
	@Select("select * from product inner join cart on cart_product = prod_no inner join stock on stock_prodno = prod_no"
			+ " inner join productpicture on pic_prodno = prod_no where cart_buyer = #{mem_id}")
	List<PreOrderDto> selectCartProduct(@Param("mem_id")String mem_id);
	
	@Select("select * from member where mem_id = #{mem_id}")
	MemberDto selectMemberInfo(@Param("mem_id")String mem_id);
}
