package com.kitri.project.info;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {

	@RequestMapping(value = "inbody.do")
	public String inbody() {
		return "info/inbody.tiles";
	}
	
	@RequestMapping(value = "calendar.do")
	public String calendar() {
		return "info/calendar.tiles";
	}
	
	@RequestMapping(value = "fitTest.do")
	public String fitTest() {
		return "info/fitTest.tiles";
	}
}
