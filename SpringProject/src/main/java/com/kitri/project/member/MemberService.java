package com.kitri.project.member;

import java.util.ArrayList;

public interface MemberService {
	public void join(Member m);	//insert
	//public boolean login(Member m);
	public void edit(Member m);	//update
	public void out(String id);	// delete
	ArrayList<Member> getAll();	// selectAll
}
