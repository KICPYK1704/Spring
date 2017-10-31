package com.team4.model.product;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;

import com.team4.finalproj.product.ProductBean;

@Service
public class PFileValidator implements Validator {
	
	public boolean supports(Class<?> arg0) {
		return false;
	}
	
	public void validate(Object obj, Errors errors) {
		ProductBean productBean = (ProductBean)obj;
		List<MultipartFile> list = productBean.getFiles();
		
		boolean valid = false;
		
		for(int i=0;i<list.size();i++){
        	if(list.get(i).getSize()!=0){
        		valid = true;
        	};
        }
		
		if(!valid){
        	errors.rejectValue("files", "UploadForm.SelectFile", 
                    "한개의 파일은 꼭 선택해야 합니다!");
		}
	}
}
