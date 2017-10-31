package com.team4.finalproj.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team4.model.member.MemberDaoInter;

@Controller
public class Member_RegisterController {
	@Autowired
	private MemberDaoInter memberDaoInter  ;
	
	@RequestMapping(value="memberregister", method=RequestMethod.GET)
	public String insert(){
		return "member/memberregister";
	}
	
	
	@RequestMapping(value="memberregister", method=RequestMethod.POST)
	public String submit(MemberBean bean){
		boolean b = memberDaoInter.insertData(bean);		
	
		if(b){
			return "congratulation";			
		}else{
			return "redirect:/error.jsp";
		}
	}	
	
}
