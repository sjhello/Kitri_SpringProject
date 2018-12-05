package com.kitri.project.member;

import java.util.ArrayList;

public interface MemberDao {
	public void insert(Member m);
	public void update(Member m);
	public void adminConfirm(String id);
	public void delete(String id);
	Member select(String id);
	Member selectReservationComplete(String id);
	ArrayList<Member> selectReservation();
	ArrayList<Member> selectAll();
	
}
