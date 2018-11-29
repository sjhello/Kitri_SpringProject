package com.kitri.project.adDiet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adDietController {
	@RequestMapping(value = "adDiet.do")
	public String adDiet() {
		return "adDiet/adDiet.admin";
	}
	
	@RequestMapping(value = "adDietWrite.do")
	public String adDietWrite() {
		return "adDiet/adDietWrite.admin";
	}
}
