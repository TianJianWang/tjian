package com.tianjian.model;

import java.util.ArrayList;

public class ServiceDisplay {
private BigServiceType bigtype;
private ArrayList<SmallServiceType> smallTypelist;
private ArrayList<ShortService> servicelist;
public BigServiceType getBigtype() {
	return bigtype;
}
public void setBigtype(BigServiceType bigtype) {
	this.bigtype = bigtype;
}
public ArrayList<SmallServiceType> getSmallTypelist() {
	return smallTypelist;
}
public void setSmallTypelist(ArrayList<SmallServiceType> smallTypelist) {
	this.smallTypelist = smallTypelist;
}
public ArrayList<ShortService> getServicelist() {
	return servicelist;
}
public void setServicelist(ArrayList<ShortService> servicelist) {
	this.servicelist = servicelist;
}
public ServiceDisplay() {
	super();
	// TODO Auto-generated constructor stub
}
public ServiceDisplay(BigServiceType bigtype,
		ArrayList<SmallServiceType> smallTypelist,
		ArrayList<ShortService> servicelist) {
	super();
	this.bigtype = bigtype;
	this.smallTypelist = smallTypelist;
	this.servicelist = servicelist;
}
@Override
public String toString() {
	return "ServiceDisplay [bigtype=" + bigtype + ", smallTypelist="
			+ smallTypelist + ", servicelist=" + servicelist + "]";
}

}
