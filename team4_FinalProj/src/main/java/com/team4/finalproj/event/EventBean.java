package com.team4.finalproj.event;

import org.springframework.web.multipart.MultipartFile;

public class EventBean {
	private String event_no, event_writer, event_title, event_content, event_regdate, event_hit, img_url, reply_count;
	private MultipartFile upload_img;
	
	public MultipartFile getUpload_img() {
		return upload_img;
	}
	public void setUpload_img(MultipartFile upload_img) {
		this.upload_img = upload_img;
	}
	
	public String getImg_url() {
		return img_url;
	}

	public String getReply_count() {
		return reply_count;
	}

	public void setReply_count(String reply_count) {
		this.reply_count = reply_count;
	}

	public String getEvent_hit() {
		return event_hit;
	}

	public void setEvent_hit(String event_hit) {
		this.event_hit = event_hit;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

	public String getEvent_no() {
		return event_no;
	}

	public void setEvent_no(String event_no) {
		this.event_no = event_no;
	}

	public String getEvent_writer() {
		return event_writer;
	}

	public void setEvent_writer(String event_writer) {
		this.event_writer = event_writer;
	}

	public String getEvent_title() {
		return event_title;
	}

	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}

	public String getEvent_content() {
		return event_content;
	}

	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}

	public String getEvent_regdate() {
		return event_regdate;
	}

	public void setEvent_regdate(String event_regdate) {
		this.event_regdate = event_regdate;
	}
	
}
