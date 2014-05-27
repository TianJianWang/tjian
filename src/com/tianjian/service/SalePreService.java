package com.tianjian.service;

import java.util.ArrayList;
import com.tianjian.dao.SalePreDao;
import com.tianjian.model.SalePre;

public class SalePreService {
	private SalePre salepre;
	private ArrayList salepreList;
	private SalePreDao dao;
    public ArrayList listSalepre(int pro_id){
    	dao=new SalePreDao();
    	salepreList=(ArrayList) dao.listSalepre(pro_id);
		return salepreList;
    } 
    public String addSalepre(SalePre salepre){
    	dao=new SalePreDao();
    	String flat=dao.addSalepre(salepre);
		return flat;
    }
    public String updateSalepre(SalePre salepre){
    	dao=new SalePreDao();
    	String flat=dao.updateSalepre(salepre);
    	return flat;
    }
    public SalePre listSalepreById(int pre_id){
    	dao=new SalePreDao();
    	salepre=dao.listSalepreById(pre_id);
		return salepre;
    	
    }
    public String deleteSalepreById(int pre_id){
    	dao=new SalePreDao();
    	String flat=dao.deleteSalepreById(pre_id);
		return flat;
    	
    }
    
}
