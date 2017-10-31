package com.team4.finalproj.order;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.member.MemberDto;
import com.team4.model.order.OrderDaoInter;
import com.team4.model.order.OrderDto;
import com.team4.model.order.PreOrderDto;

@Controller
public class OrderProcessController {
	@Autowired
	private OrderDaoInter daoInter;
	@RequestMapping(value="orderprocess", method=RequestMethod.GET)
	public ModelAndView orderProcess(HttpServletRequest request, HttpServletResponse response, HttpSession session){
		ModelAndView view = new ModelAndView("order/orderprocess");
		
		// 상품 상세에서 바로 결제하기 눌렀을 때
		//String flag = request.getParameter("flag");
		String flag = "directbuy";
		//String stock_no = request.getParameter("stock_no");
		String stock_no = "3";
		//String q = request.getParameter("quantity");
		
		// 장바구니에서 결제하기 눌렀을 때 (List<ProductBean>으로 넘어옴)
		// String flag = "cartbuy";
		//List<ProductBean> list = request.getAttribute("list");

		request.setAttribute("flag", flag);
		session.setAttribute("login_mem", "suik");
		
		// 주문할 내역 리스트
		PreOrderDto dto = new PreOrderDto();
		List<PreOrderDto> plist = new ArrayList<PreOrderDto>();
		if(flag.equals("directbuy")){
			dto = daoInter.selectOneProduct(stock_no);
			dto.setOrder_quantity(Integer.parseInt(request.getParameter("quantity")));
			view.addObject("pdto", dto);
		} else if(flag.equals("cartbuy")){
			plist = daoInter.selectCartProduct((String)session.getAttribute("login_mem"));
			view.addObject("plist", plist);
		}
		
		// 주문자 정보
		MemberDto dto1 = daoInter.selectMemberInfo((String)session.getAttribute("login_mem"));
		view.addObject("meminfo", dto1);	
		return view;
	}
	
	@RequestMapping(value="orderprocess", method=RequestMethod.POST)
	public ModelAndView ordercomplete(HttpServletRequest request, HttpServletResponse response, HttpSession session, OrderBean bean){
		ModelAndView view = new ModelAndView("order/ordercomplete");
		
		return view;
	}
}
