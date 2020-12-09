package com.webserver.projecthub.vo;

public class Content {
	private int no;
	private int projectNo;
	private String ctgr;
	private String url;
	private String memo;
	
	public Content() {
		super();
	}

	public Content(int no, int projectNo, String ctgr, String url, String memo) {
		super();
		this.no = no;
		this.projectNo = projectNo;
		this.ctgr = ctgr;
		this.url = url;
		this.memo = memo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

	public String getCtgr() {
		return ctgr;
	}

	public void setCtgr(String ctgr) {
		this.ctgr = ctgr;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	@Override
	public String toString() {
		return "Content [no=" + no + ", projectNo=" + projectNo + ", ctgr=" + ctgr + ", url=" + url + ", memo=" + memo
				+ "]";
	}

}

	
	
