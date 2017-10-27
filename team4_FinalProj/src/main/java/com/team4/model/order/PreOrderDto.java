package com.team4.model.order;

public class PreOrderDto {
	private String prod_name, stock_color, stock_size, order_quantity, pic_url;
	private int prod_price;

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

	public String getOrder_quantity() {
		return order_quantity;
	}

	public void setOrder_quantity(String order_quantity) {
		this.order_quantity = order_quantity;
	}

}
