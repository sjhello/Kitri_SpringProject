package com.kitri.project.diet.web;

public class Diet {
	private int num;
	private String f_level;
	private String f_date;
	private String mealtime;
	private String f;
	
	public Diet() {
		
	}
	
	public Diet(int num, String f_level, String f_date, String mealtime, String f) {
		this.num = num;
		this.f_level = f_level;
		this.f_date = f_date;
		this.mealtime = mealtime;
		this.f = f;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getF_level() {
		return f_level;
	}

	public void setF_level(String f_level) {
		this.f_level = f_level;
	}

	public String getF_date() {
		return f_date;
	}

	public void setF_date(String f_date) {
		this.f_date = f_date;
	}

	public String getMealtime() {
		return mealtime;
	}

	public void setMealtime(String mealtime) {
		this.mealtime = mealtime;
	}

	public String getF() {
		return f;
	}

	public void setF(String f) {
		this.f = f;
	}

	@Override
	public String toString() {
		return "Diet [num=" + num + ", f_level=" + f_level + ", f_date=" + f_date + ", mealtime=" + mealtime + ", f="
				+ f + "]";
	}
}
