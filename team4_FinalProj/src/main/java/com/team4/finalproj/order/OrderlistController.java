package com.team4.finalproj.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderlistController {
	@RequestMapping("orderlist")
	public String order(){
		return "order/orderlist";
	}
}