package com.team4.finalproj.order;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.order.OrderDaoInter;
import com.team4.model.order.OrderDto;

@Controller
public class OrderlistController {
	@Autowired
	private OrderDaoInter daoInter;
	@RequestMapping("orderlist")
	public ModelAndView order(HttpServletRequest request){
		request.setAttribute("login_mem", "suik");
		List<OrderDto> imsi = daoInter.selectOrderAll("suik");
		List<OrderDto> list = new ArrayList<OrderDto>();
		List<OrderDto> otherlist = new ArrayList<OrderDto>();
		for(OrderDto o : imsi){
			if(o.getOrder_state().equals("반품 접수") || o.getOrder_state().equals("반품 회수중") || o.getOrder_state().equals("교환 접수") || o.getOrder_state().equals("교환 배송중") || o.getOrder_state().equals("반품 완료") || o.getOrder_state().equals("교환 완료")){
				otherlist.add(o);
			} else list.add(o);
		}
		ModelAndView view = new ModelAndView("order/orderlist");
		view.addObject("list", list);
		view.addObject("otherlist", otherlist);
		return view;
	}
}
