package com.kitri.project.adExercise;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adExerciseController {
	@RequestMapping(value = "adExercise.do")
	public String adExercise() {
		return "adExercise/adExercise.admin";
	}
}
