package com.team4.finalproj.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

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
	public String submit3(HttpSession session, MemberBean bean){
		boolean b = memberDaoInter.loginMember(bean);		
		
		if(b){
			//session으로 id값 저장해주기 ..환영페이지로 아이디값들고가게 저장
			session.setAttribute("login_mem", bean.getMem_id());

			return "congratulation";			
		}else{
			return "redirect:/loginerror.jsp";
		}
	}	
	
	
}
