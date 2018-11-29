package com.kitri.project.exercise;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExerciseController {
	
	@RequestMapping(value = "exercise.do")
	public String exercise() {
		
		return "exercise/exercise.tiles";
	}
}
