package com.kitri.project.adExercise;

import java.sql.Date;
import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

@Component("adExerciseService")
public class AdExerciseServiceImpl implements AdExerciseService {
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	private AdExerciseDao dao;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void addExercise(AdExercise ad) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(AdExerciseDao.class);
		dao.insert(ad);
	}

	@Override
	public AdExercise getExercise(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(AdExerciseDao.class);
		return dao.select(num);
	}

	@Override
	public void editExercise(AdExercise ad) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(AdExerciseDao.class);
		dao.update(ad);
	}

	@Override
	public void delExercise(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(AdExerciseDao.class);
		dao.delete(num);
	}

	@Override
	public ArrayList<AdExercise> getAllExercise() {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(AdExerciseDao.class);
		return dao.selectAll();
	}

	@Override
	public AdExercise selectAdExercise(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(AdExerciseDao.class);
		return dao.selectAdExercise(num);
	}

	@Override
	public void deleteAdExercise(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(AdExerciseDao.class);
		dao.deleteAdExercise(num);
	}
	


}
