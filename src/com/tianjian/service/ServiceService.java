package com.tianjian.service;

import java.util.ArrayList;
import java.util.HashMap;


import com.tianjian.dao.ServiceDao;
import com.tianjian.model.BigServiceType;
import com.tianjian.model.BigTypeShortService;
import com.tianjian.model.DetailService;
import com.tianjian.model.LinkType;
import com.tianjian.model.Service;
import com.tianjian.model.ServiceDisplay;
import com.tianjian.model.ShortService;
import com.tianjian.model.SmallServiceType;
import com.tianjian.model.Type;

public class ServiceService {
	private ServiceDao serdao=new ServiceDao();
	public int addService(Service service) {
		int n=serdao.addService(service);
		return n;
	}
	public int addServiceType(Type type) {
		int n=serdao.addServiceType(type);
		return n;
	}
	 public ArrayList queryBigServiceType() {
		 ArrayList typelist=serdao.queryBigServiceType();
		return typelist;
	}
    
	

	public ArrayList<ShortService> queryShortService(int nowPage) {
		ArrayList<ShortService> serviceList=serdao.queryShortService(nowPage);
		return serviceList;
		
	}
	public BigTypeShortService queryBigTypeShortService(int nowPage,int type_id) {
		BigTypeShortService bigTypeShortService=serdao.queryBigTypeShortService(nowPage, type_id);
		return bigTypeShortService;
	}
	public ArrayList<ShortService> querySmallTypeShortService(int nowPage,int type_id) {
		ArrayList<ShortService> serviceList=serdao.querySmallTypeShortService(nowPage, type_id);
		return serviceList;
	}
	public Service queryDetailService(int ser_id) {
		Service service=serdao.queryDetailService(ser_id);
		return service;
	}
	public DetailService queryFrontDetailService(int ser_id) {
		DetailService detailservice=serdao.queryFrontDetailService(ser_id);
		return detailservice;
	}
	public ArrayList<ServiceDisplay> queryFrontBigTypeDisplayShortService(){
		ArrayList<ServiceDisplay>  serDisplaylist=serdao.queryFrontBigTypeDisplayShortService();
		return serDisplaylist;
	}
	public LinkType querybackType(){
		LinkType LinkType=serdao.queryBackType();
		return LinkType;
	}
	public int delService(int ser_id) {
		int n=serdao.delService(ser_id);
		return n;
	}

	public int alterService(Service service) {
		int n= serdao.alterService(service);
		return n;
	}



	public int queryTotalCount() {
	int n=serdao.queryTotalCount();
		return n;
	}
	public HashMap<BigServiceType, ArrayList<SmallServiceType>> querySmallServiceType() {
		
		return serdao.querySmallServiceType();
	}

}
