package com.tianjian.service;

import java.util.ArrayList;
import java.util.List;

import com.tianjian.dao.ProjectDao;
import com.tianjian.model.Project;

public class ProjectService {
	private ProjectDao prod;
	private ArrayList projectList;
	public ProjectService(){
		 prod=new ProjectDao();
	}
	
	
	
	
	public String addProject(Project pro) {
		String flag=prod.addProject(pro);
		System.out.println("Service中的添加项目的方法："+pro.toString());
		return flag;
		
	}
	
	
	
	
	
	
	
	
	
	
	public String deleteproject(Project pro){
		String flag=prod.deleteProject(pro);
		
		System.out.println("service 中的删除方法"+flag);
		
		
		
		return flag;
	}
	
	 
	
	
	
	
	public String updateProject( Project pro){
		
		String flag=prod.updateproject(pro);
		
		System.out.println("Service中的修改项目的方法："+pro.toString());
		return flag;
	}
	
	
	public ArrayList queryProject(){
		projectList=prod.queryProject();
		System.out.println("Service中的查询项目的方法：");
	
	return projectList;
	}
	
	

	public ArrayList listallmyProject(){
		projectList=prod.listallmyProject();
		System.out.println("Service中的查询个人所有项目的方法：");
	
	return projectList;
	}
	
	
	
	
	
	
	

}
