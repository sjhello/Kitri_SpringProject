package com.kitri.project.mail;

public class MemberEmailAuth {
	private String id;
	private String email;
	private String user_authcode;
	private String auth_confirm;
	public MemberEmailAuth() {}
	public MemberEmailAuth(String id, String email, String user_authcode, String auth_confirm) {
		super();
		this.id = id;
		this.email = email;
		this.user_authcode = user_authcode;
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
	public String getUser_authcode() {
		return user_authcode;
	}
	public void setUser_authcode(String user_authcode) {
		this.user_authcode = user_authcode;
	}
	public String getAuth_confirm() {
		return auth_confirm;
	}
	public void setAuth_confirm(String auth_confirm) {
		this.auth_confirm = auth_confirm;
	}
	@Override
	public String toString() {
		return "MemberEmailAuth [id=" + id + ", email=" + email + ", user_authcode=" + user_authcode + ", auth_confirm="
				+ auth_confirm + "]";
	}
}
