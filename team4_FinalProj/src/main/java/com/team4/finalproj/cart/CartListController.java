package com.team4.finalproj.cart;


import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.cart.CartDao;
import com.team4.model.cart.CartDto;

@Controller
public class CartListController {

	@Autowired
	private CartDao cartDao;
	
	@RequestMapping("Cart")
	public ModelAndView listShow(HttpServletResponse response, HttpSession session){
		
				ModelAndView view = new ModelAndView("cart/cart");
				
				try {
					//String id = (String)session.getAttribute("login_mem");
					//boolean b = (Boolean)session.getAttribute("login_mem");
//					System.out.println(b);
					//if(b){
						List<CartDto> list = cartDao.CartList("youngpil");
						int count = cartDao.cartCount();
						view.addObject("list", list);
						view.addObject("count", count);
						
//					}else{
//						response.setContentType("text/html; charset=UTF-8");
//						PrintWriter out = response.getWriter();
//						out.println("<script>alert('로그인이 필요합니다.')</script>");
//						out.println("<script>location.href=''</script>");
//						out.flush();
//					}
					
				} catch (Exception e) {
					// TODO: handle exception
				}
			
				return view;
	}
}
