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
	public void join(Member m) {	// 회원 신청하기
		dao = sqlSession.getMapper(MemberDao.class);
		dao.insert(m);
	}
	
	@Override
	public Member getMyInfo(String id) {	// 내 정보보기
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.select(id);
	}

	@Override
	public void edit(Member m) {	// 내정보 수정
		dao = sqlSession.getMapper(MemberDao.class);
	}
	@Override
	public void out(String id) {	// 회원 탈퇴하기
		// TODO Auto-generated method stub
		
	}
	@Override
	public ArrayList<Member> getAll() {	// 관리자: 회원 리스트 보기
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.selectAll();
	}

	@Override
	public boolean login(Member m) {	// 로그인 하기
		dao = sqlSession.getMapper(MemberDao.class);
		Member m2 = dao.select(m.getId());
		if(m2!=null && m2.getPwd().equals(m.getPwd())) {	//&& m2.getAdmin_confirm().equals('o')
			return true;
		}
		return false;
	}
}
