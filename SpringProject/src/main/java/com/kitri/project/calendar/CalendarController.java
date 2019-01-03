package com.kitri.project.calendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CalendarController {

	
	@RequestMapping(value = "calendar.do")
	public String calendar() {
		return "info/calendar.tiles";
	}	
		

}
