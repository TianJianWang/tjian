package com.tianjian.model;

public class SalePre {
	private int pre_id;
	private int pro_id;
	private String type_post;
	private int pre_money;
	private int pre_limit;
	private String pre_info;
	public SalePre() {
		// TODO Auto-generated constructor stub
	}
	public SalePre(int pre_id, int pro_id, String type_post, int pre_money,
			int pre_limit, String pre_info) {
		super();
		this.pre_id = pre_id;
		this.pro_id = pro_id;
		this.type_post = type_post;
		this.pre_money = pre_money;
		this.pre_limit = pre_limit;
		this.pre_info = pre_info;
	}
	public int getPre_id() {
		return pre_id;
	}
	public void setPre_id(int pre_id) {
		this.pre_id = pre_id;
	}
	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}
	public String getType_post() {
		return type_post;
	}
	public void setType_post(String type_post) {
		this.type_post = type_post;
	}
	public int getPre_money() {
		return pre_money;
	}
	public void setPre_money(int pre_money) {
		this.pre_money = pre_money;
	}
	public int getPre_limit() {
		return pre_limit;
	}
	public void setPre_limit(int pre_limit) {
		this.pre_limit = pre_limit;
	}
	public String getPre_info() {
		return pre_info;
	}
	public void setPre_info(String pre_info) {
		this.pre_info = pre_info;
	}
	@Override
	public String toString() {
		return "SalePre [pre_id=" + pre_id + ", pro_id=" + pro_id
				+ ", type_post=" + type_post + ", pre_money=" + pre_money
				+ ", pre_limit=" + pre_limit + ", pre_info=" + pre_info + "]";
	}
    
}
