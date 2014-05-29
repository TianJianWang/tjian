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
     //登陆校验
     public boolean checkLogin(String email,String password){
    	 return userDAO.checkLogin(email, password);
     }
       //忘记密码
     public boolean forgetPassword(String email,String realname){
    	 return userDAO.forgetPassword(email,realname);
     } 
        
       //修改密码
     public boolean changePassword(String email,String password){
    	  return userDAO.changePassword(email, password);
     } 
       //添加会员
     public boolean addUser(User user){
   	      return userDAO.addUser(user);
     } 
     //查询信息
     public User listUserByEmail(String email){
   	      return userDAO.listUserByEmail(email);     
   	      }
     //修改信息
     public boolean updateUser(User user){
   	      return userDAO.updateUser(user);
     } 
       //退出登陆
       

}
