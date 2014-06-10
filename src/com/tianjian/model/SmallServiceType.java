package com.tianjian.model;

public class SmallServiceType {
private int smalltype_id;
private  String smalltype_name;
private String bigtypename;
public SmallServiceType() {
	super();
	// TODO Auto-generated constructor stub
}

public SmallServiceType(int smalltype_id, String smalltype_name) {
	super();
	this.smalltype_id = smalltype_id;
	this.smalltype_name = smalltype_name;
}

public SmallServiceType(int smalltype_id, String smalltype_name,
		String bigtypename) {
	super();
	this.smalltype_id = smalltype_id;
	this.smalltype_name = smalltype_name;
	this.bigtypename = bigtypename;
}

public int getSmalltype_id() {
	return smalltype_id;
}

public void setSmalltype_id(int smalltype_id) {
	this.smalltype_id = smalltype_id;
}

public String getSmalltype_name() {
	return smalltype_name;
}
public void setSmalltype_name(String smalltype_name) {
	this.smalltype_name = smalltype_name;
}

@Override
public String toString() {
	return "SmallServiceType [smalltype_id=" + smalltype_id
			+ ", smalltype_name=" + smalltype_name + ", bigtypename="
			+ bigtypename + "]";
}


 
}
