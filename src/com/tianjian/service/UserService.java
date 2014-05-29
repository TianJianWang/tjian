package com.tianjian.service;

import java.util.ArrayList;
import java.util.List;

import javax.jws.soap.SOAPBinding.Use;

import org.hibernate.HibernateException;
import org.hibernate.Query;

import com.tianjian.dao.UserDAO;
import com.tianjian.model.User;
import com.tianjian.util.HibernateSessionFactory;

public class UserService {
       public UserDAO userDAO;
       public UserService(){
    	   userDAO=new UserDAO();
       }
     //��½У��
     public boolean checkLogin(String email,String password){
    	 return userDAO.checkLogin(email, password);
     }
       //��������
     public boolean forgetPassword(String email,String realname){
    	 return userDAO.forgetPassword(email,realname);
     } 
        
       //�޸�����
     public boolean changePassword(String email,String password){
    	  return userDAO.changePassword(email, password);
     } 
       //��ӻ�Ա
     public boolean addUser(User user){
   	      return userDAO.addUser(user);
     } 
     //��ѯ��Ϣ
     public User listUserByEmail(String email){
   	      return userDAO.listUserByEmail(email);     
   	      }
     //�޸���Ϣ
     public boolean updateUser(User user){
   	      return userDAO.updateUser(user);
     } 
       //�˳���½
       

}
