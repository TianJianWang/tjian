package com.tianjian.test;



<<<<<<< HEAD
import org.hibernate.Session;
import org.hibernate.Transaction;

=======
import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.tianjian.dao.ProjectDao;
import com.tianjian.model.Project;
>>>>>>> d5bea18d015f03acd17dba41c04407989294e44b
import com.tianjian.model.SalePre;
import com.tianjian.util.HibernateSessionFactory;

public class Test {

	 public static void main(String[] args) {
<<<<<<< HEAD
		 SalePre salepre=new SalePre();
=======
		/* SalePre salepre=new SalePre();
>>>>>>> d5bea18d015f03acd17dba41c04407989294e44b
		salepre.setPre_info("产品 减价给您！");
		salepre.setPre_limit(20);
		salepre.setPre_money(50);
		salepre.setPro_id(2);
		
		salepre.setType_post("baoyou");
		 System.out.println("asfasdf");
//		HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();
	    Session session=HibernateSessionFactory.getsSession();
	    System.out.println(session);
	    Transaction ts=  session.beginTransaction();
	    session.save(salepre);
	   try {
		ts.commit();
	} catch ( Exception e) {
		e.printStackTrace();
	}  
<<<<<<< HEAD
	    session.close();
	 }
}
=======
	    session.close();*/
		 
	 }
	 

}

>>>>>>> d5bea18d015f03acd17dba41c04407989294e44b
