package com.team4.finalproj.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.product.ProductDaoInter;

@Controller
public class Prod_ShopStController {
	@Autowired
	private ProductDaoInter daoInter;
	
	@RequestMapping(value="shoppingStreet", method=RequestMethod.GET)
	public ModelAndView shoppingStreet(){
		ModelAndView mv = new ModelAndView("product/shopStMain");
		mv.addObject("shopst_list", daoInter.getShopSt());
		return mv;
	}
}
