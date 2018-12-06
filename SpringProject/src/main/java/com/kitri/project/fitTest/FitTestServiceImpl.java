package com.kitri.project.fitTest;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

@Component("FitTestService")
public class FitTestServiceImpl implements FitTestService{
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private FitTestDao dao;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void addFitTest(FitTest f) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(FitTestDao.class);
		dao.insert(f);
	}

	@Override
	public FitTest getFitTest(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(FitTestDao.class);
		return dao.select(num);
	}

	@Override
	public ArrayList<FitTest> getAll() {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(FitTestDao.class);
		return dao.selectAll();
	}

	@Override
	public void editFitTest(FitTest i) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(FitTestDao.class);
		dao.update(i);
	}

	@Override
	public void delFitTest(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(FitTestDao.class);
		dao.delete(num);
	}
	
}
