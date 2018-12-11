package com.kitri.project.diet.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.kitri.project.diet.service.DietService;
import com.kitri.project.diet.web.Diet;

@Service("dietService")
public class DietServiceImpl implements DietService{
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	private DietMapper dietMapper;
	
	@Override
	public void insertDiet(Diet diet) {
		dietMapper = sqlSession.getMapper(DietMapper.class);
		dietMapper.insertDiet(diet);
	}

	@Override
	public ArrayList<Diet> selectDietList() {
		dietMapper = sqlSession.getMapper(DietMapper.class);
		return dietMapper.selectDietList();
	}

	@Override
	public Diet selectDiet(int num) {
		dietMapper = sqlSession.getMapper(DietMapper.class);
		return dietMapper.selectDiet(num);
	}

	@Override
	public void updateDiet(Diet diet) {
		dietMapper = sqlSession.getMapper(DietMapper.class);
		dietMapper.updateDiet(diet);
	}

	@Override
	public void deleteDiet(int num) {
		dietMapper = sqlSession.getMapper(DietMapper.class);
		dietMapper.deleteDiet(num);
	}

	@Override
	public ArrayList<Diet> selectDietDateList(String date) {
		dietMapper = sqlSession.getMapper(DietMapper.class);
		return dietMapper.selectDietDateList(date);
	}
}
