package com.team4.finalproj.FAQ;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team4.model.FAQ.FAQDaoInter;

@Controller
public class FAQController {
	@Autowired
	private FAQDaoInter daoInter;
	
	@RequestMapping("FAQ")
	public String FAQ(){
		return "FAQ/FAQ_list";
	}
}
