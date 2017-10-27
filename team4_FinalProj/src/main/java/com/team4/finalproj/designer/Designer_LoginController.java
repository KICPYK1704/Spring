package com.team4.finalproj.designer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team4.model.designer.DesignerDaoInter;

@Controller
public class Designer_LoginController {
	@Autowired
	private DesignerDaoInter designerDaoInter;
	

	@RequestMapping(value="designerlogin", method=RequestMethod.GET)
	public String insert4(){
		return "designer/designerlogin";
	}
	
	
	
	
	@RequestMapping(value="designerlogin", method=RequestMethod.POST)
	public String submit4(DesignerBean bean){
		boolean b = designerDaoInter.loginDesigner(bean);		
	
		if(b){
			return "congratulation";			
		}else{
			return "redirect:/loginerror.jsp";
		}
	}	
}
