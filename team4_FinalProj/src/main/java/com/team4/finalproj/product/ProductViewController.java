package com.team4.finalproj.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.product.ProductDao;
import com.team4.model.product.ProductDto;
import com.team4.model.product.ProductPicDto;
import com.team4.model.product.ProductStockDto;

@Controller
public class ProductViewController {

	@Autowired
	private ProductDao productDao;
	
	@RequestMapping(value="ProductView", method=RequestMethod.GET)
	public ModelAndView View(@RequestParam(value="prod_classf1", defaultValue="all") String prod_classf1, 
							@RequestParam(value="prod_classf2", defaultValue="all") String prod_classf2, 
							@RequestParam(value="prod_no") String prod_no){
		
		ModelAndView view = new ModelAndView("product/productView");
			ProductDto dto = productDao.prod_view(prod_no);
			List<ProductPicDto> Ilist = productDao.prod_imageView(prod_no);
			List<ProductStockDto> Olist = productDao.prod_option(prod_no);
			
				System.out.println(prod_no);
				view.addObject("dto", dto); 
				view.addObject("Ilist", Ilist);
				view.addObject("Olist", Olist);
				view.addObject("prod_classf1", prod_classf1);
				view.addObject("prod_classf2", prod_classf2);
				
		return view;
	}
}

