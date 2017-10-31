package com.team4.model.order;

public class PreOrderDto {
	private String prod_name, stock_color, stock_size, pic_url, prod_no, stock_no, cart_buyer;
	private int prod_price, order_quantity;
	
	public String getStock_no() {
		return stock_no;
	}

	public void setStock_no(String stock_no) {
		this.stock_no = stock_no;
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

	public String getProd_name() {
		return prod_name;
	}

	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}

	public String getStock_color() {
		return stock_color;
	}

	public void setStock_color(String stock_color) {
		this.stock_color = stock_color;
	}

	public String getStock_size() {
		return stock_size;
	}

	public void setStock_size(String stock_size) {
		this.stock_size = stock_size;
	}

	public int getProd_price() {
		return prod_price;
	}

	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}

	public int getOrder_quantity() {
		return order_quantity;
	}

	public void setOrder_quantity(int order_quantity) {
		this.order_quantity = order_quantity;
	}

}
