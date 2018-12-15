package com.kitri.project.member;

public class MemberEmailAuthJoin {
	private String id;
	private String email;
	private String auth_confirm;
	public MemberEmailAuthJoin() {} 
	public MemberEmailAuthJoin(String id, String email, String auth_confirm) {
		super();
		this.id = id;
		this.email = email;
		this.auth_confirm = auth_confirm;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAuth_confirm() {
		return auth_confirm;
	}
	public void setAuth_confirm(String auth_confirm) {
		this.auth_confirm = auth_confirm;
	}
	@Override
	public String toString() {
		return "MemberEmailAuthJoin [id=" + id + ", email=" + email + ", auth_confirm=" + auth_confirm + "]";
	}
	
	
}
