package com.kitri.project.member;

import java.util.ArrayList;

public interface MemberService {
	public void join(Member m);	//insert
	public boolean login(Member m);
	public void edit(Member m);	//update
	public void adminConfirm(String id);
	public void out(String id);	// delete
	Member getMyInfo(String id);	// 회원 정보 보기
	Member getReservationComplete(String id);	// admin_confirm 이 'o' 인 회원 select
	Member getEmail(String email);
	ArrayList<Member> getReservation();	// selectReservation
	ArrayList<Member> getAll();
	boolean emailAuthConfirm(String id);
	public int countMember();
	public ArrayList<Member> selectMemberList(int start, int end);
}
