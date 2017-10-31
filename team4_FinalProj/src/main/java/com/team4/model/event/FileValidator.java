package com.team4.model.event;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.team4.finalproj.event.EventBean;

@Service
public class FileValidator implements Validator {
	
	public boolean supports(Class<?> arg0) {
		return false;
	}
	
	public void validate(Object eventBean, Errors errors) {
		EventBean file = (EventBean)eventBean;
		if(file.getUpload_img().getSize() == 0){
			errors.rejectValue("file", "", "업로드할 파일을 선택하세요");
		}
	}
}
