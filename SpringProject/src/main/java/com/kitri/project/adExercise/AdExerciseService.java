package com.kitri.project.adExercise;

import java.sql.Date;
import java.util.ArrayList;

public interface AdExerciseService {
	void addExercise(AdExercise ad);

	AdExercise getExercise(int num);

	void editExercise(AdExercise ad);

	void delExercise(int num);

	ArrayList<AdExercise> getAllExercise();

	AdExercise selectAdExercise(int num);

	void deleteAdExercise(int num);

}
