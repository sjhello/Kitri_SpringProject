package com.kitri.project.diet.service.impl;

import java.util.ArrayList;

import com.kitri.project.diet.web.Diet;
import com.kitri.project.exercise.Exercise;

public interface DietMapper {

	void insertDiet(Diet diet);

	ArrayList<Diet> selectDietList();

	Diet selectDiet(int num);

	void updateDiet(Diet diet);

	void deleteDiet(int num);

	ArrayList<Diet> selectDietDateList(String date);

	ArrayList<Exercise> selectExerciseListF(String f_level);

}
