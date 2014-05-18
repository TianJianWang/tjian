package com.tianjian.service;

import java.util.ArrayList;

import com.tianjian.dao.TeamDao;
import com.tianjian.model.Team;
import com.tianjian.model.TeamApply;
import com.tianjian.model.TeamUser;

public class TeamService {
	private Team team;
	private TeamUser teamUser;
	private TeamApply teamApply;
	private ArrayList<Team> teamList;
	private ArrayList<TeamUser> teamUserList;
	private ArrayList<TeamApply> applyList;
	private TeamDao dao;
	public Team listTeamById(int team_id){
		dao=new TeamDao();
		team=dao.listTeamById(team_id);
		return team;
	}
	public boolean addTeam(Team team){
		dao=new TeamDao();
		boolean flat=dao.addTeam(team);
		return flat;
	}
	
	public boolean updateTeam(Team team){
		dao=new TeamDao();
		boolean flat=dao.updateTeam(team);
		return flat;
		
	}
	public ArrayList<Team> listTeam(){
		dao=new TeamDao();
		teamList=dao.listTeam();
		return teamList;
	}
	public boolean addTeamUser(TeamUser teamUser){
		dao=new TeamDao();
		team=dao.listTeamById(teamUser.getTeam_id());
		
		if(team.getPower_type().equals("one")){
			teamUser.setPower("no");
		}else if(team.getPower_type().equals("all")){
			teamUser.setPower("yes");
		}else {
			teamUser.setPower("no");
		}
		
		
		boolean flat=dao.addTeamUser(teamUser);
		//team总的人数
//		if(flat){
//			int newNum=0;
//			newNum=team.getNum()-1;
//			team.setNum(newNum);
//			dao.updateTeam(team);
//		}
		return flat;
	}
	public boolean addTeamApply(TeamApply apply){
		dao=new TeamDao();
		boolean flat=dao.addTeamApply(apply);
		return flat;
		
	}
	public ArrayList<TeamUser> listTeamUserByTeam(int team_id){
		dao=new TeamDao();
		teamUserList=dao.listTeamUserByTeam(team_id);
		return teamUserList;
	}
	public boolean deleteTeamUser(int id){
		dao=new TeamDao();
		boolean flat=dao.deleteTeamUser(id);
		return flat;
	}
	public long listTeamUserCount(int team_id){
		dao=new TeamDao();
		long teamUserCount=dao.listTeamUserCout(team_id);
		return teamUserCount;
	}
	public ArrayList<TeamApply> listTeamApplyByTeam(int team_id){
		dao=new TeamDao();
		applyList=dao.listTeamApplyByTeam(team_id);
		return applyList;
	}
			
}
