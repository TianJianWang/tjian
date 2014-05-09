package com.tianjian.dao;

import java.util.ArrayList;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import antlr.collections.List;

import com.tianjian.model.Project;
import com.tianjian.util.HibernateSessionFactory;
public class ProjectDao {
	
	public String addProject(Project pro) {
		String flag="adderror";
		HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();
		 Session session=hibernateSessionFactory.getsSession();
		   System.out.println("dao中添加项目的方法："+session);
		    try {
				Transaction ts=session.beginTransaction();
				session.save(pro);
				   ts.commit();  
				   System.out.println("dao中添加项目的方法session："+session);
				   HibernateSessionFactory.closeSession();
				   flag="addsuccess";
				  
			} catch (HibernateException e) {
			
				e.printStackTrace();
				
			}
		   // session.update(pro);
		    
		    
		   // System.out.println("DAO中的方法："+pro.toString());
		 return flag;
		 
		    }
	
	
	
	public String updateproject( Project pro){
		 
		String flag="updateerror";
		
		HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();
		 Session session=hibernateSessionFactory.getsSession();
		 try {
			Transaction ts=session.beginTransaction();
			   
				session.update(pro);
				   ts.commit();  
				   
				   System.out.println("dao中修改项目的方法session："+session);
				   HibernateSessionFactory.closeSession();
				   
				   flag="updatesuccess";
				   
				   
				   
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flag;
		
	}
	
	
	
	
	public ArrayList queryProject(){
		ArrayList projectList=null;
		
		  HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();
			 Session session=HibernateSessionFactory.getsSession();
			 //   System.out.println(session);
			
			    try {
					Transaction ts=session.beginTransaction();
					Query query=session.createQuery("from Project");
					projectList=(ArrayList) query.list();
					   ts.commit();  
					   System.out.println("dao中的查询项目的方法session："+session);
					   HibernateSessionFactory.closeSession();
				} catch (HibernateException e) {
				
					e.printStackTrace();
					
				}
			   // session.update(pro);
				return projectList;
		 } 

	
	
	
	
	
	
	public ArrayList listallmyProject(){
		ArrayList projectList=null;
		
		  HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();
			 Session session=HibernateSessionFactory.getsSession();
			 //   System.out.println(session);
			
			    try {
					Transaction ts=session.beginTransaction();
					
					
					Query query=session.createQuery("from Project where Project.userId=User.user_id");
					
					
					
					projectList=(ArrayList) query.list();
					   ts.commit();  
					   System.out.println("dao中的查询项目的方法session："+session);
					   HibernateSessionFactory.closeSession();
				} catch (HibernateException e) {
				
					e.printStackTrace();
					
				}
			    
			    
			    
			    
			    
			    /*
			     * 
			     * String sql="select * from user_table where username=? and password=?"
			     *  SQLQuery query=getSession().createSQLQuery(sql).addEntity(UserTable.class);
                    query.setString(0,username);
       query.setString(1,password);
			     * */
			   // session.update(pro);
				return projectList;
		 } 
	
	
	
	

}
