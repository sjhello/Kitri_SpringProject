package com.kitri.project.adExercise;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adExerciseController {
	@RequestMapping(value = "adExercise.do")
	public String adExercise() {
		return "adExercise/adExercise.admin";
	}
	
	@RequestMapping(value = "adExerciseWrite.do")
	public String adExerciseWrite() {
		return "adExercise/adExerciseWrite.admin";
	}
	
	@RequestMapping(value = "adExerciseUpdate.do")
	public String adExerciseUpdate() {
		return "adExercise/adExerciseUpdate.admin";
	}
	
	@RequestMapping(value = "adExerciseSelect.do")
	public String adExerciseSelect() {
		return "adExercise/adExerciseSelect.admin";
	}
	
	@RequestMapping(value = "adExerciseDelete.do")
	public String adExerciseDelete() {
		return "adExercise/adExerciseDelete.admin";
	}
	
	@RequestMapping(value = "adExerciseDetail.do")
	public String adExerciseDetail() {
		return "adExercise/adExerciseDetail.admin";
	}
	
}
