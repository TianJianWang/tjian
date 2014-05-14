package com.tianjian.test;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.tianjian.model.Finance;
import com.tianjian.model.SalePre;
import com.tianjian.util.HibernateSessionFactory;

public class Test {
	 public static void main(String[] args) {
//		 SalePre salepre=new SalePre();
//		salepre.setPre_info("产品 减价给您！");
//		salepre.setPre_limit(25);
//		salepre.setPre_money(550);
//		salepre.setPro_id(2);
//		salepre.setType_post("baoyou");
//		 System.out.println("asfasdf");
//		HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();
		Finance finance=new Finance();
	    
	    Session session=HibernateSessionFactory.getsSession();
	    System.out.println(session);
	    Transaction ts= session.beginTransaction();
//	    java.io.Serializable i= session.save(salepre);
//	    System.out.println("jiadian:"+i); 
	   try {
		ts.commit();
	} catch ( Exception e) {
		e.printStackTrace();
	}  
	    session.close();
	 }
}
