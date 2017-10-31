package com.team4.model.cart;


import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface CartAnnoInter {

	@Insert("insert into cart values(#{cart_no},#{cart_stock},'youngpil',#{cart_quantity},now())")
	public int cartIn(CartBean bean);	//카트 담기
	
	@Select("select count(*) from cart")
	public int cartCount();	//카트 총수량
	
	@Select("select cart_no, (select pic_url from productpicture where pic_no = (select min(pic_no) from productpicture where pic_prodno = prod_no))as pic_url, "
			+ "prod_name, des_name, stock_color, stock_size, cart_quantity, prod_price, cart_regdate "
			+ "from cart inner join stock on cart_stock=stock_no inner join product on stock_prodno=prod_no inner join designer on prod_designerid=des_id "
			+ "inner join member on cart_buyer=mem_id where mem_id = #{mem_id} order by cart_no desc")
	public List<CartDto> CartList(@Param("mem_id")String member_id);	//카트 목록
	
	@Select("delete from cart where cart_no=#{cart_no}")
	public int cartDelete(@Param("cart_no")String cart_no);	//카트 삭제
}
