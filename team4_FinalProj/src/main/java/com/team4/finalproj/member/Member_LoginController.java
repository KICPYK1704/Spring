package com.team4.finalproj.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team4.model.member.MemberDaoInter;

@Controller
public class Member_LoginController {
	@Autowired
	private MemberDaoInter memberDaoInter;
	
	@RequestMapping(value="memberlogin", method=RequestMethod.GET)
	public String insert3(){
		return "member/memberlogin";
	}
	
	
	@RequestMapping(value="memberlogin", method=RequestMethod.POST)
	public String submit3(MemberBean bean){
		boolean b = memberDaoInter.loginMember(bean);		
	
		if(b){
			return "congratulation";			
		}else{
			return "redirect:/loginerror.jsp";
		}
	}	
	
	
}
