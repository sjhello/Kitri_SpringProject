package com.kitri.project.notice.web;

import java.sql.Date;

public class Notice {
	private int num;
	private String title;
	private String content;
	private Date reg_date;
	private int hits;
	
	public Notice() {}
	
	public Notice(int num, String title, String content, Date reg_date, int hits) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.reg_date = reg_date;
		this.hits = hits;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
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

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	@Override
	public String toString() {
		return "Notice [num=" + num + ", title=" + title + ", content=" + content + ", reg_date=" + reg_date + ", hits="
				+ hits + "]";
	}
}
