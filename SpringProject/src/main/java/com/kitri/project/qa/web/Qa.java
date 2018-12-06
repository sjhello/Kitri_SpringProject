package com.kitri.project.qa.web;

import java.sql.Date;

public class Qa {
	private int q_num;
	private String title;
	private String content;
	private Date reg_date;
	
	public Qa() {}
	
	public Qa(int q_num, String title, String content, Date reg_date) {
		super();
		this.q_num = q_num;
		this.title = title;
		this.content = content;
		this.reg_date = reg_date;
	}

	public int getQ_num() {
		return q_num;
	}

	public void setQ_num(int q_num) {
		this.q_num = q_num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	@Override
	public String toString() {
		return "Qa [q_num=" + q_num + ", title=" + title + ", content=" + content + ", reg_date=" + reg_date + "]";
	}
}
