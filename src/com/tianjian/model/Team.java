package com.tianjian.model;

public class Team {
	private int team_id;
	private int pro_id;
	private int header;
	private String name;
	private int num;
	private String major;
	private String power_type;
    private String decl;
	public Team() {
		super();
	}
	public Team(int team_id, int pro_id, int header, String name, int num,
			String major, String power_type, String decl) {
		super();
		this.team_id = team_id;
		this.pro_id = pro_id;
		this.header = header;
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
	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}
	public int getHeader() {
		return header;
	}
	public void setHeader(int header) {
		this.header = header;
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
		return "Team [team_id=" + team_id + ", pro_id=" + pro_id + ", header="
				+ header + ", name=" + name + ", num=" + num + ", major="
				+ major + ", power_type=" + power_type + ", decl=" + decl + "]";
	}
    
}
