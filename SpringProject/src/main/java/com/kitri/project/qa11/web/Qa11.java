	package com.kitri.project.qa11.web;

import java.sql.Date;

public class Qa11 {
	private int code;
	private int originNo;
	private int groupOrd;
	private String title;
	private String content;
	private String id;
	private Date reg_date;
	private int b2c_qa_check;

	public Qa11() {}

	public Qa11(int code, int originNo, int groupOrd, String title, String content, String id, Date reg_date,
			int ad_check) {
		this.code = code;
		this.originNo = originNo;
		this.groupOrd = groupOrd;
		this.title = title;
		this.content = content;
		this.id = id;
		this.reg_date = reg_date;
		this.b2c_qa_check = ad_check;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public int getOriginNo() {
		return originNo;
	}

	public void setOriginNo(int originNo) {
		this.originNo = originNo;
	}

	public int getGroupOrd() {
		return groupOrd;
	}

	public void setGroupOrd(int groupOrd) {
		this.groupOrd = groupOrd;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	public int getB2c_qa_check() {
		return b2c_qa_check;
	}

	public void setB2c_qa_check(int ad_check) {
		this.b2c_qa_check = ad_check;
	}

	@Override
	public String toString() {
		return "Qa11 [code=" + code + ", originNo=" + originNo + ", groupOrd=" + groupOrd + ", title=" + title
				+ ", content=" + content + ", id=" + id + ", reg_date=" + reg_date + ", b2c_qa_check=" + b2c_qa_check + "]";
	}
	
}
