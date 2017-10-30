package com.team4.finalproj.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.team4.model.product.ProductDaoInter;

@Controller
public class Prod_ShopController {
	@Autowired
	private ProductDaoInter daoInter;
	
	
}
