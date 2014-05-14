package com.tianjian.action;

import java.util.ArrayList;

import com.tianjian.model.Finance;
import com.tianjian.model.FinanceItem;
import com.tianjian.service.FinanceService;

public class FinanceAction {
     private Finance finance;
     private FinanceItem item;
     private ArrayList<Finance> financeList;
     private ArrayList<FinanceItem> itemList;
     private String pro_id;
     private String finance_id;
     private FinanceService service;
     
	public String getPro_id() {
		return pro_id;
	}
	public void setPro_id(String pro_id) {
		this.pro_id = pro_id;
	}
	public String getFinance_id() {
		return finance_id;
	}
	public void setFinance_id(String finance_id) {
		this.finance_id = finance_id;
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
	public ArrayList<FinanceItem> getItemList() {
		return itemList;
	}
	public void setItemList(ArrayList<FinanceItem> itemList) {
		this.itemList = itemList;
	}
	//��ѯ��Ŀ��Ӧ���˵�
    public String  listFinance(){
    	service=new FinanceService();
    	finance=service.listFinance(Integer.parseInt(pro_id));
    	if(finance!=null){
    		itemList=service.listItem(finance.getFinance_id());
    	}
    	System.out.println("finance:"+finance);
    	System.out.println("list:"+itemList);
		return "listFinance";
    }
    //�鿴���е��˵�����ʱ�����õ���
    public String  listAllFinance(){
    	service=new FinanceService();
    	financeList=service.listAllFinance();
    	return "listAllFinance";
    }
    //������˵�  ������Ŀ��
    public String addFinance(){
    	service=new FinanceService();
    	System.out.println("inCom,a,asdfdf:"+finance.getInCome());
    	finance.setPro_id(Integer.parseInt(pro_id));
    	String flat=service.addFinance(finance);
    		if(flat.equals("success")){
        		return "addFinance";
        	}
    		else return "fail";
    
    	
    }
    
//    //�޸����˵�
//    public String updateFinance(){
//    	service=new FinanceService();
//    	String flat=service.updateFinance(finance);
//		return finance_id;
//    }
    //�жϸ���Ŀ�Ƿ������˵�
    public String isFinance(){
    	service=new FinanceService();
    	finance=service.listFinance(Integer.parseInt(pro_id));
    	if(finance!=null){
    		return "yesFinance";
    	}else
		return "notFinance";
    }
    //������˵���Ӧ�����˵�
    public String addItem(){
    	service=new FinanceService();
    	finance=service.listFinance(Integer.parseInt(pro_id));
    	System.out.println("����finance_id��"+finance.getFinance_id());
    	item.setFinance_id(finance.getFinance_id());
    	System.out.println("zheshi item :"+item);
    	String flat=service.addItem(item);
    	if(flat.equals("success")){
    		return "addItem";
    	}else
		return "fail";
    }
}
