package com.tianjian.model;

public class TeamUser {
	private int id;
	private int user_id;
	private int team_id;
	private String power;
    private String time;
	public TeamUser() {
		super();
	}
	public TeamUser(int id, int user_id, int team_id, String power, String time) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.team_id = team_id;
		this.power = power;
		this.time = time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
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
		return "TeamUser [id=" + id + ", user_id=" + user_id + ", team_id="
				+ team_id + ", power=" + power + ", time=" + time + "]";
	}
    
}
