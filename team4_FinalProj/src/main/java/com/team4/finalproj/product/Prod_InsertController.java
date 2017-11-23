package com.team4.finalproj.product;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.team4.model.designer.DesignerDaoInter;
import com.team4.model.designer.DesignerDto;
import com.team4.model.product.PFileValidator;
import com.team4.model.product.ProductDaoInter;

@Controller
public class Prod_InsertController {
	@Autowired
	private ProductDaoInter daoInter;
	
	@Autowired
	private DesignerDaoInter des_daoInter;
	
	@Autowired
	private PFileValidator fileValidator;
	
	@RequestMapping(value="product_insert", method=RequestMethod.GET)
	public ModelAndView product_insertpage(HttpServletRequest request, @ModelAttribute("ProductBean")ProductBean productBean){
		String prod_no = daoInter.getNewNo();
		DesignerDto des_info = des_daoInter.getDesigner((String)request.getSession().getAttribute("login_des"));
		
		ModelAndView mv = new ModelAndView("product/product_insert");
		mv.addObject("prod_no", prod_no);
		mv.addObject("des_info", des_info);
		return mv;
	}
	
	@RequestMapping(value="product_insert", method=RequestMethod.POST)
	public ModelAndView product_insert(HttpServletRequest request, @ModelAttribute("ProductBean")ProductBean productBean, BindingResult result){
		//DB에 기록
		daoInter.insertProduct(productBean);
		
		if(result.hasErrors()){
			return new ModelAndView("product/product_insert");
		}
		
		// 업로드된 파일에 대한 에러 검사
		List<MultipartFile> list = productBean.getFiles();
		
		InputStream inputStream = null;
		OutputStream outputStream = null;
		
		fileValidator.validate(productBean, result);
		
		for(int i=list.size()-1;i>=0;i--){
	    	MultipartFile file = list.get(i);
	    	// 파일의 내용이 비어 있는 경우에는 리스트에서 삭제한다
	    	if(file.getSize()==0) {
	    		list.remove(i);
	    		continue;
	    	}
		
			String fileName = file.getOriginalFilename();
			
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
				
				ProductPictureBean productPictureBean = new ProductPictureBean();
//				System.out.println(fileName + " prod_no:" + productBean.getProd_no());
				productPictureBean.setPic_url(fileName);
				productPictureBean.setPic_prodno(productBean.getProd_no());
				daoInter.insertProductPic(productPictureBean);
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
		}
		
		return new ModelAndView("redirect:/product_Mgt");
	}
}
