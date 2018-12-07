package com.kitri.project.fitTest;

import java.sql.Date;

public class FitTest {
    private String id;
    private Date fit_date;
    private int pushup;
    private int pullup;
    private int squat;
    private int situp;  
    private int burpee;
    
    public FitTest() {}
	public FitTest(String id, Date fit_date, int pushup, int pullup, 
					int squat, int situp, int burpee) {
		this.id = id;
		this.fit_date = fit_date;
		this.pushup = pushup;
		this.pullup = pullup;
		this.squat = squat;
		this.situp = situp;
		this.burpee = burpee;
	}
	
	@Override
	public String toString() {
		return "FitTest [id=" + id + ", fit_date=" + fit_date 
				+ ", pushup=" + pushup + ", pullup=" + pullup + ", squat="
				+ squat + ", situp=" + situp + ", burpee=" + burpee + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getFit_date() {
		return fit_date;
	}
	public void setFit_date(Date fit_date) {
		this.fit_date = fit_date;
	}
	public int getPushup() {
		return pushup;
	}
	public void setPushup(int pushup) {
		this.pushup = pushup;
	}
	public int getPullup() {
		return pullup;
	}
	public void setPullup(int pullup) {
		this.pullup = pullup;
	}
	public int getSquat() {
		return squat;
	}
	public void setSquat(int squat) {
		this.squat = squat;
	}
	public int getSitup() {
		return situp;
	}
	public void setSitup(int situp) {
		this.situp = situp;
	}
	public int getBurpee() {
		return burpee;
	}
	public void setBurpee(int burpee) {
		this.burpee = burpee;
	}
	 
    
}
