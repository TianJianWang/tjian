package com.tianjian.test;



import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.tianjian.dao.ProjectDao;
import com.tianjian.model.Project;
import com.tianjian.model.SalePre;
import com.tianjian.util.HibernateSessionFactory;

public class Test {

	public static  int daysBetween(Date early, Date late) {
        java.util.Calendar calst = java.util.Calendar.getInstance();
        java.util.Calendar caled = java.util.Calendar.getInstance();
        calst.setTime(early);
        caled.setTime(late);
        //设置时间为0时
        calst.set(java.util.Calendar.HOUR_OF_DAY, 0);
        calst.set(java.util.Calendar.MINUTE, 0);
        calst.set(java.util.Calendar.SECOND, 0);
        caled.set(java.util.Calendar.HOUR_OF_DAY, 0);
        caled.set(java.util.Calendar.MINUTE, 0);
        caled.set(java.util.Calendar.SECOND, 0);
 
        //得到两个日期相差的天数
        int days = ((int) (caled.getTime().getTime() / 1000) - (int) (calst
                .getTime().getTime() / 1000)) / 3600 / 24;
        return days;
    }
	
	 public static void main(String[] args) {
		 

 
  //  Date date1 = new Date();
    // String date=date1.toString();
     //String date2=date1.toGMTString();
     //System.out.println("dd"+date);
//    if(date1.getYear()>=date2.getYear()){
//    	
//    }else{
//    	
//    }
		 
//		 
//    Date date1 = new Date();
//      
//       SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        String date2=dateFormat.format(date1).toString();
//      System.out.println(date2+date2.length());
//      String [] date=date2.split("-");
//      int [] a1=new int[date.length];
//      for (int i = 0; i < date.length; i++) {
//		a1[i]=Integer.parseInt(date[i]);
//		System.out.println("分割后的"+date[i]);
//		System.out.println("分割后的"+a1[i]);
//	}
//    
//      for (int i = 0; i < date2.length(); i++) {  
//    	  System.out.println(date2.split("-").toString());
//		
//	}
//   
//      
      
///ProjectDao projectDao=new ProjectDao();
//	  projectDao.listPage();		/* SalePre salepre=new SalePre();
//		salepre.setPre_info("产品 减价给您！");
//		salepre.setPre_limit(20);
//		salepre.setPre_money(50);
//		salepre.setPro_id(2);
//		
//		salepre.setType_post("baoyou");
//		 System.out.println("asfasdf");
////		HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();
//	    Session session=HibernateSessionFactory.getsSession();
//	    System.out.println(session);
//	    Transaction ts=  session.beginTransaction();
//	    session.save(salepre);
//	   try {
//		ts.commit();
//	} catch ( Exception e) {
//		e.printStackTrace();
//	}  
//	    session.close();*/
//		 
		 
		 
	   
//	       for (int i = 0; i < date2.length(); i++) {
//			System.out.println(date2.split("-"));
//		}
		   Date d1=new Date("2010-09-09");
	        Date d2=new Date("2013-01-08");
	        
	        int a1=Integer.parseInt(new SimpleDateFormat("yyyy:mm:dd").format(d1).toString());
	        int a2=Integer.parseInt(new SimpleDateFormat("yyyy:mm:dd").format(d2).toString());
	       System.out.println("时间差"+(a1-a2));
		 
	 }
	 
        
        
     
     
        
        
}

