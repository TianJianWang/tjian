package com.tianjian.model;

public class ShortService {
	private int ser_id;
	private String com_name;
	private int score;
	
	private String short_info;
	private String com_url;
	private String com_picture;
	public ShortService() {
		super();
	}
	public ShortService(int ser_id, String com_name, int score,
			String short_info, String com_url,String com_picture) {
		super();
		this.ser_id = ser_id;
		this.com_name = com_name;
		this.score = score;
		this.short_info = short_info;
		this.com_url = com_url;
		this.com_picture=com_picture;
	}
	public int getSer_id() {
		return ser_id;
	}
	public void setSer_id(int ser_id) {
		this.ser_id = ser_id;
	}
	public String getCom_name() {
		return com_name;
	}
	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getShort_info() {
		return short_info;
	}
	public void setShort_info(String short_info) {
		this.short_info = short_info;
	}
	public String getCom_url() {
		return com_url;
	}
	public void setCom_url(String com_url) {
		this.com_url = com_url;
	}
	public String getCom_picture() {
		return com_picture;
	}
	public void setCom_picture(String com_picture) {
		this.com_picture = com_picture;
	}
	@Override
	public String toString() {
		return "ShortService [ser_id=" + ser_id + ", com_name=" + com_name
				+ ", score=" + score + ", short_info=" + short_info
				+ ", com_url=" + com_url + "]";
	}
	
}
