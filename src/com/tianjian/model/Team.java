package com.tianjian.model;

public class Team {
	private int team_id;
	private Project project;
	private User user;
	private String team_picture;
	private String name;
	private int num;
	private String major;
	private String power_type;
    private String decl;
	public Team() {
		super();
	}
	public Team(int team_id, Project project, User user, String team_picture,
			String name, int num, String major, String power_type, String decl) {
		super();
		this.team_id = team_id;
		this.project = project;
		this.user = user;
		this.team_picture = team_picture;
		this.name = name;
		this.num = num;
		this.major = major;
		this.power_type = power_type;
		this.decl = decl;
	}
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getTeam_picture() {
		return team_picture;
	}
	public void setTeam_picture(String team_picture) {
		this.team_picture = team_picture;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getPower_type() {
		return power_type;
	}
	public void setPower_type(String power_type) {
		this.power_type = power_type;
	}
	public String getDecl() {
		return decl;
	}
	public void setDecl(String decl) {
		this.decl = decl;
	}
	@Override
	public String toString() {
		return "Team [team_id=" + team_id + ", project=" + project + ", user="
				+ user + ", team_picture=" + team_picture + ", name=" + name
				+ ", num=" + num + ", major=" + major + ", power_type="
				+ power_type + ", decl=" + decl + "]";
	}

}
