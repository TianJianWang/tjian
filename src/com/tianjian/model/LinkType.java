package com.tianjian.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class LinkType {
	ArrayList<BigServiceType> bigTypelist = null;
	Map<Integer,ArrayList<SmallServiceType>> typemap=null;
	public ArrayList<BigServiceType> getBigTypelist() {
		return bigTypelist;
	}
	public void setBigTypelist(ArrayList<BigServiceType> bigTypelist) {
		this.bigTypelist = bigTypelist;
	}
	public Map<Integer, ArrayList<SmallServiceType>> getTypemap() {
		return typemap;
	}
	public void setTypemap(Map<Integer, ArrayList<SmallServiceType>> typemap) {
		this.typemap = typemap;
	}
	public LinkType() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LinkType(ArrayList<BigServiceType> bigTypelist,
			Map<Integer, ArrayList<SmallServiceType>> typemap) {
		super();
		this.bigTypelist = bigTypelist;
		this.typemap = typemap;
	}
	@Override
	public String toString() {
		return "LinkType [bigTypelist=" + bigTypelist + ", typemap=" + typemap
				+ "]";
	}
	
}
