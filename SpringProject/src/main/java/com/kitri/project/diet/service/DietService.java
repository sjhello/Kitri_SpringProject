package com.kitri.project.diet.service;

import java.util.ArrayList;

import com.kitri.project.diet.web.Diet;

public interface DietService {

	void insertDiet(Diet diet);

	ArrayList<Diet> selectDietList();

	Diet selectDiet(int num);

	void updateDiet(Diet diet);

	void deleteDiet(int num);

	ArrayList<Diet> selectDietDateList(String date);

}
