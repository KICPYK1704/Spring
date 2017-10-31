package com.team4.finalproj.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.product.ProductDao;
import com.team4.model.product.ProductDto;

@Controller
public class ProductListController {

	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("ProductList")
	public ModelAndView listShow(@RequestParam(value="prod_classf1", defaultValue="all") String prod_classf1, @RequestParam(value="prod_classf2", defaultValue="all") String prod_classf2){
		
		ModelAndView view = new ModelAndView("product/productList");
		if(prod_classf2.equals("all")){
			List<ProductDto> list = productDao.prod_listAll();
			view.addObject("list", list);
			view.addObject("prod_classf1", prod_classf1);
			view.addObject("prod_classf2", prod_classf2);
		}else{
			if(prod_classf1.equals("all")){
				List<ProductDto> list = productDao.prod_listC1(prod_classf2);
				view.addObject("list", list);
				view.addObject("prod_classf1", prod_classf1);
				view.addObject("prod_classf2", prod_classf2);
				
			}else{
				List<ProductDto> list = productDao.prod_listC2(prod_classf1, prod_classf2);
				view.addObject("list", list);
				view.addObject("prod_classf1", prod_classf1);
				view.addObject("prod_classf2", prod_classf2);
				
			}
			
		}
		return view;
	}
}
