package com.kitri.project.member;

public class Member {
	private String id;
	private String pwd;
	private String name;
	private String tel;
	private String address;
	private String email;
	private String f_level;
	private String w_level;
	private String admin_confirm;
	private String sex;
	
	public Member() {}
	public Member(String id, String pwd, String name, String tel, String address, String email, String f_level,
			String w_level, String admin_confirm, String sex) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.tel = tel;
		this.address = address;
		this.email = email;
		this.f_level = f_level;
		this.w_level = w_level;
		this.admin_confirm = admin_confirm;
		this.sex = sex;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getF_level() {
		return f_level;
	}
	public void setF_level(String f_level) {
		this.f_level = f_level;
	}
	public String getW_level() {
		return w_level;
	}
	public void setW_level(String w_level) {
		this.w_level = w_level;
	}
	public String getAdmin_confirm() {
		return admin_confirm;
	}
	public void setAdmin_confirm(String admin_confirm) {
		this.admin_confirm = admin_confirm;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", pwd=" + pwd + ", name=" + name + ", tel=" + tel + ", address=" + address
				+ ", email=" + email + ", f_level=" + f_level + ", w_level=" + w_level + ", admin_confirm="
				+ admin_confirm + ", sex=" + sex + "]";
	}	
}
