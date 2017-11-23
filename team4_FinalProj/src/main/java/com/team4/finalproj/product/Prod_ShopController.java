package com.team4.finalproj.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.product.ProductDaoInter;

@Controller
public class Prod_ShopController {
	@Autowired
	private ProductDaoInter daoInter;
	
	@RequestMapping(value="shop_main", method=RequestMethod.GET)
	public ModelAndView shop_mainpage(){
		return new ModelAndView("product/shopMain");
	}
	
}