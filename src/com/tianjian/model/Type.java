package com.tianjian.model;

import java.util.Set;

public class Type {
	private int type_id;
	private int type_leval;
	private String type_name;
	private int type_up_id;
	private Set<Service>    services;
	
	public Type() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public Type(int type_id, int type_leval, String type_name, int type_up_id,
			Set<Service> services) {
		super();
		this.type_id = type_id;
		this.type_leval = type_leval;
		this.type_name = type_name;
		this.type_up_id = type_up_id;
		this.services = services;
	}



	public Set<Service> getServices() {
		return services;
	}



	public void setServices(Set<Service> services) {
		this.services = services;
	}



	public int getType_id() {
		return type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	public int getType_leval() {
		return type_leval;
	}
	public void setType_leval(int type_leval) {
		this.type_leval = type_leval;
	}
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	public int getType_up_id() {
		return type_up_id;
	}
	public void setType_up_id(int type_up_id) {
		this.type_up_id = type_up_id;
	}



	@Override
	public String toString() {
		return "Type [type_id=" + type_id + ", type_leval=" + type_leval
				+ ", type_name=" + type_name + ", type_up_id=" + type_up_id
				+ ", services=" + services + "]";
	}




}
