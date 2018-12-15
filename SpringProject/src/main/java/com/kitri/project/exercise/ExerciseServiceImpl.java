package com.kitri.project.exercise;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

@Component("adExerciseService")
public class ExerciseServiceImpl implements ExerciseService {
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	private ExerciseDao dao;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void addExercise(Exercise ad) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(ExerciseDao.class);
		dao.insert(ad);
	}

	@Override
	public Exercise getExercise(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(ExerciseDao.class);
		return dao.select(num);
	}

	@Override
	public void editExercise(Exercise ad) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(ExerciseDao.class);
		dao.update(ad);
	}

	@Override
	public void delExercise(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(ExerciseDao.class);
		dao.delete(num);
	}

	@Override
	public ArrayList<Exercise> getAllExercise() {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(ExerciseDao.class);
		return dao.selectAll();
	}

	@Override
	public Exercise selectAdExercise(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(ExerciseDao.class);
		return dao.selectAdExercise(num);
	}

	@Override
	public void deleteAdExercise(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(ExerciseDao.class);
		dao.deleteAdExercise(num);
	}

	@Override
	public ArrayList<Exercise> selectExerciseListF(int type) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(ExerciseDao.class);
		return dao.selectExerciseListF(type);
	}

	@Override
	public ArrayList<Exercise> selectExerciseDate(String date) {
		dao = sqlSession.getMapper(ExerciseDao.class);
		return dao.selectExerciseDate(date);
	}

	@Override
	public int countExerciseDate(String date) {
		dao = sqlSession.getMapper(ExerciseDao.class);
		return dao.countExerciseDate(date);
	}

	@Override
	public ArrayList<Exercise> listAll(int start, int end, String date) {
		dao = sqlSession.getMapper(ExerciseDao.class);
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		hashMap.put("start", start);
		hashMap.put("end", end);
		hashMap.put("date", date);
		return dao.listAll(hashMap);
	}
}
