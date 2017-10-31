package com.team4.finalproj.cart;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team4.model.cart.CartBean;
import com.team4.model.cart.CartDao;

@Controller
public class CartInsertController {

	@Autowired
	private CartDao cartDao;
	
	@RequestMapping("CartInsert")
	@ResponseBody
	public void listShow(@RequestParam(value="stock_no") String stock_no,
								@RequestParam(value="prod_no") String prod_no,
								@RequestParam(value="prod_classf1", defaultValue="all") String prod_classf1, 
								@RequestParam(value="prod_classf2", defaultValue="all") String prod_classf2, 
								@RequestParam(value="quantity") String quantity,
								HttpServletResponse response){
		
				System.out.println(prod_classf2);
				CartBean bean = new CartBean();
				bean.setCart_stock(stock_no);
				bean.setCart_quantity(quantity);
				int b = cartDao.cartIn(bean);
				try {
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					if(b>0){
						out.println("<script>alert('카트에 담았습니다.')</script>");
						out.println("<script>location.href='ProductView?prod_no=" + prod_no + "&prod_classf1=" + prod_classf1 + "&prod_classf2=" + prod_classf2 + "'</script>");
						out.flush();
					}else{
						out.println("<script>alert('카트에 담지 못했습니다')</script>");
						out.println("<script>location.href='ProductView?prod_no=" + prod_no + "&prod_classf1=" + prod_classf1 + "&prod_classf2=" + prod_classf2 + "'</script>");
						out.flush();
					}
					
				} catch (Exception e) {
					// TODO: handle exception
				}
			
	}
}
