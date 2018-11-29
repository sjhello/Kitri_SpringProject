package com.kitri.project.diet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DietController {
	
	@RequestMapping(value = "diet.do")
	public String diet() {
		
		return "diet/diet.tiles";
	}
}
