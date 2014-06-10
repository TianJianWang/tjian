package com.tianjian.model;

public class BigServiceType {
	int bigtype_id;
	 String bigtype_name;
	
	public String getBigtype_name() {
		return bigtype_name;
	}
	public void setBigtype_name(String bigtype_name) {
		this.bigtype_name = bigtype_name;
	}
	public BigServiceType() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getBigtype_id() {
		return bigtype_id;
	}
	public void setBigtype_id(int bigtype_id) {
		this.bigtype_id = bigtype_id;
	}
	public BigServiceType(int bigtype_id, String bigtype_name) {
		super();
		this.bigtype_id = bigtype_id;
		this.bigtype_name = bigtype_name;
	}
	@Override
	public String toString() {
		return "BigServiceType [bigtype_id=" + bigtype_id + ", bigtype_name="
				+ bigtype_name + "]";
	}
	
}
