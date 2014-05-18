package com.tianjian.dao;

import java.util.ArrayList;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.tianjian.model.Service;
import com.tianjian.model.ShortService;
import com.tianjian.util.HibernateSessionFactory;

public class ServiceDao {

Session session;
	public int addService(Service service) {
		int n=1;
		try{
		session=HibernateSessionFactory.getsSession();
		Transaction tran=session.beginTransaction();
		tran.begin();
		session.save(service);
		tran.commit();
		}
		catch (Exception e) {
			e.printStackTrace();
			n=0;
		}finally{
		HibernateSessionFactory.closeSession();
		return n;}
	}
//	private int ser_id;
//	private String com_name;
//	private int score;
//	
//	private String short_info;
//	private String com_url;
	@SuppressWarnings({ "finally", "unchecked" })
	public ArrayList<ShortService> queryShortService(int nowPage) {
		ArrayList<ShortService> list = null;
		try{
		session=HibernateSessionFactory.getsSession();
		Transaction tran=session.beginTransaction();
		tran.begin();
		Query query=session.createQuery("select new com.tianjian.model.ShortService(short.ser_id,short.com_name,short.score,short.short_info,short.com_url,short.com_picture)from Service short");
		query.setFirstResult((nowPage-1)*12);
		query.setMaxResults(12);
		list=(ArrayList<ShortService>)query.list();
		tran.commit();
		}
		catch (Exception e) {
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();
			return  list;
			}
		
	}

	public Service queryDetailService(int ser_id) {
		Service service = null;
		try{
		session=HibernateSessionFactory.getsSession();
		
		Transaction tran=session.beginTransaction();
		tran.begin();
		String hql="from Service ser where ser.ser_id=?";
		Query query=session.createQuery(hql);
		query.setInteger(0, ser_id);
		List list=query.list();
		tran.commit();
		service=(Service) list.get(0);
		System.out.println(service.getSer_type().getType_name()+"*************************");
	}
	catch (Exception e) {
		e.printStackTrace();
	}finally{
		HibernateSessionFactory.closeSession();
		
		return  service;
		}
	}

	public int delService(int ser_id) {
		int n=0;
		try{
		session=HibernateSessionFactory.getsSession();
		Transaction tran=session.beginTransaction();
		tran.begin();
		Query query=session.createQuery("delete from Service service where service.ser_id=?");
		query.setInteger(0, ser_id);
		n=query.executeUpdate();
		tran.commit();
	}
		catch (Exception e) {
			e.printStackTrace();
		}finally{
		HibernateSessionFactory.closeSession();
		
		return  n;
		}
	
	
	}

	public int alterService(Service service) {
		int n=1;
		if(delService(service.getSer_id())!=0){
			n=addService(service);
		}
		return n;
	}
	public int queryTotalCount() {
		int n=0;
		try{
		session=HibernateSessionFactory.getsSession();
		Transaction tran=session.beginTransaction();
		tran.begin();
		Query query=session.createQuery("select count(*) from Service ");
		List list = query.list();
		
		n=Integer.parseInt(list.get(0).toString());
		tran.commit();
	}
		catch (Exception e) {
			e.printStackTrace();
		}finally{
		HibernateSessionFactory.closeSession();
		
		return  n;
		}
	}

}
