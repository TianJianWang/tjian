package com.tianjian.action;

import java.util.ArrayList;
import java.util.Date;

import com.tianjian.model.Team;
import com.tianjian.model.TeamApply;
import com.tianjian.model.TeamUser;
import com.tianjian.service.TeamService;

public class TeamAction {
	private Team team;
	private TeamApply apply;
	private TeamUser teamUser;
	private ArrayList<Team> teamList;
	private ArrayList<TeamApply> applyList;
	private ArrayList<TeamUser> teamUserList;
	private TeamService service;
	private int team_id;
	private int id;//TeamUser  id
	private long teamUserCount;
	
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
	//查询项目组信息 及成员人数
	public String listTeam(){
		service=new TeamService();
		teamList=service.listTeam();
		teamUserCount=service.listTeamUserCount(team_id)+1;
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
	//添加（创建） 项目组
	public String addTeam(){
		service=new TeamService();
		boolean flat=service.addTeam(team);
		if(flat){
			return "addTeam";
		}else
		return "fail";
	}
	
	//在此项目组中添加新成员
	public String addTeamUser(){
		service=new TeamService();
		boolean flat=service.addTeamUser(teamUser);
		if(flat){
			return "addTeamUser";
		}else
		return "fail";
	}
	//查出在此项目组中的所有成员
	public String listTeamUserByTeam(){
		service=new TeamService();
		teamUserList=service.listTeamUserByTeam(team_id);
		return "listTeamUserByTeam";
	}
	//删除项目组成员 通过id 
	public String deleteTeamUser(){
		boolean flat=service.deleteTeamUser(id);
		if(flat){
			return "deleteTeamUser";
		}else
		return "fail";
	}
	public String addTeamApply(){
		if(apply.getTime()==null||"".equals(apply.getTime())){
			apply.setTime(new Date().toGMTString());
		}
		service=new TeamService();
		boolean flat=service.addTeamApply(apply);
		if(flat){
			return "addTeamApply";
		}else
		return "fail";
		
	}
	public String listTeamApplyByTeam(){
		service=new TeamService();
		applyList=service.listTeamApplyByTeam(team_id);
		return "listTeamApplyByTeam";
	}
}
