package com.tianjian.service;

import java.util.ArrayList;
import java.util.List;

import com.tianjian.dao.ProjectDao;
import com.tianjian.model.Project;

public class ProjectService {
	Project pro;

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
	
	
	
	
	
	
	
	
	
	
	public String deleteproject(int pro_id){
		String flag=prod.deleteProject(pro_id);
		
		System.out.println("service 中的删除方法"+flag);
		
		
		
		return flag;
	}
	
	 
	
	
	
	
	public String updateProject(Project pro){
		
		String flag=prod.updateProject(pro);
		
		System.out.println("Service中的修改项目的方法：");
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
	
	
	public ArrayList listdetailbyid(int pro_id){
		projectList=prod.listdetailbyid(pro_id);
		System.out.println("Service中的通过pro_id查询项目的方法：");
	
	return projectList;
	
	
	}
	
}