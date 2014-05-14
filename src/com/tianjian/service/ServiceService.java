package com.tianjian.service;

import java.util.ArrayList;


import com.tianjian.dao.ServiceDao;
import com.tianjian.model.Service;
import com.tianjian.model.ShortService;

public class ServiceService {
	private ServiceDao serdao=new ServiceDao();
	public int addService(Service service) {
		int n=serdao.addService(service);
		return n;
	}

	

	public ArrayList<ShortService> queryShortService(int nowPage) {
		ArrayList<ShortService> serviceList=serdao.queryShortService(nowPage);
		return serviceList;
		
	}

	public Service queryDetailService(int ser_id) {
		Service service=serdao.queryDetailService(ser_id);
		return service;
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

}
