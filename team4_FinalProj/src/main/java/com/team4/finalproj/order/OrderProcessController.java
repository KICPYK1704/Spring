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
		
		// �긽�뭹 �긽�꽭�뿉�꽌 諛붾줈 寃곗젣�븯湲� �닃���쓣 �븣
		String flag = request.getParameter("flag");
		String stock_no = request.getParameter("stock_no");
		String q = request.getParameter("quantity");
		
		//System.out.println("aaaa: " + flag + stock_no + q);
		// �옣諛붽뎄�땲�뿉�꽌 寃곗젣�븯湲� �닃���쓣 �븣 (List<ProductBean>�쑝濡� �꽆�뼱�샂)

		request.setAttribute("flag", flag);
		
		// 二쇰Ц�븷 �궡�뿭 由ъ뒪�듃
		PreOrderDto dto = new PreOrderDto();
		List<PreOrderDto> plist = new ArrayList<PreOrderDto>();
		if(flag.equals("directbuy")){
			dto = daoInter.selectOneProduct(stock_no);
			dto.setOrder_quantity(Integer.parseInt(q));
			view.addObject("pdto", dto);
		} else if(flag.equals("cartbuy")){
			plist = daoInter.selectCartProduct((String)session.getAttribute("login_mem"));
			view.addObject("plist", plist);
		}
		
		// 二쇰Ц�옄 �젙蹂�
		MemberDto dto1 = daoInter.selectMemberInfo((String)session.getAttribute("login_mem"));
		view.addObject("meminfo", dto1);	
		System.out.println("sadf" + dto1.getMem_id());
		return view;
	}
	
	@RequestMapping(value="orderprocess", method=RequestMethod.POST)
	public ModelAndView ordercomplete(HttpServletRequest request, HttpServletResponse response, HttpSession session, OrderBean bean){
		ModelAndView view = null;
		if(daoInter.insertOrder(bean)){
			view = new ModelAndView("ordercomplete");
			view.addObject("bean", bean);
		} else view = new ModelAndView("redirect:error.jsp");
		return view;
	}
}
