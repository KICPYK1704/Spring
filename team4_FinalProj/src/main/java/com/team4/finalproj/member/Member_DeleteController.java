package com.team4.finalproj.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.team4.model.member.MemberDaoInter;

@Controller
public class Member_DeleteController {
	@Autowired 
	private MemberDaoInter memberDaoInter;
	
	@RequestMapping(value="deleteMember")
	public String del(@RequestParam("mem_id")String mem_id){
		if(memberDaoInter.deleteMember(mem_id)){
			return "redirect:/congratulation";
		}else{
			return "redirect:/error.jsp";
		}
	}
}
/*
@Autowired
private MemDaoInter daoInter;

@RequestMapping("delete")
public String del(@RequestParam("num")String num){
	if(daoInter.deleteData(num)){
		return "redirect:/list";
	}else{
		return "redirect:/error.jsp";
	}
}
*/