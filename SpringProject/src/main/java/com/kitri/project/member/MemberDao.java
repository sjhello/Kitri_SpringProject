package com.kitri.project.member;

import java.util.ArrayList;
import java.util.HashMap;

public interface MemberDao {
	public void insert(Member m);
	public void update(Member m);
	public void adminConfirm(String id);
	public void delete(String id);
	Member select(String id);
	Member selectReservationComplete(String id);
	Member selectEmail(String email);
	ArrayList<Member> selectReservation();
	ArrayList<Member> selectAll();
	MemberEmailAuthJoin selectEmailConfirm(String id);
	public int countMember();
	public ArrayList<Member> selectMemberList(HashMap<String, Object> hashMap);
	public int reservationCount();
	public ArrayList<Member> reservationList(HashMap<String, Object> hashMap);
}
