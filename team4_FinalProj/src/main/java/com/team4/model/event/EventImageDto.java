package com.team4.model.event;

import org.springframework.web.multipart.MultipartFile;

public class EventImageDto {
	private String img_no, img_eventno, img_url;
	
	public String getImg_no() {
		return img_no;
	}
	public void setImg_no(String img_no) {
		this.img_no = img_no;
	}
	public String getImg_eventno() {
		return img_eventno;
	}
	public void setImg_eventno(String img_eventno) {
		this.img_eventno = img_eventno;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

}
