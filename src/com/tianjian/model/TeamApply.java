package com.tianjian.model;

public class TeamApply {
	private int id;
	private int team_id;
	private int user_id;
	private String message;
	private String time;
	public TeamApply() {
		super();
	}
	public TeamApply(int id, int team_id, int user_id, String message,
			String time) {
		super();
		this.id = id;
		this.team_id = team_id;
		this.user_id = user_id;
		this.message = message;
		this.time = time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
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
		return "TeamApply [id=" + id + ", team_id=" + team_id + ", user_id="
				+ user_id + ", message=" + message + ", time=" + time + "]";
	}
	

}
