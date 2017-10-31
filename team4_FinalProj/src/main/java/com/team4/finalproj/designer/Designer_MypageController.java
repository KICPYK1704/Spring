package com.team4.finalproj.designer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.team4.finalproj.member.MemberBean;
import com.team4.model.designer.DesignerDaoInter;
import com.team4.model.designer.DesignerDto;
import com.team4.model.member.MemberDaoInter;
import com.team4.model.member.MemberDto;

@Controller
public class Designer_MypageController {
	
	@Autowired
	private DesignerDaoInter designerDaoInter;
	
	@RequestMapping(value="designermypage", method=RequestMethod.GET)
	//아이디받고  나머지자료들도 찾아서 마이페이지폼으로들고가야지여기서
	
	public ModelAndView	my(HttpSession session){
		
		
		DesignerDto dto = designerDaoInter.getDesignerDataAll((String)session.getAttribute("login_des"));
		
		if(dto != null){
			return new ModelAndView("designer/designermypage", "dto", dto);	
		}else{
			return new ModelAndView("redirect:error.jsp");
		}
	}
	@RequestMapping(value="designermypage", method=RequestMethod.POST)
	public String submit(DesignerBean bean){
		System.out.println(bean.getDes_id());
		boolean b = designerDaoInter.updateDesigner(bean);
		
		if(b){
			return "redirect:designermypage";			
		}else{
			return "redirect:error.jsp";
		}
	}	
	
}
