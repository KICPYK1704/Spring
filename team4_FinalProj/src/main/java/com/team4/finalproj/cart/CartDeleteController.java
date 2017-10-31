package com.team4.finalproj.cart;


import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.cart.CartDao;
import com.team4.model.cart.CartDto;

@Controller
public class CartDeleteController {

	@Autowired
	private CartDao cartDao;
	
	@RequestMapping("CartDelete")
	public void listShow(@Param("cart_no")String cart_no, HttpServletResponse response, HttpSession session){
		
				ModelAndView view = new ModelAndView("cart/cart");
				
				int b =	cartDao.cartDelete(cart_no);
				try {
						response.setContentType("text/html; charset=UTF-8");
						PrintWriter out = response.getWriter();
//						if(b>0){
//							out.println("<script>alert('삭제되었습니다.')</script>");
//							out.println("<script>location.href='ProductView?prod_no=" + prod_no + "&prod_classf1=" + prod_classf1 + "&prod_classf2=" + prod_classf2 + "'</script>");
//							out.flush();
//						}else{
//							out.println("<script>alert('오류')</script>");
//							out.println("<script>location.href='ProductView?prod_no=" + prod_no + "&prod_classf1=" + prod_classf1 + "&prod_classf2=" + prod_classf2 + "'</script>");
//							out.flush();
//						}
						
				} catch (Exception e) {
						// TODO: handle exception
				}
		
				//return view;
	}
}
