package com.team4.finalproj.product;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ProductBean {
	private String prod_no, prod_name, prod_intro, prod_Msg, prod_classf1, prod_classf2, prod_designerid, prod_price, prod_hit, prod_regdate;
	private List<MultipartFile> files;
	
	public String getProd_no() {
		return prod_no;
	}
	public List<MultipartFile> getFiles() {
		return files;
	}
	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}
	public void setProd_no(String prod_no) {
		this.prod_no = prod_no;
	}
	public String getProd_name() {
		return prod_name;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}
	public String getProd_intro() {
		return prod_intro;
	}
	public void setProd_intro(String prod_intro) {
		this.prod_intro = prod_intro;
	}
	public String getProd_Msg() {
		return prod_Msg;
	}
	public void setProd_Msg(String prod_Msg) {
		this.prod_Msg = prod_Msg;
	}
	public String getProd_classf1() {
		return prod_classf1;
	}
	public void setProd_classf1(String prod_classf1) {
		this.prod_classf1 = prod_classf1;
	}
	public String getProd_classf2() {
		return prod_classf2;
	}
	public void setProd_classf2(String prod_classf2) {
		this.prod_classf2 = prod_classf2;
	}
	public String getProd_designerid() {
		return prod_designerid;
	}
	public void setProd_designerid(String prod_designerid) {
		this.prod_designerid = prod_designerid;
	}
	public String getProd_price() {
		return prod_price;
	}
	public void setProd_price(String prod_price) {
		this.prod_price = prod_price;
	}
	public String getProd_hit() {
		return prod_hit;
	}
	public void setProd_hit(String prod_hit) {
		this.prod_hit = prod_hit;
	}
	public String getProd_regdate() {
		return prod_regdate;
	}
	public void setProd_regdate(String prod_regdate) {
		this.prod_regdate = prod_regdate;
	}
}
