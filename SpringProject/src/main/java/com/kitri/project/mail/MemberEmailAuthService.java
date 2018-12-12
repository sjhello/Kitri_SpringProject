package com.kitri.project.mail;

public interface MemberEmailAuthService {
	public void createKey(MemberEmailAuth mea) throws Exception;
	public void update(MemberEmailAuth mea);
}
