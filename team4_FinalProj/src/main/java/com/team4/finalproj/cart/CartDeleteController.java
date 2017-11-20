package com.team4.finalproj.cart;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team4.model.cart.CartDao;

@Controller
public class CartDeleteController {

	@Autowired
	private CartDao cartDao;
	
	@RequestMapping("CartDelete")
	public void listShow(@Param("cart_no")String cart_no, HttpServletResponse response, HttpSession session){
		
				int b =	cartDao.cartDelete(cart_no);
				try {
						response.setContentType("text/html; charset=UTF-8");
						PrintWriter out = response.getWriter();
						if(b>0){
							out.println("<script>alert('삭제되었습니다.')</script>");
							out.println("<script>location.href='Cart'</script>");
							out.flush();
						}else{
							out.println("<script>alert('오류')</script>");
							out.println("<script>location.href='Cart'</script>");
							out.flush();
						}
						
				} catch (Exception e) {
						// TODO: handle exception
				}
		
	}
}
