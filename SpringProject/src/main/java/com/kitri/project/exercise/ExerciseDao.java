package com.kitri.project.exercise;

import java.sql.Date;
import java.util.ArrayList;

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

}
