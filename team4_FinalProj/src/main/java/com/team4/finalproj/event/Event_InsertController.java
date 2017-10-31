package com.team4.finalproj.event;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.event.EventDaoInter;
import com.team4.model.product.PFileValidator;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

@Controller
public class Event_InsertController {
	
	@Autowired
	private EventDaoInter daoInter;
	
	@Autowired
	private PFileValidator fileValidator;
	
	@RequestMapping(value="event_insert", method=RequestMethod.GET)
	public String event_insertpage(@ModelAttribute("EventBean")EventBean eventBean){
		return "event/event_insert";
	}
	
	@RequestMapping(value="event_insert", method=RequestMethod.POST)
	public ModelAndView event_insert(HttpServletRequest request, @ModelAttribute("EventBean")EventBean eventBean, BindingResult result){
		InputStream inputStream = null;
		OutputStream outputStream = null;
		
		// 업로드된 파일에 대한 에러 검사
		MultipartFile file = eventBean.getUpload_img();
		fileValidator.validate(eventBean, result);
		
		String fileName = file.getOriginalFilename();
		
		if(result.hasErrors()){
			return new ModelAndView("event/event_insert");
		}
		
		try {
			inputStream = file.getInputStream();
			String root_path = request.getSession().getServletContext().getRealPath("/");  
			File newFile = new File(root_path + "resources/img/" + fileName);
			if(!newFile.exists()){
				newFile.createNewFile();
			}
			
			outputStream = new FileOutputStream(newFile);
			int read = 0;
			byte[] bytes = new byte[1024];
			
			while((read = inputStream.read(bytes)) != -1){
				outputStream.write(bytes, 0, read);
			}
			
			//DB에 기록
			daoInter.insertEvent(eventBean);
			
			EventImageBean eventImageBean = new EventImageBean();
			eventImageBean.setImg_url(fileName);
			daoInter.insertEventImage(eventImageBean);
		} catch (Exception e) {
			System.out.println("처리 오류 : " + e);
		}finally {
			try {
				if(outputStream != null) outputStream.close();
				if(inputStream != null) inputStream.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		return new ModelAndView("redirect:/event_list");
		
//		boolean b = daoInter.();
//		if(b){
//			return "redirect:/board_list?des_id=" + boardBean.getBoard_designerid();
//		}else{
//			return "redirect:/error.jsp";
//		}
	}
}
