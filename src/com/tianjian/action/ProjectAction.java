package com.tianjian.action;


import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;

import com.opensymphony.xwork2.ActionContext;
import com.tianjian.model.Project;

import com.tianjian.service.ProjectService;
import com.tianjian.util.Picture;




public class ProjectAction {
	
	private Project pro;
	private ProjectService pros;
	private ArrayList projectList;
	private File picture;
	String pictureFileName;
	String pictureContentType;
	
	public File getPicture() {
		return picture;
	}


	public void setPicture(File picture) {
		this.picture = picture;
	}


	public String getPictureFileName() {
		return pictureFileName;
	}


	public void setPictureFileName(String pictureFileName) {
		this.pictureFileName = pictureFileName;
	}


	public String getPictureContentType() {
		return pictureContentType;
	}


	public void setPictureContentType(String pictureContentType) {
		this.pictureContentType = pictureContentType;
	}


	public ProjectService getPros() {
		return pros;
	}


	public void setPros(ProjectService pros) {
		this.pros = pros;
	}


	public ArrayList getProjectList() {
		return projectList;
	}


	public void setProjectList(ArrayList projectList) {
		this.projectList = projectList;
	}


	public Project getPro() {
		return pro;
	}

	public void setPro(Project pro) {
		this.pro = pro;
	}
	
	public ProjectAction(){
		  pros=new ProjectService();
	}
	
	public String addProject(){
		Picture pic=new Picture();
		String fileName=pic.addPicture(picture, pictureFileName, pictureContentType);
		System.out.println("zhesiasdnfklasndlfkn as"+fileName);
		pro.setPro_picture(fileName);
		String flat=pros.addProject(pro);
		ActionContext ac = ActionContext.getContext();
		ac.getSession().put("project",pro);
		System.out.println("action 中 添加项目的方法 " +flat);
		return flat;		
	
	}
	
	
	
	
	public String deleteproject(){
		String flag=pros.deleteproject(pro);
		System.out.println("action 中的删除方法"+flag);
		return flag;
		
	}
	
	
	

	public String updateProject(){
		String flag=pros.updateProject(pro);
		System.out.println("action 中 修改项目的方法 " +flag);
		return flag;
	}
		
	
	public String queryProject(){
		
			   //返回的是一个集合
		projectList=pros.queryProject();
		System.out.println("action 中 查询项目的方法 " +projectList);
			 
		return "querysuccess";
	
	}
	
	public String listallmyProject(){
		
			   //返回的是一个集合
		projectList=pros.queryProject();
		System.out.println("action 中 查寻个人所有项目的方法 " +projectList);
			 
		return "listallmyProject";
	
	}
	
	

	
	
	

}
