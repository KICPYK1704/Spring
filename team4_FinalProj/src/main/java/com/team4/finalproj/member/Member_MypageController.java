package com.team4.finalproj.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import com.team4.model.member.MemberDaoInter;

@Controller
public class Member_MypageController {
	@Autowired
	private MemberDaoInter memberDaoInter;
	
	@RequestMapping(value="membermypage", method=RequestMethod.GET)
	public String  myinformation(){
		return "member/membermypage";
	}
	
	
}
