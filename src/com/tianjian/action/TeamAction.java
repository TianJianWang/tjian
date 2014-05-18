package com.tianjian.action;

import java.util.ArrayList;

import com.tianjian.model.Team;
import com.tianjian.model.TeamApply;
import com.tianjian.model.TeamUser;
import com.tianjian.service.TeamService;

public class TeamAction {
	private Team team;
	private TeamApply teamApply;
	private TeamUser teamUser;
	private ArrayList<TeamApply> applyList;
	private ArrayList<TeamUser> teamUserList;
	private TeamService service;
	private int team_id;
	private int id;//TeamUser  id
	private long teamUserCount;
	public Team getTeam() {
		return team;
	}
	public void setTeam(Team team) {
		this.team = team;
	}
	public TeamApply getTeamApply() {
		return teamApply;
	}
	public void setTeamApply(TeamApply teamApply) {
		this.teamApply = teamApply;
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
	public String listTeamById(){
		service=new TeamService();
		team=service.listTeamById(team_id);
		teamUserCount=service.listTeamUserCount(team_id)+1;
		return "listTeamById";
	}
	//��ӣ������� ��Ŀ��
	public String addTeam(){
		service=new TeamService();
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
	public String listTeamApplyByTeam(){
		service=new TeamService();
		applyList=service.listTeamApplyByTeam(team_id);
		return "listTeamApplyByTeam";
	}
}
