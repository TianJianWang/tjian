package com.tianjian.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.tianjian.model.User;
import com.tianjian.util.HibernateSessionFactory;

public class UserDAO {
	private Session session;
	

	// ��½У��
	public boolean checkLogin(String email, String password) {
		@SuppressWarnings("unused")
		boolean flag = false;
		User user =null;	
		try {
			session = HibernateSessionFactory.getsSession();
			String hql = "from User as user where user.email=?";
			Query query = session.createQuery(hql);
			System.out.println(email);
			query.setParameter(0, email);
			 
			user = (User) query.uniqueResult();
			HibernateSessionFactory.closeSession();
		 
			if(user==null){
				flag=false;
			
			 }else{
				
					if (user.getPassword().equals(password)) {
						flag = true;
					   } else {
						flag = false;
					            }
				                       }
			       
			
		} catch (HibernateException e) {
			flag = false;
			e.printStackTrace();
		}

		return flag;
	}

	// �������
	public boolean forgetPassword(String email,String realname) {
		session = HibernateSessionFactory.getsSession();
	    boolean flag = false;
		List<User> users = new ArrayList<User>();
		String hql = "from User as user where user.email=?";
		Query query = session.createQuery(hql);
		query.setParameter(0, email);
		users = query.list();
		HibernateSessionFactory.closeSession();
		if(users==null){
			return flag;
		 }else{
			for (User user:users) {
				System.out.println(realname);
				if (user.getEmail().trim().equals(email)) {
					if(realname.equals(user.getRealname().trim())){
						flag = true;
					}
				
				   }else 
				   {
					flag = false;
				            }
			                       }
		          }
		return flag;
	}

	// �޸�����
	public boolean changePassword(String email, String password) {
		boolean flag = true;
		int count=0;
		try {
			session = HibernateSessionFactory.getsSession();
			session.beginTransaction();
			String hql = "update User user set user.password=? where email=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, password);
			query.setParameter(1, email);
	        count=query.executeUpdate();
			session.getTransaction().commit();
			HibernateSessionFactory.closeSession();
		} catch (HibernateException e) {
			flag = false;
			e.printStackTrace();
		}

		if (count==1) {
			return true;
		} else {
			return false;
		}

	}

	// ��ӻ�Ա
	public boolean addUser(User user) {
		boolean flag = true;
		try {
			session = HibernateSessionFactory.getsSession();
			session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();
			HibernateSessionFactory.closeSession();
		} catch (HibernateException e) {
			flag = false;
			e.printStackTrace();
		}

		if (flag) {
			return true;
		} else {
			return false;
		}

	}

	// ��ѯ������Ϣ
	public User listUserByEmail(String email) {
		session = HibernateSessionFactory.getsSession();
		List<User> users=new ArrayList<User>();
		User user = new User();
		boolean flag = true;
		try {
			Criteria c = session.createCriteria(User.class);
			c.add(Restrictions.eq("email", email));
			users = c.list();
			if(users.size()!=0){
				for (User u:users) {
					user.setUser_id(u.getUser_id());
					user.setEmail(u.getEmail());
					user.setPassword(u.getPassword());
					user.setNickname(u.getNickname());
					user.setRealname(u.getRealname());
					user.setIdcard(u.getIdcard());
					user.setUser_address(u.getUser_address());
					user.setUser_picture(u.getUser_picture());
					user.setProfession(u.getProfession());
					user.setUser_info(u.getUser_info());
					user.setUnionId(u.getUnionId());
					user.setUnionType(u.getUnionType());
					 
			                         }			
			  }else{    
				  System.out.println("DAO��ѯ��Ϣ�����ڽ��" + users.size());
			            return null;        	  
			                      }
			HibernateSessionFactory.closeSession();
		} catch (HibernateException e) {
			flag = false;
			e.printStackTrace();
		}
		if (user != null) {
			return user;
		} else {
			return null;
		}

	}

	// �޸���Ϣ
	public boolean updateUser(User user) {
		boolean flag = true;
		try {

			session = HibernateSessionFactory.getsSession();
			session.beginTransaction();
			session.saveOrUpdate(user);
			session.getTransaction().commit();
			HibernateSessionFactory.closeSession();
		} catch (HibernateException e) {
			flag = false;
			e.printStackTrace();
		}

		if (flag) {
			return true;
		} else {
			return false;
		}

	}

	// �˳���½
	public boolean exitLogin(String email) {
		boolean flag = true;
		try {
			HibernateSessionFactory.closeSession();
		} catch (HibernateException e) {
			flag = false;
			e.printStackTrace();
		}

		if (flag) {
			return true;
		} else {
			return false;
		}

	}
    //ɾ����Ϣ
	public boolean deleteUser(String email) {
		boolean flag = true;
		int count=0;
		try {
		session=HibernateSessionFactory.getsSession();
		Transaction ts=session.beginTransaction();
		String hql="delete User as user where user.email=?";
		Query query=session.createQuery(hql);
		query.setParameter(0, email);
		count=query.executeUpdate();
		ts.commit();
		HibernateSessionFactory.closeSession();
		
			
		} catch (HibernateException e) {
			flag = false;
			e.printStackTrace();
		}

		if (count==1) {
			return true;
		} else {
			return false;
		}

	}
}
