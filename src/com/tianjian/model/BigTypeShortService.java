package com.tianjian.model;

import java.util.ArrayList;

public class BigTypeShortService {
	private ArrayList<ShortService> list = null;
	private ArrayList<SmallServiceType> smallTypelist = null;
	private String bigtype_name;
	
	public BigTypeShortService() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BigTypeShortService(String bigtype_name, ArrayList<ShortService> list,
			ArrayList<SmallServiceType> smallTypelist) {
		super();
		this.bigtype_name=bigtype_name;
		this.list = list;
		this.smallTypelist = smallTypelist;
	}
	public ArrayList<ShortService> getList() {
		return list;
	}
	public void setList(ArrayList<ShortService> list) {
		this.list = list;
	}
	public ArrayList<SmallServiceType> getSmallTypelist() {
		return smallTypelist;
	}
	public void setSmallTypelist(ArrayList<SmallServiceType> smallTypelist) {
		this.smallTypelist = smallTypelist;
	}
	public String getBigtype_name() {
		return bigtype_name;
	}
	public void setBigtype_name(String bigtype_name) {
		this.bigtype_name = bigtype_name;
	}
	@Override
	public String toString() {
		return "BigTypeShortService [list=" + list + ", smallTypelist="
				+ smallTypelist + ", bigtype_name=" + bigtype_name + "]";
	}
	
}
