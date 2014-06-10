package com.tianjian.dao;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.tianjian.model.Finance;
import com.tianjian.model.FinanceItem;
import com.tianjian.model.Team;
import com.tianjian.model.TeamApply;
import com.tianjian.model.TeamUser;
import com.tianjian.util.HibernateSessionFactory;

public class TeamDao {
	private Team team;
	private TeamUser teamUser;
	private TeamApply teamApply;
	private ArrayList<Team> teamList;
	private ArrayList<TeamUser> teamUserList;
	private ArrayList<TeamApply> applyList;
	
	//��team_id��ѯ��Ŀ����Ϣ 
	public Team listTeamById(int team_id){
		System.out.println("team_id:"+team_id);
	    Session session=HibernateSessionFactory.getsSession();
	    Transaction ts= session.beginTransaction();
//	    team=(Team) session.get(Team.class,team_id);
	    System.out.println("team_id="+team_id);
	    team= (Team) session.createQuery("from Team where  team_id=?").setParameter(0,team_id).uniqueResult();
	   
	    	
	        System.out.println("������"+team.getProject().getPro_title());

	
	    System.out.println("������"+team.getUser().getEmail());
	   try {
		ts.commit();
	} catch ( Exception e){
		e.printStackTrace();
	}  
	    session.close();
		return team;
		
	}
	//�����Ŀ��
	public boolean addTeam(Team team){
		boolean flat=false;
	    Session session=HibernateSessionFactory.getsSession();
	    try {
	    Transaction ts= session.beginTransaction();
	     session.save(team);
	    flat=true;
		ts.commit();
	} catch ( Exception e) {
		e.printStackTrace();
	}  
	    session.close();
		return flat;
		
	}
	//�޸���Ŀ�����Ϣ
	public boolean updateTeam(Team team){
	    boolean flat=false;
		Session session=HibernateSessionFactory.getsSession();
		Transaction ts= session.beginTransaction();
		try {
			session.update(team);
			flat=true;
			ts.commit();
		}catch ( Exception e){
			e.printStackTrace();
		}  
		session.close();
		return flat;
	}
	public boolean addTeamUser(TeamUser teamUser){
		boolean flat=false;
	    Session session=HibernateSessionFactory.getsSession();
	    try {
	    Transaction ts= session.beginTransaction();
	    System.out.println(teamUser);
	     session.save(teamUser);
	    flat=true;
		ts.commit();
	} catch ( Exception e) {
		e.printStackTrace();
	}  
	    session.close();
		return flat;
	}
	public boolean addTeamApply(TeamApply apply){
		boolean flat=false;
		Session session=HibernateSessionFactory.getsSession();
		try {
			Transaction ts= session.beginTransaction();
			session.save(apply);
			flat=true;
			ts.commit();
		} catch ( Exception e) {
			e.printStackTrace();
		}  
		session.close();
		return flat;
	}
	public ArrayList<TeamUser> listTeamUserByTeam(int team_id){
		  Session session=HibernateSessionFactory.getsSession();
		    Transaction ts= session.beginTransaction();
		    teamUserList=(ArrayList<TeamUser>) session.createQuery("from TeamUser where  team_id=?").setParameter(0, team_id).list();
		    System.out.println("������"+teamUser);
		   try {
			ts.commit();
		} catch ( Exception e) {
			e.printStackTrace();
		}  
		    session.close();
		return teamUserList;
	}
	public ArrayList<Team> listTeam(){
		Session session=HibernateSessionFactory.getsSession();
		Transaction ts= session.beginTransaction();
		teamList=(ArrayList<Team>) session.createQuery("from Team").list();
		for(Team team:teamList){
		team.getProject().getPro_title();
		}
		try {
			ts.commit();
		} catch ( Exception e) {
			e.printStackTrace();
		}  
		session.close();
		return teamList;
	}
	public ArrayList<Team> listMyTeam(int userId){
		Session session=HibernateSessionFactory.getsSession();
		Transaction ts= session.beginTransaction();
		teamList=(ArrayList<Team>) session.createQuery("from Team where header=?").setParameter(0, userId).list();
		for(Team team:teamList){
			team.getProject().getPro_title();
		}
		try {
			ts.commit();
		} catch ( Exception e) {
			e.printStackTrace();
		}  
		session.close();
		return teamList;
	}
	public boolean deleteTeamUser(int id){
		boolean flat=false;
		Session session=HibernateSessionFactory.getsSession();
		System.out.println(session);
		Transaction ts= session.beginTransaction();
		try{
			session.createQuery("delete TeamUser as user where user.id=?").setParameter(0, id).executeUpdate();
			ts.commit();
			flat=true;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if(session!=null){
			session.close();
			}
		return flat;
	}
	public boolean deleteTeamApplyById(int id){
		boolean flat=false;
		Session session=HibernateSessionFactory.getsSession();
		System.out.println(session);
		Transaction ts= session.beginTransaction();
		try{
			session.createQuery("delete TeamApply as ap where ap.id=?").setParameter(0, id).executeUpdate();
			ts.commit();
			flat=true;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if(session!=null){
			session.close();
		}
		return flat;
	}
	public long listTeamUserCout(int team_id){
		System.out.println("team_id:"+team_id);
	    Session session=HibernateSessionFactory.getsSession();
	    Transaction ts= session.beginTransaction();
	   long teamUserCount=  (Long) session.createQuery("select count(id) from TeamUser where  team_id=?").setParameter(0,team_id).uniqueResult();
	   try {
		ts.commit();
	} catch ( Exception e){
		e.printStackTrace();
	}  
	    session.close();
		return teamUserCount;
		
	}
	public long listTeamApplyCountByTeam(int team_id){
		System.out.println("team_id:"+team_id);
		Session session=HibernateSessionFactory.getsSession();
		Transaction ts= session.beginTransaction();
		long teamUserCount=  (Long) session.createQuery("select count(id) from TeamApply where  team_id=?").setParameter(0,team_id).uniqueResult();
		try {
			ts.commit();
		} catch ( Exception e){
			e.printStackTrace();
		}  
		session.close();
		return teamUserCount;
		
	}
	public ArrayList<TeamApply> listTeamApplyByTeam(int team_id){
		  Session session=HibernateSessionFactory.getsSession();
		    Transaction ts= session.beginTransaction();
		    applyList=(ArrayList<TeamApply>) session.createQuery("from TeamApply t where  t.team.team_id=?").setParameter(0, team_id).list();
		    for(TeamApply apply:applyList){
		    	apply.getTeam().getMajor();
		    	apply.getUser().getNickname();
		    }
		   try {
			ts.commit();
		} catch ( Exception e){
			e.printStackTrace();
		}  
		    session.close();
		return applyList;
	}

}
