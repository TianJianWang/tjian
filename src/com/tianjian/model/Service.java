package com.tianjian.model;

<<<<<<< HEAD
import java.util.Set;

=======
>>>>>>> d5bea18d015f03acd17dba41c04407989294e44b
public class Service {
	private int ser_id;
	private String com_name;
	private int score;
	private String com_info;
	private String short_info;
	private String com_url;
<<<<<<< HEAD
	private String com_picture;
    private Type  ser_type;
=======

>>>>>>> d5bea18d015f03acd17dba41c04407989294e44b
	public Service() {
		// TODO Auto-generated constructor stub
	}

<<<<<<< HEAD



	public Service(int ser_id, String com_name, int score, String com_info,
			String short_info, String com_url, String com_picture, Type ser_type) {
=======
	public Service(int ser_id, String com_name, int score, String com_info,
			String short_info, String com_url) {
>>>>>>> d5bea18d015f03acd17dba41c04407989294e44b
		super();
		this.ser_id = ser_id;
		this.com_name = com_name;
		this.score = score;
		this.com_info = com_info;
		this.short_info = short_info;
		this.com_url = com_url;
<<<<<<< HEAD
		this.com_picture = com_picture;
		this.ser_type = ser_type;
	}




	public String getCom_picture() {
		return com_picture;
	}




	public void setCom_picture(String com_picture) {
		this.com_picture = com_picture;
	}




	public Type getSer_type() {
		return ser_type;
	}

	public void setSer_type(Type ser_type) {
		this.ser_type = ser_type;
=======
>>>>>>> d5bea18d015f03acd17dba41c04407989294e44b
	}

	public int getSer_id() {
		return ser_id;
	}

	public void setSer_id(int ser_id) {
		this.ser_id = ser_id;
	}

	public String getCom_name() {
		return com_name;
	}

	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}

	public int getScore() {
		return score;
	}

<<<<<<< HEAD
	public void setScore(String score) {
		if(score.equals("")||score==null){
			score="0";
		}
		this.score = Integer.parseInt(score);
	}
 public void setScore(int score){
	 this.score = score;
 }
	
=======
	public void setScore(int score) {
		this.score = score;
	}
>>>>>>> d5bea18d015f03acd17dba41c04407989294e44b

	public String getCom_info() {
		return com_info;
	}

	public void setCom_info(String com_info) {
		this.com_info = com_info;
	}

	public String getShort_info() {
		return short_info;
	}

	public void setShort_info(String short_info) {
		this.short_info = short_info;
	}

	public String getCom_url() {
		return com_url;
	}

	public void setCom_url(String com_url) {
		this.com_url = com_url;
	}

	@Override
	public String toString() {
		return "Service [ser_id=" + ser_id + ", com_name=" + com_name
				+ ", score=" + score + ", com_info=" + com_info
				+ ", short_info=" + short_info + ", com_url=" + com_url + "]";
	}

<<<<<<< HEAD
	

=======
>>>>>>> d5bea18d015f03acd17dba41c04407989294e44b
}
