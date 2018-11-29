package com.kitri.project.adFixTest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdFixTestController {
	@RequestMapping(value = "adFixTest.do")
	public String adFixTest() {
		return "adFixTest/adFixTest.admin";
	}
	
	@RequestMapping(value = "adFixTestInsert.do")
	public String adFixTestInsert() {
		return "adFixTest/adFixTestInsert.admin";
	}
	
	@RequestMapping(value = "adFixTestUpdate.do")
	public String adFixTestUpdate() {
		return "adFixTest/adFixTestUpdate.admin";
	}
}
