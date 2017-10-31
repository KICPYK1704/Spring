package com.team4.finalproj.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderCompleteController {
	@RequestMapping("ordercomplete")
	public String orderProcess(){
		return "order/ordercomplete";
	}
}
