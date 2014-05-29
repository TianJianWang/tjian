package com.tianjian.action;

 

import java.io.File;

import com.opensymphony.xwork2.ActionContext;
import com.tianjian.model.User;
import com.tianjian.service.UserService;
import com.tianjian.service.imageService;
import com.tianjian.util.Picture;

public class UserAction {
	  private UserService userService;
      private  User   user;
	  private imageService imageService;
	  private String email;
	 
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	  
	  public UserAction(){
		  user=new User();
		  userService=new UserService();
		  
	  }
	  
	  
	 //登陆校验
     public String checkLogin(){
    	 System.out.println("password="+user.getPassword());
    	 System.out.println("username="+user.getEmail());
    	 boolean check=false; 
    	 check=userService.checkLogin(user.getEmail(), user.getPassword());
    	 
    	 if(check){
    		 ActionContext.getContext().getSession().put("User", user);    
    		 return "success";
    	 }else{
    		 return "failure";
    		
    	 }
     }
     
     
      //忘记密码
     public String forgetPassword(){
    	 boolean check=false;      	  
    	 check=userService.forgetPassword(user.getEmail().trim(),user.getRealname().trim());
    	 if(check){
    		 return "success";
    	 }else{
    		 return "failure";
    	 }
     }
       
     
      //修改密码
     public String changePassword(){
    	 boolean check=false;
    	 check=userService.changePassword(user.getEmail().trim(), user.getPassword().trim());
    	 if(check){
    		 return "success";
    	 }else{
    		 return "failure";
    	 }
     }
     
     
      //添加会员
     public String addUser(){
    	 boolean check=false;
    	 check=userService.addUser(user);
    	 if(check){
    		 return "success";
    	 }else{
    		 return "failure";
    	 }
     }
     
     //查询信息
     public String listUser(){
    	 boolean check=false;
    	 user=userService.listUserByEmail(email);
    	 if(user!=null){
    		 return "success";
    	 }else{
    		 return "failure";
    	 }
     }
      public imageService getImageService() {
		return imageService;
	}
	public void setImageService(imageService imageService) {
		this.imageService = imageService;
	}
	
	//修改信息
     public String updateUser(){
    	 boolean check=false;
    	
    	if(imageService!=null) {
    		imageService.upload();    		 
    			user.setUser_picture("images/"+imageService.getReimageFileName());    		 
    	}else{
    		User user2=userService.listUserByEmail((String)ActionContext.getContext().getSession().get("User"));
    		user.setUser_picture(user2.getUser_picture());
    	}
             
             check=userService.updateUser(user);	    	
     	 if(check){
    		 return "success";
    	 }else{
    		 return "failure";
    	 }
     }
     
     
      //退出登陆
     public String exitLogin(){        	 
         ActionContext.getContext().getSession().clear();    		     
    	 return "success";
     }  
}
