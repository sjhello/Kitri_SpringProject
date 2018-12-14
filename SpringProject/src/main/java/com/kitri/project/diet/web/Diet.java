package com.kitri.project.diet.web;

public class Diet {
	private int num;
	private String f_level;
	private String f_date;
	private String mealtime;
	private String f1;
	private String f2;
	private String f3;
	private String f4;
	private String f5;
	private String f6;
	
	public Diet() {
		
	}

	public Diet(int num, String f_level, String f_date, String mealtime, String f1, String f2, String f3, String f4,
			String f5, String f6) {
		this.num = num;
		this.f_level = f_level;
		this.f_date = f_date;
		this.mealtime = mealtime;
		this.f1 = f1;
		this.f2 = f2;
		this.f3 = f3;
		this.f4 = f4;
		this.f5 = f5;
		this.f6 = f6;
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

	public String getF1() {
		return f1;
	}

	public void setF1(String f1) {
		this.f1 = f1;
	}

	public String getF2() {
		return f2;
	}

	public void setF2(String f2) {
		this.f2 = f2;
	}

	public String getF3() {
		return f3;
	}

	public void setF3(String f3) {
		this.f3 = f3;
	}

	public String getF4() {
		return f4;
	}

	public void setF4(String f4) {
		this.f4 = f4;
	}

	public String getF5() {
		return f5;
	}

	public void setF5(String f5) {
		this.f5 = f5;
	}

	public String getF6() {
		return f6;
	}

	public void setF6(String f6) {
		this.f6 = f6;
	}

	@Override
	public String toString() {
		return "Diet [num=" + num + ", f_level=" + f_level + ", f_date=" + f_date + ", mealtime=" + mealtime + ", f1="
				+ f1 + ", f2=" + f2 + ", f3=" + f3 + ", f4=" + f4 + ", f5=" + f5 + ", f6=" + f6 + "]";
	}
}
