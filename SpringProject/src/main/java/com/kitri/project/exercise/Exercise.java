package com.kitri.project.exercise;

import java.sql.Date;

public class Exercise {
	private int num;
	private String w_level;
	private String title;
	private String w_date;
	private String contents;
	
	public Exercise() {}
	
	public Exercise(int num, String w_level, String title, String w_date, String contents) {
		this.num = num;
		this.w_level = w_level;
		this.title = title;
		this.w_date = w_date;
		this.contents = contents;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getW_level() {
		return w_level;
	}

	public void setW_level(String w_level) {
		this.w_level = w_level;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getW_date() {
		return w_date;
	}

	public void setW_date(String w_date) {
		this.w_date = w_date;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	@Override
	public String toString() {
		return "Exercise [num=" + num + ", w_level=" + w_level + ", title=" + title + ", w_date=" + w_date
				+ ", contents=" + contents + "]";
	}
	
}