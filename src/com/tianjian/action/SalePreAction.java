package com.tianjian.action;

import java.util.ArrayList;
import com.opensymphony.xwork2.ActionSupport;
import com.tianjian.model.Finance;
import com.tianjian.model.FinanceItem;
import com.tianjian.model.Project;
import com.tianjian.model.SalePre;
import com.tianjian.service.FinanceService;
import com.tianjian.service.ProjectService;
import com.tianjian.service.SalePreService;

public class SalePreAction extends ActionSupport {
	private SalePre salepre;
	private ArrayList<SalePre> salepreList;
	private ArrayList<Project> projectList;
	private SalePreService service; 
	private String method;
	private int pre_id;
	private Project project;
	private Finance finance;
	private FinanceItem item;
	private ArrayList<FinanceItem> itemList;
	
	public ArrayList<FinanceItem> getItemList() {
		return itemList;
	}
	public void setItemList(ArrayList<FinanceItem> itemList) {
		this.itemList = itemList;
	}
	public Finance getFinance() {
		return finance;
	}
	public void setFinance(Finance finance) {
		this.finance = finance;
	}
	public FinanceItem getItem() {
		return item;
	}
	public void setItem(FinanceItem item) {
		this.item = item;
	}
	public ArrayList<Project> getProjectList() {
		return projectList;
	}
	public void setProjectList(ArrayList<Project> projectList) {
		this.projectList = projectList;
	}
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}
	public int getPre_id() {
		return pre_id;
	}
	public void setPre_id(int pre_id) {
		this.pre_id = pre_id;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public SalePre getSalepre() {
		return salepre;
	}
	public void setSalepre(SalePre salepre) {
		this.salepre = salepre;
	}
	public ArrayList<SalePre> getSalepreList() {
		return salepreList;
	}
	public void setSalepreList(ArrayList<SalePre> salepreList) {
		this.salepreList = salepreList;
	}
	public String listSalepre(){
		if(method==null){
			method="";
		}
		service =new SalePreService();
		salepreList=service.listSalepre(project.getPro_id());
		return "listSalepre";
	}
	public String listProjectSalepreDetial(){
		service =new SalePreService();
		salepreList=service.listSalepre(project.getPro_id());
		ProjectService proService=new ProjectService();
		projectList=proService.listdetailbyid(project.getPro_id());
		project=projectList.get(0);
		FinanceService fService=new FinanceService();
		finance=fService.listFinance(project.getPro_id());
		System.out.println("zheshi"+finance);
		if(finance!=null){
			itemList=fService.listItem(finance.getFinance_id());
		}
		
		System.out.println(project);
		return "listProjectSalepreDetial";
		
	}
	public String listSalepreById(){
		if(method==null){
			method="";
		}
		service=new SalePreService();
		salepre=service.listSalepreById(pre_id);
		return "listSalepreById"+method;
		
	}
	public String addSalepre(){
		if(method==null){
			method="";
		}
		service=new SalePreService();
		String flat=service.addSalepre(salepre);
		if(flat.equals("success")){
			return "addSalepre";
		}else
		return "fail";
	}
	public String updateSalepre(){
		if(method==null){
			method="";
		}
		service=new SalePreService();
		String flat=service.updateSalepre(salepre);
	    if(flat.equals("success")){
	    	return "updateSalepre";
	    }else{
		return "fail";
	    }
	}
	public String deleteSalepreById(){
		if(method==null){
			method="Front";
		}
		service=new SalePreService();
		String flat=service.deleteSalepreById(pre_id);
	    if(flat.equals("success")){
	    	return "deleteSalepreById"+method;
	    }else{
		return "fail";
	    }
	}
}
