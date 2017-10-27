package com.team4.finalproj.order;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.member.MemberDto;
import com.team4.model.order.OrderDaoInter;
import com.team4.model.order.PreOrderDto;

@Controller
public class OrderProcessController {
	@Autowired
	private OrderDaoInter daoInter;
	@RequestMapping(value="orderprocess", method=RequestMethod.GET)
	public ModelAndView orderProcess(HttpServletRequest request, HttpServletResponse response){
		ModelAndView view = new ModelAndView("order/orderprocess");
		
		// 주문할 내역 리스트
		List<PreOrderDto> plist = new ArrayList<PreOrderDto>();
		if(request.getAttribute("flag").equals("directbuy")){
			plist = daoInter.selectOneProduct((String)request.getAttribute("stock_no"));
		} else if(request.getAttribute("flag").equals("cartbuy")){
			plist = daoInter.selectCartProduct((String)request.getAttribute("mem_id"));
		}
		view.addObject("plist", plist);
		
		// 주문자 정보
		MemberDto dto = daoInter.selectMemberInfo((String)request.getAttribute("mem_id"));
		view.addObject("meminfo", dto);	
		return view;
	}
}
