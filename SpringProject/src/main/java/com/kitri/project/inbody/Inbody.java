package com.kitri.project.inbody;

import java.sql.Date;

public class Inbody {
    private String id;
    private Date i_date;
    private int height;
    private int weight;
    private int muscle;
    private int fat;
    private int bmi;
    
    public Inbody() {}
	public Inbody(String id, Date i_date, int height, int weight, 
					int muscle, int fat, int bmi) {
		this.id = id;
		this.i_date = i_date;
		this.height = height;
		this.weight = weight;
		this.muscle = muscle;
		this.fat = fat;
		this.bmi = bmi;
	}

	@Override
	public String toString() {
		return "Inbody [id=" + id + ", i_date=" + i_date 
				+ ", height=" + height + ", weight=" + weight 
				+ ", muscle="+ muscle + ", fat=" + fat 
				+ ", bmi=" + bmi + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getI_date() {
		return i_date;
	}

	public void setI_date(Date i_date) {
		this.i_date = i_date;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getMuscle() {
		return muscle;
	}

	public void setMuscle(int muscle) {
		this.muscle = muscle;
	}

	public int getFat() {
		return fat;
	}

	public void setFat(int fat) {
		this.fat = fat;
	}

	public int getBmi() {
		return bmi;
	}

	public void setBmi(int bmi) {
		this.bmi = bmi;
	}
	
    
    
}
