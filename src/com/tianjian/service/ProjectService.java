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
	//方法一
	public String addProject(Project pro) {
		String flag=prod.addProject(pro);
		System.out.println("Service中的添加项目的方法："+pro.toString());
		return flag;
	}
	//方法二
	public String deleteproject(int pro_id){
		String flag=prod.deleteProject(pro_id);
		System.out.println("service 中的删除方法"+flag);
		return flag;
	}
	//方法四
	public String updateProject(Project pro){
		String flag=prod.updateProject(pro);
		System.out.println("Service中的修改项目的方法：");
		return flag;
	}
	//方法五
	public ArrayList queryProject(){
		projectList=prod.queryProject();
		System.out.println("Service中的查询项目的方法：");
	return projectList;
	}
	//方法六
	public ArrayList listallmyProject(int userId){
		projectList=prod.listallmyProject(userId);
		System.out.println("Service中的查询个人所有项目的方法：");
	return projectList;
	}
	//方法七
	public ArrayList listdetailbyid(int pro_id){
		projectList=prod.listdetailbyid(pro_id);
		System.out.println("Service中的通过pro_id查询项目的方法：");
	return projectList;
	}
	//方法八
	public ArrayList listprojectbypage(int page,int count){
		projectList=prod.listprojectbypage(page, count);
		System.out.println("Service中的通过页码和每页查询的数目来查询项目的方法");
		System.out.println("总有项目为"+projectList.size());
	    return projectList;
	}
	public ArrayList listprojectbypro_type(String pro_type){
		projectList=prod.listprojectbypro_type(pro_type);
		System.out.println("service中通过项目类型查询项目的方法");
		System.out.println("该类型的总有项目为"+projectList.size());
	return projectList;
     }
}