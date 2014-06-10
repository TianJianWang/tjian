package com.tianjian.action;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;

import sun.org.mozilla.javascript.internal.Context;
import sun.org.mozilla.javascript.internal.ContextAction;

import com.opensymphony.xwork2.ActionContext;
import com.tianjian.model.Team;
import com.tianjian.model.TeamApply;
import com.tianjian.model.TeamUser;
import com.tianjian.model.User;
import com.tianjian.service.TeamService;
import com.tianjian.service.UserService;
import com.tianjian.util.Picture;

public class TeamAction {
	private Team team;
	private TeamApply apply;
	private TeamUser teamUser;
	private ArrayList<Team> teamList;
	private ArrayList<TeamApply> applyList;
	private ArrayList<TeamUser> teamUserList;
	private TeamService service;
	private int team_id;
	private int id;//TeamUser  id  or  TeamApply id
	private long teamUserCount;
	private File picture;
	private String pictureFileName;
	private String pictureContentType;
	
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
	public ArrayList<Team> getTeamList() {
		return teamList;
	}
	public void setTeamList(ArrayList<Team> teamList) {
		this.teamList = teamList;
	}
	public long getTeamUserCount() {
		return teamUserCount;
	}
	public void setTeamUserCount(long teamUserCount) {
		this.teamUserCount = teamUserCount;
	}
	public Team getTeam() {
		return team;
	}
	public void setTeam(Team team) {
		this.team = team;
	}
	public TeamApply getApply() {
		return apply;
	}
	public void setApply(TeamApply apply) {
		this.apply = apply;
	}
	public TeamUser getTeamUser() {
		return teamUser;
	}
	public void setTeamUser(TeamUser teamUser) {
		this.teamUser = teamUser;
	}
	public ArrayList<TeamApply> getApplyList() {
		return applyList;
	}
	public void setApplyList(ArrayList<TeamApply> applyList) {
		this.applyList = applyList;
	}
	public ArrayList<TeamUser> getTeamUserList() {
		return teamUserList;
	}
	public void setTeamUserList(ArrayList<TeamUser> teamUserList) {
		this.teamUserList = teamUserList;
	}
	
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	//��ѯ��Ŀ����Ϣ ����Ա����
	public String listTeam(){
		service=new TeamService();
		teamList=service.listTeam();
//		teamUserCount=service.listTeamUserCount(team_id)+1;
		System.out.println("�ɹ���");
		return "listTeam";
		
	}
	public String listTeamById(){
		service=new TeamService();
		team=service.listTeamById(team_id);
		teamUserCount=service.listTeamUserCount(team_id)+1;
		return "listTeamById";
	}
	public String listTeamDetail(){
		service=new TeamService();
		team=service.listTeamById(team_id);
		teamUserCount=service.listTeamUserCount(team_id)+1;
		//listProjectById
		//listUserById
		return "listTeamDetail";
	}
	//��ӣ�����)��Ŀ��
	public String addTeam(){
		Picture uplod=new Picture();
		String picName=uplod.addPicture(picture, pictureFileName, pictureContentType);
		team.setTeam_picture(picName);
		service=new TeamService();
		System.out.println("daozhemei a "+team);
		boolean flat=service.addTeam(team);
		if(flat){
			return "addTeam";
		}else 
		return "fail";
	}
	
	//�ڴ���Ŀ��������³�Ա
	public String addTeamUser(){
		service=new TeamService();
		boolean flat=service.addTeamUser(teamUser);
		if(flat){
			return "addTeamUser";
		}else
		return "fail";
	}
	//����ڴ���Ŀ���е����г�Ա
	public String listTeamUserByTeam(){
		service=new TeamService();
		teamUserList=service.listTeamUserByTeam(team_id);
		return "listTeamUserByTeam";
	}
	//ɾ����Ŀ���Ա ͨ��id 
	public String deleteTeamUser(){
		boolean flat=service.deleteTeamUser(id);
		if(flat){
			return "deleteTeamUser";
		}else
		return "fail";
	}
	public String addTeamApply(){
		if(apply.getTime()==null||"".equals(apply.getTime())){
			apply.setTime(new Date().toLocaleString());
		}
		service=new TeamService();
		boolean flat=service.addTeamApply(apply);
		if(flat){
			return "addTeamApply";
		}else
		return "fail";
	}
	public String deleteApplyAndAddTeamUser(){
		teamUser.setTime(new Date().toLocaleString());
		service=new TeamService();
		team=service.listTeamById(team_id);
		String power=team.getPower_type();
		if("none".equals(power)){
			teamUser.setPower("no");
		}else if("all".equals(power)){
			teamUser.setPower("yes");
		}else teamUser.setPower("many");
		boolean flat=service.deleteTeamApplyById(apply.getId());
		if(flat){
			boolean flat1=service.addTeamUser(teamUser);
			if(flat1){
				
				
				User user=(User) ActionContext.getContext().getSession().get("User");
				UserService userService=new UserService();
				 user=userService.listUserByEmail(user.getEmail());
	    		 System.out.println(user);
	    		 int applyCount= service.listteamApplyCountInfo(user.getUser_id());//往session中放入关于该用户项目组的申请成员数量 用于显示在用户个人中心
	    		 ActionContext.getContext().getSession().put("applyCount", applyCount);
				
	    		 
	    		 return "deleteApplyAndAddTeamUser";
			}else return "fail";
		}else return "fail";
	}
	public String deleteApply(){
		service=new TeamService();
		boolean flat=service.deleteTeamApplyById(apply.getId());
		if(flat){
			
			User user=(User) ActionContext.getContext().getSession().get("User");
			UserService userService=new UserService();
			 user=userService.listUserByEmail(user.getEmail());
    		 System.out.println(user);
    		 int applyCount= service.listteamApplyCountInfo(user.getUser_id());//往session中放入关于该用户项目组的申请成员数量 用于显示在用户个人中心
    		 ActionContext.getContext().getSession().put("applyCount", applyCount);
			
    		 return "deleteApply";
		}else
		return "fail";
	}
	//根据某个用户查出关于他的项目组的申请所有数据
	public String listTeamApplyByTeam(){
		System.out.println("team_id"+team_id);
		service=new TeamService();
		applyList=service.listTeamApplyByUser(team_id);
		return "listTeamApplyByTeam";
	}
}
