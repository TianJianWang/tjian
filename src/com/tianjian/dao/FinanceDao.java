package com.tianjian.dao;

import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.tianjian.model.Finance;
import com.tianjian.model.FinanceItem;
import com.tianjian.util.HibernateSessionFactory;

public class FinanceDao {
	private Finance finance;
	private ArrayList<Finance> financeList;
	private FinanceItem item;
	private ArrayList<FinanceItem> itemList;
	//通过项目Id 查询其对应的账单（只有一条）【表情
	public Finance listFinance(int pro_id){
		    Session session=HibernateSessionFactory.getsSession();
		    Transaction ts= session.beginTransaction();
		    finance= (Finance) session.createQuery("from Finance where  pro_id=?").setParameter(0, pro_id).uniqueResult();
		    System.out.println("集合中"+finance);
		   try {
			ts.commit();
		} catch ( Exception e) {
			e.printStackTrace();
		}  
		    session.close();
		return finance;
	}
	public Finance listFinanceById(int finance_id){
		Session session=HibernateSessionFactory.getsSession();
		Transaction ts= session.beginTransaction();
		finance= (Finance) session.createQuery("from Finance where  finance_id=?").setParameter(0, finance_id).uniqueResult();
		System.out.println("集合中"+finance);
		try {
			ts.commit();
		} catch ( Exception e) {
			e.printStackTrace();
		}  
		session.close();
		return finance;
	}
	//查看所有的总账单（暂时不会用到）
	public ArrayList<Finance> listAllFinance(){
		Session session=HibernateSessionFactory.getsSession();
		Transaction ts= session.beginTransaction();
		financeList= (ArrayList<Finance>) session.createQuery("from Finance").list();
		System.out.println("集合中"+finance);
		try {
			ts.commit();
		} catch ( Exception e) {
			e.printStackTrace();
		}  
		session.close();
		return financeList;
	}
	//通过总账单Id 查询对应的所有账单子项
	public ArrayList<FinanceItem> listItem(int finance_id){
		  Session session=HibernateSessionFactory.getsSession();
		    Transaction ts= session.beginTransaction();
		    itemList=(ArrayList<FinanceItem>) session.createQuery("from FinanceItem where  finance_id=?").setParameter(0, finance_id).list();
		    System.out.println("集合中"+finance);
		   try {
			ts.commit();
		} catch ( Exception e) {
			e.printStackTrace();
		}  
		    session.close();
		return itemList;
	}
	//添加总账单
	public String addFinance(Finance finance){
		String flat="fail";
	    Session session=HibernateSessionFactory.getsSession();
	    try {
	    Transaction ts= session.beginTransaction();
	     session.save(finance);
	    flat="success";
		ts.commit();
	} catch ( Exception e) {
		e.printStackTrace();
	}  
	    session.close();
	    return flat;
}
	
	//添加账单子项
	public String addItem(FinanceItem item){
		String flat="fail";
		Session session=HibernateSessionFactory.getsSession();
		Transaction ts= session.beginTransaction();
		try {
	 		session.save(item);
		flat="success";
			ts.commit();
		} catch ( Exception e) {
			e.printStackTrace();
		}  
		session.close();
		return flat;
	}
	
	//修改总账单
	public String updateFinance(Finance finance){
		String flat="fail";
		Session session=HibernateSessionFactory.getsSession();
		Transaction ts= session.beginTransaction();
		try {
			session.update(finance);
			flat="success";
			ts.commit();
		}catch ( Exception e){
			e.printStackTrace();
		}  
		session.close();
		return flat;
	}
}
