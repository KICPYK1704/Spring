package com.team4.model.order;

public class OrderDto {
	private String order_no, order_stockno, order_memid;
	private String order_name, order_addr, order_tel, order_message;
	private String order_regdate, order_state, order_pay, order_paymethod;
	private String pic_url, stock_size, stock_color, prod_no, prod_name;
	private int prod_price, order_quantity;
	
	public String getProd_name() {
		return prod_name;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}
	
	public String getProd_no() {
		return prod_no;
	}
	public void setProd_no(String prod_no) {
		this.prod_no = prod_no;
	}
	public String getPic_url() {
		return pic_url;
	}
	public void setPic_url(String pic_url) {
		this.pic_url = pic_url;
	}
	public String getStock_size() {
		return stock_size;
	}
	public void setStock_size(String stock_size) {
		this.stock_size = stock_size;
	}
	public String getStock_color() {
		return stock_color;
	}
	public void setStock_color(String stock_color) {
		this.stock_color = stock_color;
	}
	public int getProd_price() {
		return prod_price;
	}
	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}
	public String getOrder_no() {
		return order_no;
	}
	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	public String getOrder_stockno() {
		return order_stockno;
	}
	public void setOrder_stockno(String order_stockno) {
		this.order_stockno = order_stockno;
	}
	public int getOrder_quantity() {
		return order_quantity;
	}
	public void setOrder_quantity(int order_quantity) {
		this.order_quantity = order_quantity;
	}
	public String getOrder_memid() {
		return order_memid;
	}
	public void setOrder_memid(String order_memid) {
		this.order_memid = order_memid;
	}
	public String getOrder_name() {
		return order_name;
	}
	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}
	public String getOrder_addr() {
		return order_addr;
	}
	public void setOrder_addr(String order_addr) {
		this.order_addr = order_addr;
	}
	public String getOrder_tel() {
		return order_tel;
	}
	public void setOrder_tel(String order_tel) {
		this.order_tel = order_tel;
	}
	public String getOrder_message() {
		return order_message;
	}
	public void setOrder_message(String order_message) {
		this.order_message = order_message;
	}
	public String getOrder_regdate() {
		return order_regdate;
	}
	public void setOrder_regdate(String order_regdate) {
		this.order_regdate = order_regdate;
	}
	public String getOrder_state() {
		return order_state;
	}
	public void setOrder_state(String order_state) {
		this.order_state = order_state;
	}
	public String getOrder_pay() {
		return order_pay;
	}
	public void setOrder_pay(String order_pay) {
		this.order_pay = order_pay;
	}
	public String getOrder_paymethod() {
		return order_paymethod;
	}
	public void setOrder_paymethod(String order_paymethod) {
		this.order_paymethod = order_paymethod;
	}
}
