package com.kitri.project.exercise;

import java.sql.Date;
import java.util.ArrayList;

public interface ExerciseService {
	void addExercise(Exercise ad);

	Exercise getExercise(int num);

	void editExercise(Exercise ad);

	void delExercise(int num);

	ArrayList<Exercise> getAllExercise();

	Exercise selectAdExercise(int num);

	void deleteAdExercise(int num);

	ArrayList<Exercise> selectExerciseListF(int type);

	ArrayList<Exercise> selectExerciseDate(String date);

}
