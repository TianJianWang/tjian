package com.tianjian.service;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionContext;
import com.tianjian.dao.TeamDao;
import com.tianjian.model.Team;
import com.tianjian.model.TeamApply;
import com.tianjian.model.TeamUser;
import com.tianjian.model.User;

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
		team=dao.listTeamById(teamUser.getTeam().getTeam_id());
		
		if(team.getPower_type().equals("one")){
			teamUser.setPower("no");
		}else if(team.getPower_type().equals("all")){
			teamUser.setPower("yes");
		}else {
			teamUser.setPower("no");
		}
		
		
		boolean flat=dao.addTeamUser(teamUser);
		//team�ܵ�����
//		if(flat){
//			int newNum=0;
//			newNum=team.getNum()-1;
//			team.setNum(newNum);
//			dao.updateTeam(team);
//		}
		return flat;
	}
    //查询出某个项目组的所有成员  
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
	
	public ArrayList<Team> listMyTeam(int userId){
		dao=new TeamDao();
		teamList=dao.listMyTeam(userId);
		return teamList;
		
	}
	//获取关于某个用户项目组的所有申请成员总数
	public int listteamApplyCountInfo(int userId){
		   
		 ArrayList<Team> teamList=listMyTeam(userId);
		 int n=0;
		 int applyCount=0;
		 for(Team team:teamList){
			 applyCount=applyCount+listTeamApplyCountByTeam(team.getTeam_id());
		 }
    	 return applyCount;
	}
	 
	public boolean addTeamApply(TeamApply apply){
		dao=new TeamDao();
		boolean flat=dao.addTeamApply(apply);
		return flat;
		
	}
	//查询某个项目组现有的申请人数
	public int listTeamApplyCountByTeam(int team_id){
		dao=new TeamDao();
		int teamApplyCount=Integer.parseInt(dao.listTeamApplyCountByTeam(team_id)+"");
		
		return teamApplyCount;
		
	}
	//删除项目组申请表中的一条数据
	public boolean deleteTeamApplyById(int id){
		dao=new TeamDao();
		boolean flat=dao.deleteTeamApplyById(id);
		return flat;
		
	}
	//查询出某个项目组的所有现有的申请人员
	public ArrayList<TeamApply> listTeamApplyByTeam(int team_id){
		dao=new TeamDao();
		applyList=dao.listTeamApplyByTeam(team_id);
		return applyList;
	}
	public ArrayList<TeamApply> listTeamApplyByUser(int team_id){
		User user=(User) ActionContext.getContext().getSession().get("User");
		UserService userService=new UserService();
		user=userService.listUserByEmail(user.getEmail());
		 ArrayList<Team> teamList=listMyTeam(user.getUser_id());
		dao=new TeamDao();
		applyList=new ArrayList<TeamApply>();
		for(Team team:teamList){
			applyList.addAll(dao.listTeamApplyByTeam(team.getTeam_id()));
		}
		return applyList;
	}
			
}
