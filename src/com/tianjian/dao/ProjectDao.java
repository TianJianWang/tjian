package com.tianjian.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.xml.crypto.Data;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import antlr.collections.List;


import com.tianjian.model.Project;
import com.tianjian.util.HibernateSessionFactory;
public class ProjectDao {
	/*
	 * 添加个人项目的方法，提交表单之后返回的是“addsuccess”或则“adderror”
	 * */
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
		  // System.out.println("DAO中的方法："+pro.toString());
		 return flag;
		 
		    }
	

	
	
	/*
	 * 
	 * 通过项目id删除项目
	 * 
	 * */
	public String deleteProject(int pro_id){
				
		
		
    String flag="deleteprojecterror";
		 HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();
		 Session session=HibernateSessionFactory.getsSession();
		 //   System.out.println(session);
		
		    try {
				Transaction ts=session.beginTransaction();
				
				
				Query query=session.createQuery("delete from Project where pro_id=?");
				
				query.setInteger(0, pro_id).executeUpdate();
				
				
				   ts.commit();  
				   
				   System.out.println("dao中的删除项目的方法session："+session);
				   
				   
				   
		
				   
				   
				   
				   HibernateSessionFactory.closeSession();
				   flag="deleteprojectsuccess";
						   
			} catch (HibernateException e) {
			
				e.printStackTrace();
			}			    			      		    
		    
		    return flag;
	}
		    
		    
		    
		    

			/*
			 * 
			 * 查询项目截止时间（pro_enddate）小于当前时间（now），并且项目所支持资金（support_money）达不到预期的资金项目(pro_wantedmoney)（即查询破产项目）
			 * 
			 * 
			 *当前支持资金需要从另外一张表中计算得出， 当前的支持资金暂且写为20000
			 * 
			 * 
			 * 
			 * */
		    public ArrayList listpassedProject(){
				ArrayList projectList=null;
				
				  HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();
					 Session session=HibernateSessionFactory.getsSession();
					 //   System.out.println(session);
					
					    try {
					    	
					    	 Date date = new Date();
					         
					         SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
					         
					        System.out.println(dateFormat);
							Transaction ts=session.beginTransaction();
							
							
							Query query=session.createQuery("from Project where pro_endDate<dateFormate and pro_wantedMoney<20");
							
						//	query.setInteger(0, user_id).executeUpdate();
							
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
					    System.out.println(projectList);
						return projectList;
				 } 
			
			
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
	/*
	 * 修改项目
	 * 
	 * 
	 * 
	 * */
	public String updateProject(Project pro){
		 
		String flag="updateerror";
		
		HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();
		 Session session=hibernateSessionFactory.getsSession();
		 try {
			Transaction ts=session.beginTransaction();
			   
			  System.out.println("dao中修改项目的方法session：1256"+session);
			    System.out.println(pro);
			    
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
	
	
	
	
	
	
	
	
	/*
	 * 
	 * 
	 * 
	 * 查询所有的项目
	 * 
	 * 
	 * 
	 * */
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

	
	
	
	
	
	/*
	 * 
	 * 此处需要得到用户的id作为参数传入，现在测试id记为 1
	 * */
	public ArrayList listallmyProject(){
		ArrayList projectList=null;
		
		  HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();
			 Session session=HibernateSessionFactory.getsSession();
			 //   System.out.println(session);
			
			    try {
					Transaction ts=session.beginTransaction();
					
					
					Query query=session.createQuery("from Project where userId=1");
					
				//	query.setInteger(0, user_id).executeUpdate();
					
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
			    System.out.println(projectList);
				return projectList;
		 } 
	
	
	
	/*
	 * 通过项目id列出一个项目的详细信息
	 * 
	 * */
	
	public ArrayList listdetailbyid(int pro_id){
		ArrayList projectList=null;
		
		  HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();
			 Session session=HibernateSessionFactory.getsSession();
			 //   System.out.println(session);
			
			    try {
					Transaction ts=session.beginTransaction();
					
					
					Query query=session.createQuery("from Project where pro_id=?");
					
					query.setInteger(0, pro_id);
					
					projectList=(ArrayList) query.list();
					
					   ts.commit();  
					   System.out.println("dao中的通过项目id查询项目的方法session："+session);
					   HibernateSessionFactory.closeSession();
				} catch (HibernateException e) {
				
					e.printStackTrace();
				}			    			      		    
			    
		
			   // session.update(pro);
			    System.out.println(projectList);
				return projectList;
		 } 
	
	
	
	/*
	 * 通过分页查询呢
	 * 
	 * 
	 * 
	 * 
	 * 
	 * */
	public ArrayList listprojectbypages(int page,int count){
		ArrayList<Project> projectList=new ArrayList<Project>();
	
		
		  HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();
			 Session session=HibernateSessionFactory.getsSession();
			 //   System.out.println(session);
			
			    try {
					Transaction ts=session.beginTransaction();
					 Criteria criteria=session.createCriteria(Project.class); 
					 criteria.setFirstResult((page-1)*count);
					 criteria.setMaxResults(count);
				 
					projectList=(ArrayList)criteria.list();
					
					System.out.println("254244534654534        *****"+           projectList.size());
					for(Project p:projectList){
						System.out.println("项目ID"+p.getPro_id());
						System.out.println("项目标题"+p.getPro_title());
						System.out.println("项目类型"+p.getPro_type());
					 
					}
					
					   ts.commit();  
					   System.out.println("dao中的通过项目id查询项目的方法session："+session);
					   HibernateSessionFactory.closeSession();
				} catch (HibernateException e) {
				
					e.printStackTrace();
				}			    			      		    
			    
		
			   // session.update(pro);
			    System.out.println(projectList);
				return projectList;
		 } 
	
	
	
	

 
	// 计算总页数（分页）
		public int listPage() {
		 int allpage=0;
		 ArrayList<Project> projectList;
		 HibernateSessionFactory hibernateSessionFactory=new HibernateSessionFactory();
		 Session session=HibernateSessionFactory.getsSession();
		 //   System.out.println(session);
		
		    try {
				Transaction ts=session.beginTransaction();
				 Criteria criteria=session.createCriteria(Project.class); 
				 //criteria.setFirstResult((page-1)*count);
				 //criteria.setMaxResults(count);
			 
				projectList=(ArrayList<Project>)criteria.list();
				Date date1 = new Date();
		        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		        String date2=dateFormat.format(date1);
		  
				System.out.println("254244534654534        *****"+           projectList.size());
				for(Project p:projectList){
					  String date=p.getPro_endDate();
					System.out.println();
					 
				 
				}
				
				   ts.commit();  
				   System.out.println("dao中的通过项目id查询项目的方法session："+session);
				   HibernateSessionFactory.closeSession();
			} catch (HibernateException e) {
			
				e.printStackTrace();
			}			    			      			      		    
			return allpage;
		}
	
	
	
 
	
	
	
	

}
