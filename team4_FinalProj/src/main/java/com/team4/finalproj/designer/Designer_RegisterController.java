package com.team4.finalproj.designer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team4.model.designer.DesignerDaoInter;
import com.team4.model.member.MemberDaoInter;

@Controller
public class Designer_RegisterController {
	@Autowired
	private DesignerDaoInter designerDaoInter;
	
	
	
	@RequestMapping(value="designerregister", method=RequestMethod.GET)
	public String insert1(){
		return "designer/designerregister";
	}
	
	
	
	
	
	@RequestMapping(value="designerregister", method=RequestMethod.POST)
	public String submit1(DesignerBean bean){
		boolean b = designerDaoInter.insertDesigner(bean);		
	
		if(b){
			return "redirect:/memberlogin";			
		}else{
			return "redirect:/error.jsp";
		}
	}	
}
