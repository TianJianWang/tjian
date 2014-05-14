package com.tianjian.util;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import org.hibernate.cfg.Configuration;

public class HibernateSessionFactory {
	 private static String CONFIG_FILE_LOCATION="/hibernate.cfg.xml";
	 private static final ThreadLocal<Session> threadLocal=new ThreadLocal<Session>();
	 private static Configuration configuration=new Configuration();
     //创建configuration实例
	  private static org.hibernate.SessionFactory sessionFactory;
	  private static String configFile=CONFIG_FILE_LOCATION;
	  //初始化sessionfactory，只执行一次
	static{
		
		try {
			configuration.configure(configFile);  //读取配置文件
			sessionFactory=configuration.buildSessionFactory(); //构建sessionfactory对象
		} catch ( Exception e) {
			e.printStackTrace();
		}
	      }
	
	public static Session getsSession() throws HibernateException{
		Session session=threadLocal.get();
		if(session==null||!session.isOpen()){
			if(sessionFactory==null){
				rebuildSessionFactory();
			}
			session=(sessionFactory!=null)?sessionFactory.openSession():null;
			threadLocal.set(session);
		}
		return session;
	}
	
	public static void rebuildSessionFactory(){
		try {
			configuration.configure(configFile);  //读取配置文件
			sessionFactory=configuration.buildSessionFactory(); //构建sessionfactory对象
		} catch ( Exception e) {
			e.printStackTrace();
		}
	      
	
	}
	
	
	
	public static void closeSession() throws HibernateException{
		Session session=threadLocal.get();
		threadLocal.set(null);
		if(session!=null){
			session.close();
		}
	}
}
