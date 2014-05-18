package com.tianjian.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.tianjian.model.SalePre;
import com.tianjian.util.HibernateSessionFactory;

public class SalePreDao {
	private SalePre salepre;
	private List salepreList;
	//�г�������Ŀ������Ԥ����Ϣ
	public List listSalepre(){
		 SalePre salepre=new SalePre();

		    Session session=HibernateSessionFactory.getsSession();
		    System.out.println(session);
		 
		    Transaction ts= session.beginTransaction();
		    salepreList=  session.createQuery("from SalePre where  pro_id=?").setParameter(0, 2).list();
		    System.out.println("������"+salepreList);

		   try {
			ts.commit();
		} catch ( Exception e) {
			e.printStackTrace();
		}  
		    session.close();
		return salepreList;
	}
	
//���pre_id��ѯ����Ԥ����Ϣ 
	public SalePre listSalepreById(int pre_id){
		Session session=HibernateSessionFactory.getsSession();
		System.out.println(session);
		Transaction ts= session.beginTransaction();
		salepre=  (SalePre) session.createQuery("from SalePre where  pre_id=?").setParameter(0, pre_id).uniqueResult();
		System.out.println("������"+salepreList);
		try {
			ts.commit();
		}catch ( Exception e) {
			e.printStackTrace();
		}      
		session.close();
		return salepre;
	}
	
	//���Ԥ����Ϣ
	public String addSalepre(SalePre salepre){
		String flat="fail";
		  Session session=HibernateSessionFactory.getsSession();
		    System.out.println(session);
		   Transaction ts= session.beginTransaction();
		   try{
		       session.save(salepre);
		    	ts.commit();
		    	flat="success";
		    }catch (Exception e) {
				// TODO: handle exception
		    	e.printStackTrace();
			}
		   if(session!=null){
		    session.close();}
		return flat;
	}
	public String deleteSalepreById(int pre_id){
		String flat="fail";
		Session session=HibernateSessionFactory.getsSession();
		System.out.println(session);
		Transaction ts= session.beginTransaction();
		try{
			session.createQuery("delete SalePre as pre where pre.pre_id=?").setParameter(0, pre_id).executeUpdate();
			ts.commit();
			flat="success";
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if(session!=null){
			session.close();}
		return flat;
	}
	//�����޸�Ԥ����Ϣ
	public String updateSalepre(SalePre salepre){
		String flat="fail";
		  Session session=HibernateSessionFactory.getsSession();
		
		   Transaction ts= session.beginTransaction();
		   try{
		       session.update(salepre);
		    	ts.commit();
		    	flat="success";
		    }catch (Exception e) {
				// TODO: handle exception
		    	e.printStackTrace();
			}
		    session.close();
		return flat;
	}
   
}
