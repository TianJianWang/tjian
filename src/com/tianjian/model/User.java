package com.tianjian.model;

public class User {
	private int user_id;
	private String email;
	private String password;
	private String nickname;
	private String realname;
	private String idcard;
	private String user_address;
	private String user_picture;
	private String profession;
	private String user_info;
	private String webo;
	public User() {
		// TODO Auto-generated constructor stub
	}
	public User(int user_id, String email, String password, String nickname,
			String realname, String idcard, String user_address,
			String user_picture, String profession, String user_info,
			String webo) {
		super();
		this.user_id = user_id;
		this.email = email;
		this.password = password;
		this.nickname = nickname;
		this.realname = realname;
		this.idcard = idcard;
		this.user_address = user_address;
		this.user_picture = user_picture;
		this.profession = profession;
		this.user_info = user_info;
		this.webo = webo;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getUser_picture() {
		return user_picture;
	}
	public void setUser_picture(String user_picture) {
		this.user_picture = user_picture;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getUser_info() {
		return user_info;
	}
	public void setUser_info(String user_info) {
		this.user_info = user_info;
	}
	public String getWebo() {
		return webo;
	}
	public void setWebo(String webo) {
		this.webo = webo;
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", email=" + email + ", password="
				+ password + ", nickname=" + nickname + ", realname="
				+ realname + ", idcard=" + idcard + ", user_address="
				+ user_address + ", user_picture=" + user_picture
				+ ", profession=" + profession + ", user_info=" + user_info
				+ ", webo=" + webo + "]";
	}

}
