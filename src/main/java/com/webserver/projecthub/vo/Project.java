package com.webserver.projecthub.vo;

public class Project {
	private int no;
	private String userId;
	private String name;
	private String startdate;
	private String des;
	private int secret;
	public Project() {
		super();
	}
	public Project(int no, String userId, String name, String startdate, String des, int secret) {
		super();
		this.no = no;
		this.userId = userId;
		this.name = name;
		this.startdate = startdate;
		this.des = des;
		this.secret = secret;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public int getSecret() {
		return secret;
	}
	public void setSecret(int secret) {
		this.secret = secret;
	}
	@Override
	public String toString() {
		return "Project [no=" + no + ", userId=" + userId + ", name=" + name + ", startdate=" + startdate + ", des="
				+ des + ", secret=" + secret + "]";
	}
	
	
	
	

}
