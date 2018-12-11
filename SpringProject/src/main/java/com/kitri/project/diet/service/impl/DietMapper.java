package com.kitri.project.diet.service.impl;

import java.util.ArrayList;

import com.kitri.project.diet.web.Diet;

public interface DietMapper {

	void insertDiet(Diet diet);

	ArrayList<Diet> selectDietList();

	Diet selectDiet(int num);

	void updateDiet(Diet diet);

	void deleteDiet(int num);

	ArrayList<Diet> selectDietDateList(String date);

}
