package com.team4.finalproj.designer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ServerProperties.Session;
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
	public String submit4(HttpSession session, DesignerBean bean){
		boolean b = designerDaoInter.loginDesigner(bean);		
	
		if(b){
			session.setAttribute("login_des", bean.getDes_id());
			return "congratulation";			
		}else{
			return "redirect:/loginerror.jsp";
		}
	}	
}
