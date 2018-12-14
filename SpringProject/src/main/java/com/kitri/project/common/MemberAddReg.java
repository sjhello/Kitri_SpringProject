package com.kitri.project.common;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MemberAddReg {	
	private Pattern p;
	
	public MemberAddReg() {}
	
	public boolean idReg(String id) {
		p = Pattern.compile("(^[a-zA-Z0-9_-]{6,16}$)");
		Matcher reg = p.matcher(id);
		if(reg.find()) {
			System.out.println("아이디 적절");
			return true;
		} else {
			System.out.println("아이디 부적절");
			return false;
		}
	}
	
	public boolean pwdReg(String pwd) {
		p = Pattern.compile("(^(?=.*[a-zA-Z0-9_-])((?=.*\\d)|(?=.*\\W)){6,20}$)");
		Matcher reg = p.matcher(pwd);
		
		if(reg.find()) {
			System.out.println("비밀번호 적절");
			return true;
		} else {
			System.out.println("비밀번호 부적절");
			return false;
		}
	}
	
}
