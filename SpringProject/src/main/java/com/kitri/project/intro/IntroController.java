package com.kitri.project.intro;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IntroController {
	@RequestMapping(value = "intro.do")
	public String intro() {
		
		return "intro/intro.tiles";
	}
	
	@RequestMapping(value = "way.do")
	public String way() {
		return "intro/way.tiles";
	}
	
}
