package com.team4.finalproj.product;

import java.net.URLEncoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.product.ProductDaoInter;

@Controller
public class Prod_StockInsertController {
	@Autowired
	private ProductDaoInter daoInter;
	
	@RequestMapping(value="stock_insert", method=RequestMethod.GET)
	public ModelAndView stock_insertPage(@RequestParam("prod_no")String prod_no, @RequestParam("prod_name")String prod_name){
		ModelAndView mv = new ModelAndView("product/product_stockadd", "stock_list", daoInter.getStockList(prod_no));
		mv.addObject("prod_no", prod_no);
		mv.addObject("prod_name", prod_name);
		return mv;
	}
	
	@RequestMapping(value="stock_insert", method=RequestMethod.POST)
	public String stock_insert(StockBean stockBean){
		try {
			String prod_name = URLEncoder.encode(stockBean.getProd_name(), "utf-8");
			boolean b = daoInter.insertStock(stockBean);
			if(b){
				return "redirect:/stock_insert?prod_no=" + stockBean.getStock_prodno() + "&prod_name=" + prod_name;
			}else{
				return "redirect:/error.jsp";
			}
		} catch (Exception e) {
			System.out.println("인코딩 에러: " + e);
			return "redirect:/error.jsp";
		}
	}
}
