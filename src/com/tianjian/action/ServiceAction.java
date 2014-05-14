package com.tianjian.action;

import java.util.ArrayList;


import com.tianjian.service.ImageUploadService;
import com.opensymphony.xwork2.ActionSupport;
import com.tianjian.model.Service;
import com.tianjian.model.ShortService;
import com.tianjian.service.ServiceService;

public class ServiceAction extends ActionSupport {
	private int ser_id;

private Service service=null;

private ServiceService serser=new ServiceService();
private int n;
private int nowPage;
private int allPages;
private int totalCount;

private String message;
private ArrayList<ShortService> serviceList;
private ImageUploadService imageService;

public ImageUploadService getImageService() {
	return imageService;
}
public void setImageService(ImageUploadService imageService) {
	this.imageService = imageService;
}
public String addService(){
	if (imageService != null) {
		imageService.upload();// 上传图片
		service.setCom_picture("serviceImages/"
				+ imageService.getReimageFileName());
	}
	n= serser.addService(service);
	 
	if(n==0){
		message="真抱歉，添加服务失败！";
		return "fail";
	}
	else{
		message="恭喜您，添加服务成功！";

	 return "success";	}
}
 public String queryFrontShortService(){
		
	 
	 
	 totalCount = serser.queryTotalCount();// 返回总个数
		allPages = ((totalCount - 1) / 12) + 1;// 某类总页数
		serviceList=serser.queryShortService(nowPage);	
		
	 return null;	
}
public String queryBackShortService(){
	 
	 totalCount = serser.queryTotalCount();// 返回总个数
		allPages = ((totalCount - 1) / 12) + 1;// 某类总页数
		serviceList=serser.queryShortService(nowPage);	
	 return "backShortService";	
}

 public ArrayList<ShortService> getServiceList() {
	return serviceList;
}
public void setServiceList(ArrayList<ShortService> serviceList) {
	this.serviceList = serviceList;
}
public String queryFrontDetailService(){
	 service= serser.queryDetailService(ser_id);
	return null;
	 
 }
 public String queryBackDetailService(){
	 service= serser.queryDetailService(ser_id);
	 if(service==null){
		 message="真没歉，查看详细服务失败！";
		 return "fail";
	 }else{
		 
		 return "backDetailService";
	 }
	
	 
 }
 public String delService(){
	
	 n=serser.delService(ser_id);
	 
	 if(n==0){
			message="真抱歉，删除服务失败！";
			return "fail";
		}
		else{
			message="恭喜您，删除服务成功！";

		 return "success";	}
	
	
}
 public String alterService(){
	n=serser.alterService(service);
	 
	if(n==0){
		message="真抱歉，修改服务失败！";
		return "fail";
	}
	else{
		message="恭喜您，修改服务成功！";

	 return "success";	}
}
public Service getService() {
	return service;
}

public void setService(Service service) {
	this.service = service;
}
public int getSer_id() {
	return ser_id;
}
public void setSer_id(int ser_id) {
	this.ser_id = ser_id;
}
public ServiceService getSerser() {
	return serser;
}
public void setSerser(ServiceService serser) {
	this.serser = serser;
}
public int getN() {
	return n;
}
public void setN(int n) {
	this.n = n;
}
public int getNowPage() {
	return nowPage;
}
public void setNowPage(int nowPage) {
	this.nowPage = nowPage;
}
public int getAllPages() {
	return allPages;
}
public void setAllPages(int allPages) {
	this.allPages = allPages;
}
public int getTotalCount() {
	return totalCount;
}
public void setTotalCount(int totalCount) {
	this.totalCount = totalCount;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
}
 