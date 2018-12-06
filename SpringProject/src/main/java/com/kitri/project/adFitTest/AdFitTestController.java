package com.kitri.project.adFitTest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdFitTestController {
	@RequestMapping(value = "adFitTest.do")
	public String adFixTest() {
		return "adFitTest/adFitTest.admin";
	}
	
	@RequestMapping(value = "adFitTestInsert.do")
	public String adFixTestInsert() {
		return "adFitTest/adFitTestInsert.admin";
	}
	
	@RequestMapping(value = "adFitTestUpdate.do")
	public String adFixTestUpdate() {
		return "adFitTest/adFitTestUpdate.admin";
	}
}
