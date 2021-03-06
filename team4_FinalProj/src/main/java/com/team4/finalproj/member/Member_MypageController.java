package com.team4.finalproj.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.member.MemberDaoInter;
import com.team4.model.member.MemberDto;

@Controller
public class Member_MypageController {
	@Autowired
	private MemberDaoInter memberDaoInter;
	
	@RequestMapping(value="membermypage", method=RequestMethod.GET)
	//아이디받고  나머지자료들도 찾아서 마이페이지폼으로들고가야지여기서
	
	public ModelAndView	my(HttpSession session){
		
		
		MemberDto dto = memberDaoInter.getMemberDataAll((String)session.getAttribute("login_mem"));
		
		if(dto != null){
			return new ModelAndView("member/membermypage", "dto", dto);	
		}else{
			return new ModelAndView("redirect:error.jsp");
		}
	}
		
	
	
	@RequestMapping(value="membermypage", method=RequestMethod.POST)
	public String submit(MemberBean bean){
		System.out.println(bean.getMem_id());
		boolean b = memberDaoInter.updateMember(bean);
		
		if(b){
			return "redirect:membermypage";			
		}else{
			return "redirect:error.jsp";
		}
	}
	
}
