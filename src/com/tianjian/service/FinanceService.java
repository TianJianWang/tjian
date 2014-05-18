package com.tianjian.service;

import java.util.ArrayList;

import com.tianjian.dao.FinanceDao;
import com.tianjian.model.Finance;
import com.tianjian.model.FinanceItem;

public class FinanceService {
	private Finance finance;
	private FinanceItem item;
	private ArrayList<Finance> financeList;
	private ArrayList<FinanceItem> itemList;
	private FinanceDao dao;
    public Finance listFinance(int pro_id){
    	dao=new FinanceDao();
    	finance=dao.listFinance(pro_id);
		return finance;
    }
    public ArrayList<Finance> listAllFinance(){
    	dao=new FinanceDao();
    	financeList=dao.listAllFinance();
    	return financeList;
    }
    
    public ArrayList listItem(int finance_id){
    	dao=new FinanceDao();
    	itemList=dao.listItem(finance_id);
		return itemList;
    }
    public String addFinance(Finance finance){
    	dao=new FinanceDao();
    	String flat=dao.addFinance(finance);
		return flat;
    }
    public String addItem(FinanceItem item){
    	dao=new FinanceDao();
    	String flat=dao.addItem(item);
    	updateFinance(item.getFinance_id());
    	return flat;
    }
  //添加的每一条子账单 总账单中的支持、支出和盈余自动变
    public String updateFinance(int finance_id){
    	dao=new FinanceDao();
     	finance=dao.listFinanceById(item.getFinance_id());
    	
    	if(item.getItem_type().equals("I")){
    		int newInCome=finance.getInCome()+item.getItem_money();
    		int newBonus=finance.getBonus()+item.getItem_money();
    		finance.setBonus(newBonus);
    		finance.setInCome(newInCome);
    	}else{
    		int newBonus=finance.getBonus()-item.getItem_money();
    		finance.setBonus(newBonus);
    		int newOutCome=finance.getOutCome()+item.getItem_money();
    		finance.setOutCome(newOutCome);
    	}
    	String flat=dao.updateFinance(finance);
		return flat;
    	
    }
}
