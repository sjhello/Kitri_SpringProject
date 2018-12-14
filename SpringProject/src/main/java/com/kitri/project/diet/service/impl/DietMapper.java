package com.kitri.project.diet.service.impl;

import java.util.ArrayList;
import java.util.HashMap;

import com.kitri.project.diet.web.Diet;
import com.kitri.project.exercise.Exercise;

public interface DietMapper {

	void insertDiet(Diet diet);

	ArrayList<Diet> selectDietList();

	Diet selectDiet(int num);

	void updateDiet(Diet diet);

	void deleteDiet(int num);

	ArrayList<Diet> selectDietDateList(String date);

	ArrayList<Exercise> selectDietListF(String f_level);

	int countDietDate(String date);

	ArrayList<Diet> listAll(HashMap<String, Object> hashMap);

}
