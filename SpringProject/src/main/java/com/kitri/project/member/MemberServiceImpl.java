package com.kitri.project.member;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

@Component("memberService")
public class MemberServiceImpl implements MemberService{
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private MemberDao dao;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void join(Member m) {
		dao = sqlSession.getMapper(MemberDao.class);
		dao.insert(m);
	}
	@Override
	public void edit(Member m) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void out(String id) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public ArrayList<Member> getAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
