package com.team4.finalproj.product;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.product.ProductDaoInter;

@Controller
public class Prod_ProdMgtController {
	@Autowired
	private ProductDaoInter daoInter;
	
	@RequestMapping(value="product_Mgt", method=RequestMethod.GET)
	public ModelAndView prod_Mgt(HttpServletRequest request){
		//String des_id = (String)request.getSession().getAttribute("login_des");
		String des_id = "jinho"; //임시사용
		
		ModelAndView mv = new ModelAndView("product/product_Mgt");
		mv.addObject("des_id", des_id);
		mv.addObject("prod_list", daoInter.getProdMgtList(des_id));
		return mv;
	}
}
