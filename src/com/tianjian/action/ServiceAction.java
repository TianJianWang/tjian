package com.tianjian.action;

import java.util.ArrayList;

import java.util.HashMap;

import javax.servlet.Servlet;

import org.apache.struts2.ServletActionContext;

import com.tianjian.service.ImageUploadService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tianjian.model.BigServiceType;
import com.tianjian.model.BigTypeShortService;
import com.tianjian.model.DetailService;
import com.tianjian.model.LinkType;
import com.tianjian.model.Service;
import com.tianjian.model.ServiceDisplay;
import com.tianjian.model.ShortService;
import com.tianjian.model.SmallServiceType;
import com.tianjian.model.Type;
import com.tianjian.service.ServiceService;

public class ServiceAction extends ActionSupport {
	private int ser_id;

	private Service service = null;

	private ServiceService serser = new ServiceService();
	private int n;
	private int nowPage;
	private int allPages;
	private int totalCount;
	private int type_id;
	private String message;
	private ArrayList<ShortService> serviceList;
	private ImageUploadService imageService;
	ArrayList<ServiceDisplay> serDisplayList = null;
	LinkType linktype;

	private BigTypeShortService bigTypeShortService;

	private ArrayList<SmallServiceType> shortServiceType;
	private DetailService detailservice;

	private Type type;


	private ArrayList<Type> typelist;

	private HashMap<BigServiceType, ArrayList<SmallServiceType>> typemap;


	
	public String beforeAlterService(){
		service = serser.queryDetailService(ser_id);
		linktype=serser.querybackType();
		return "beforeAlter";
	}
	public String alterService() {
		if (imageService != null) {
			imageService.upload();// 上传图片
			service.setCom_picture("serviceImages/"
					+ imageService.getReimageFileName());
		}
		n = serser.alterService(service);

		if (n == 0) {
			message = "真抱歉，修改服务失败！";
			return "fail";
		} else {
			message = "恭喜您，修改服务成功！";

			return "success";
		}
	}
	public String queryFrontDetailService() {
		detailservice = serser.queryFrontDetailService(ser_id);
		
		return "frontDetailService";

	}
	public String beforeAddService(){
		
		linktype=serser.querybackType();
		return "beforeAddService";
		
	}
	public String queryBackDetailService() {
		service = serser.queryDetailService(ser_id);
		if (service == null) {
			message = "真没歉，查看详细服务失败！";
			return "fail";
		} else {

			return "backDetailService";
		}

	}

	public String delService() {

		n = serser.delService(ser_id);

		if (n == 0) {
			message = "真抱歉，删除服务失败！";
			return "fail";
		} else {
			message = "恭喜您，删除服务成功！";

			return "success";
		}

	}
	public String addService() {
		if (imageService != null) {
			imageService.upload();// 上传图片
			service.setCom_picture("serviceImages/"
					+ imageService.getReimageFileName());
		}
		n = serser.addService(service);
System.out.println("0000000000000000");
		if (n == 0) {
//			message = "真抱歉，添加服务失败！";
			System.out.println("添加服务失败");
			return "addfail";
		} else {
//		message = "恭喜您，添加服务成功！";
			System.out.println("添加服务成功");
			return "addsuccess";
		}
	}
	public String addServiceType() {
		
		n = serser.addServiceType(type);
		
		if (n == 0) {
			message = "真抱歉，添加服务类别失败！";
			//ServletActionContext.getRequest().getSession().setAttribute("message", message);
			return "addfail";
		} else {
			message = "恭喜您，添加服务类别成功！";
			//ActionContext.getContext().getSession().put("message", message);
			return "addsuccess";
		}
	}
	public String queryBigBackServiceType(){
		
		typelist= serser.queryBigServiceType();
		
			
			return "bigTypeList";
		
			 
	}
	public String querySmallBackServiceType(){
		
		typemap= serser.querySmallServiceType();
		
		
		return "smallTypeList";
		
		
	}
	public String beforeAddServiceSmallType() {
		typelist= serser.queryBigServiceType();
		
		return "beforeAddServiceSmallType";
		
		
	}
	

	
	public ArrayList<Type> getTypelist() {
		return typelist;
	}
	public void setTypelist(ArrayList<Type> typelist) {
		this.typelist = typelist;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public String queryFrontShortService() {

		totalCount = serser.queryTotalCount();// 返回总个数
		allPages = ((totalCount - 1) / 12) + 1;// 某类总页数
		serviceList = serser.queryShortService(nowPage);

		return "frontShortService";
	}

	public String queryFrontBigTypeDisplayShortService() {
		serDisplayList = serser.queryFrontBigTypeDisplayShortService();

		return "frontServiceDisplay";
	}

	public String queryBackBigTypeShortService() {

		totalCount = serser.queryTotalCount();// 返回总个数
		allPages = ((totalCount - 1) / 12) + 1;// 某类总页数
		bigTypeShortService = serser.queryBigTypeShortService(nowPage, type_id);
		return "backShortService";
	}

	public String queryBackSmallTypeShortService() {

		totalCount = serser.queryTotalCount();// 返回总个数
		allPages = ((totalCount - 1) / 12) + 1;// 某类总页数
		serviceList = serser.querySmallTypeShortService(nowPage, type_id);
		return "backShortService";
	}

	public String queryFrontBigTypeShortService() {

		totalCount = serser.queryTotalCount();// 返回总个数
		allPages = ((totalCount - 1) / 30) + 1;// 某类总页数
		bigTypeShortService = serser.queryBigTypeShortService(nowPage, type_id);
		serviceList=bigTypeShortService.getList();
		shortServiceType=bigTypeShortService.getSmallTypelist();
		return "frontShortService";
	}

	public String queryFrontSmallTypeShortService() {

		totalCount = serser.queryTotalCount();// 返回总个数
		allPages = ((totalCount - 1) / 30) + 1;// 某类总页数
		serviceList = serser.querySmallTypeShortService(nowPage, type_id);
		return "frontSmallShortService";
	}

	

	public String queryBackShortService() {

		totalCount = serser.queryTotalCount();// 返回总个数
		allPages = ((totalCount - 1) / 12) + 1;// 某类总页数
		serviceList = serser.queryShortService(nowPage);
		return "backShortService";
	}

	public ArrayList<ShortService> getServiceList() {
		return serviceList;
	}public void setServiceList(ArrayList<ShortService> serviceList) {
		this.serviceList = serviceList;
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

	public int getType_id() {
		return type_id;
	}

	public void setType_id(int type_id) {
		this.type_id = type_id;
	}

	public ImageUploadService getImageService() {
		return imageService;
	}

	public void setImageService(ImageUploadService imageService) {
		this.imageService = imageService;
	}

	public ArrayList<ServiceDisplay> getSerDisplayList() {
		return serDisplayList;
	}

	public void setSerDisplayList(ArrayList<ServiceDisplay> serDisplayList) {
		this.serDisplayList = serDisplayList;
	}

	public LinkType getLinktype() {
		return linktype;
	}

	public void setLinktype(LinkType linktype) {
		this.linktype = linktype;
	}

	public BigTypeShortService getBigTypeShortService() {
		return bigTypeShortService;
	}

	public void setBigTypeShortService(BigTypeShortService bigTypeShortService) {
		this.bigTypeShortService = bigTypeShortService;
	}

	public DetailService getDetailservice() {
		return detailservice;
	}

	public void setDetailservice(DetailService detailservice) {
		this.detailservice = detailservice;
	}
	public ArrayList<SmallServiceType> getShortServiceType() {
		return shortServiceType;
	}

	public void setShortServiceType(ArrayList<SmallServiceType> shortServiceType) {
		this.shortServiceType = shortServiceType;
	}
	public HashMap<BigServiceType, ArrayList<SmallServiceType>> getTypemap() {
		return typemap;
	}
	public void setTypemap(
			HashMap<BigServiceType, ArrayList<SmallServiceType>> typemap) {
		this.typemap = typemap;
	}

}
