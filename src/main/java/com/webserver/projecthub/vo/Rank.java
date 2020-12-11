package com.webserver.projecthub.vo;

public class Rank {
	private String trans_url;
	private int count;
	private String des;
	public Rank() {
		super();
	}
	public Rank(String trans_url, int count, String des) {
		super();
		this.trans_url = trans_url;
		this.count = count;
		this.des = des;
	}
	public String getTrans_url() {
		return trans_url;
	}
	public void setTrans_url(String trans_url) {
		this.trans_url = trans_url;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	@Override
	public String toString() {
		return "Rank [trans_url=" + trans_url + ", count=" + count + ", des=" + des + "]";
	}


}
