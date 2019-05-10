package com.zy.po;

public class EvaluationUser extends Evaluation{
	private String username;
	private Integer fdprice;;
	private String fname;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public Integer getFdprice() {
		return fdprice;
	}
	public void setFdprice(Integer fdprice) {
		this.fdprice = fdprice;
	}
	
}
