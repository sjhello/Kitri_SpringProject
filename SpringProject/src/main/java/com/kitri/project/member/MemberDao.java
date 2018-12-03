package com.kitri.project.member;

import java.util.ArrayList;

public interface MemberDao {
	public void insert(Member m);
	public void update(Member m);
	public void delete(String id);
	ArrayList<Member> selectAll();
}
