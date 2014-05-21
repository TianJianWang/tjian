package com.tianjian.action;
import java.io.File;
import java.util.ArrayList;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.tianjian.model.Project;
import com.tianjian.service.ProjectService;
import com.tianjian.util.Picture;

public class ProjectAction {
	private Project pro;
	private ProjectService pros;
	private ArrayList projectList;
	private File picture;
    private int pro_id;
	String pictureFileName;
	String pictureContentType;
	int page;
	int count;
	String pro_type;
public int getpage() {
		return page;
	}
	public void setpage(int page) {
		this.page = page;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}
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
public String deleteProject(){
		String flag=pros.deleteproject(pro_id);
		System.out.println("action 中的删除方法"+flag);
		return flag;
	}
public String updateProject(){
		String flag=pros.updateProject(pro);
		System.out.println("action 中 修改项目的方法 " +flag);
		return flag;
	}
public String queryProject(){
		projectList=pros.queryProject();
		System.out.println("action 中 查询项目的方法 " +projectList);
		return "querysuccess";
	}
public String listallmyProject(){
		projectList=pros.listallmyProject();
		System.out.println("action 中 查寻个人所有项目的方法 " +projectList);
	    ServletActionContext.getRequest().setAttribute("count", 10);
		return "listallmyProject";
	}
public String listdetailbyid(){
        System.out.println("action中通过id查寻一个项目的方法 " +pro.getPro_id());
	    projectList=pros.listdetailbyid(pro.getPro_id());
	    return "listdetailbyid";
}
public String listprojectbypage(){
	projectList=pros.listprojectbypage(page, count);
	System.out.println("action中的通过页码和每页查询的数目来查询项目的方法,总有项目"+projectList.size());
    return null;
}
public ArrayList listprojectbypro_type(){
	projectList=pros.listprojectbypro_type(pro_type);
	System.out.println("action中通过项目类型查询项目的方法");
	System.out.println("该类型的总有项目为"+projectList.size());
return projectList;
 }
	

}
