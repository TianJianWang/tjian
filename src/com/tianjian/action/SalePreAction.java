package com.tianjian.action;

import java.util.ArrayList;
import com.opensymphony.xwork2.ActionSupport;
import com.tianjian.model.SalePre;
import com.tianjian.service.SalePreService;

public class SalePreAction extends ActionSupport {
	private SalePre salepre;
	private ArrayList<SalePre> salepreList;
	private SalePreService service; 
	private String method;
	private int pre_id;
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
		salepreList=service.listSalepre();
		return "listSalepre";
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
