package com.tianjian.model;

public class TeamUser {
	private int id;
	private User user;
	private Team team;
	private String power;
    private String time;
	public TeamUser() {
		super();
	}
	public TeamUser(int id, User user, Team team, String power, String time) {
		super();
		this.id = id;
		this.user = user;
		this.team = team;
		this.power = power;
		this.time = time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Team getTeam() {
		return team;
	}
	public void setTeam(Team team) {
		this.team = team;
	}
	public String getPower() {
		return power;
	}
	public void setPower(String power) {
		this.power = power;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "TeamUser [id=" + id + ", user=" + user + ", team=" + team
				+ ", power=" + power + ", time=" + time + "]";
	}

}
