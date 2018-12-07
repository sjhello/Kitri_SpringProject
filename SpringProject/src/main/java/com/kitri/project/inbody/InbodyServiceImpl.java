package com.kitri.project.inbody;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

@Component("InbodyService")
public class InbodyServiceImpl implements InbodyService{
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private InbodyDao dao;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void addInbody(Inbody i) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(InbodyDao.class);
		dao.insert(i);
	}

	@Override
	public ArrayList<Inbody> getInbody(String id) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(InbodyDao.class);
		return dao.select(id);
	}

	@Override
	public ArrayList<Inbody> getAll() {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(InbodyDao.class);
		return dao.selectAll();
	}

	@Override
	public void editInbody(Inbody i) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(InbodyDao.class);
		dao.update(i);
		
	}

	@Override
	public void delInbody(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(InbodyDao.class);
		dao.delete(num);
	}
	
}
