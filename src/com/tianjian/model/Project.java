package com.tianjian.model;

public class Project {
	private int pro_id;
	private String pro_title;
<<<<<<< HEAD
	private int pro_wangtedMoney;
=======
	private int pro_wantedMoney;
>>>>>>> d5bea18d015f03acd17dba41c04407989294e44b
	private String pro_startDate;
	private String pro_endDate;
	private int userId;
	private String pro_info;
	private String pro_picture;
	private String pro_type;
	public Project() {
		super();
	}
	public Project(int pro_id, String pro_title, int pro_wangtedMoney,
			String pro_startDate, String pro_endDate, int userId,
			String pro_info, String pro_picture, String pro_type) {
		super();
		this.pro_id = pro_id;
		this.pro_title = pro_title;
<<<<<<< HEAD
		this.pro_wangtedMoney = pro_wangtedMoney;
=======
		this.pro_wantedMoney = pro_wangtedMoney;
>>>>>>> d5bea18d015f03acd17dba41c04407989294e44b
		this.pro_startDate = pro_startDate;
		this.pro_endDate = pro_endDate;
		this.userId = userId;
		this.pro_info = pro_info;
		this.pro_picture = pro_picture;
		this.pro_type = pro_type;
	}
<<<<<<< HEAD
=======
	public int getPro_wantedMoney() {
		return pro_wantedMoney;
	}
	public void setPro_wantedMoney(int pro_wantedMoney) {
		this.pro_wantedMoney = pro_wantedMoney;
	}
>>>>>>> d5bea18d015f03acd17dba41c04407989294e44b
	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}
	public String getPro_title() {
		return pro_title;
	}
	public void setPro_title(String pro_title) {
		this.pro_title = pro_title;
	}
<<<<<<< HEAD
	public int getPro_wangtedMoney() {
		return pro_wangtedMoney;
	}
	public void setPro_wangtedMoney(int pro_wangtedMoney) {
		this.pro_wangtedMoney = pro_wangtedMoney;
	}
=======
	 
	 
>>>>>>> d5bea18d015f03acd17dba41c04407989294e44b
	public String getPro_startDate() {
		return pro_startDate;
	}
	public void setPro_startDate(String pro_startDate) {
		this.pro_startDate = pro_startDate;
	}
	public String getPro_endDate() {
		return pro_endDate;
	}
	public void setPro_endDate(String pro_endDate) {
		this.pro_endDate = pro_endDate;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getPro_info() {
		return pro_info;
	}
	public void setPro_info(String pro_info) {
		this.pro_info = pro_info;
	}
	public String getPro_picture() {
		return pro_picture;
	}
	public void setPro_picture(String pro_picture) {
		this.pro_picture = pro_picture;
	}
	public String getPro_type() {
		return pro_type;
	}
	public void setPro_type(String pro_type) {
		this.pro_type = pro_type;
	}
	@Override
	public String toString() {
		return "Project [pro_id=" + pro_id + ", pro_title=" + pro_title
<<<<<<< HEAD
				+ ", pro_wangtedMoney=" + pro_wangtedMoney + ", pro_startDate="
=======
				+ ", pro_wangtedMoney=" + pro_wantedMoney + ", pro_startDate="
>>>>>>> d5bea18d015f03acd17dba41c04407989294e44b
				+ pro_startDate + ", pro_endDate=" + pro_endDate + ", userId="
				+ userId + ", pro_info=" + pro_info + ", pro_picture="
				+ pro_picture + ", pro_type=" + pro_type + "]";
	}
    
}
