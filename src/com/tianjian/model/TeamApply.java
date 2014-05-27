package com.tianjian.model;

public class TeamApply {
	private int id;
	private Team team;
	private User user;
	private String message;
	private String time;
	public TeamApply() {
		super();
	}
	public TeamApply(int id, Team team, User user, String message, String time) {
		super();
		this.id = id;
		this.team = team;
		this.user = user;
		this.message = message;
		this.time = time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Team getTeam() {
		return team;
	}
	public void setTeam(Team team) {
		this.team = team;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "TeamApply [id=" + id + ", team=" + team + ", user=" + user
				+ ", message=" + message + ", time=" + time + "]";
	}
	

}
