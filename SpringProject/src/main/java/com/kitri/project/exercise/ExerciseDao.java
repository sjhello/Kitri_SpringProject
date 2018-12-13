package com.kitri.project.exercise;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

public interface ExerciseDao {
	void insert(Exercise ad);
	
	Exercise select(int num); // 검색용

	void update(Exercise ad);

	void delete(int num);

	ArrayList<Exercise> selectAll();

	Exercise selectAdExercise(int num); // 수정검색용

	void deleteAdExercise(int num); // 삭제

	ArrayList<Exercise> selectExerciseListF(int type);

	ArrayList<Exercise> selectExerciseDate(String date);

	int countExerciseDate(String date);

	ArrayList<Exercise> listAll(HashMap<String, Object> hashMap);

}
