package com.team4.finalproj.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team4.model.admin.AdminDaoInter;

@Controller
public class Admin_LoginController {
	@Autowired
	private AdminDaoInter adminDaoInter;
	
	@RequestMapping(value="adminlogin", method=RequestMethod.GET)
	public String insert2(){
		return "admin/adminlogin";
	}
	
	@RequestMapping(value="adminlogin", method=RequestMethod.POST)
	public String submit2(HttpSession session, AdminBean bean){
		boolean b = adminDaoInter.loginAdmin(bean);		
	
		if(b){
			session.setAttribute("login_", bean.getMem_id());
			return "congratulation";			
		}else{
			return "redirect:/loginerror.jsp";
		}
	}	
}
