package com.kitri.project.diet.service;

import java.util.ArrayList;

import com.kitri.project.diet.web.Diet;
import com.kitri.project.exercise.Exercise;

public interface DietService {

	void insertDiet(Diet diet);

	ArrayList<Diet> selectDietList();

	Diet selectDiet(int num);

	void updateDiet(Diet diet);

	void deleteDiet(int num);

	ArrayList<Diet> selectDietDateList(String date);

	ArrayList<Exercise> selectExerciseListF(String f_level);

}
