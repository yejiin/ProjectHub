package com.webserver.projecthub.vo;

public class Files {
	
	int no;
	int ProjectNo;
	String name;
	String oriname;
	String path;
	String size;
	public Files() {
		super();
	}
	public Files(int no, int projectNo, String name, String oriname, String path, String size) {
		super();
		this.no = no;
		ProjectNo = projectNo;
		this.name = name;
		this.oriname = oriname;
		this.path = path;
		this.size = size;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getProjectNo() {
		return ProjectNo;
	}
	public void setProjectNo(int projectNo) {
		ProjectNo = projectNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getOriname() {
		return oriname;
	}
	public void setOriname(String oriname) {
		this.oriname = oriname;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	@Override
	public String toString() {
		return "File [no=" + no + ", ProjectNo=" + ProjectNo + ", name=" + name + ", oriname=" + oriname + ", path="
				+ path + ", size=" + size + "]";
	}
	
	
	

}
