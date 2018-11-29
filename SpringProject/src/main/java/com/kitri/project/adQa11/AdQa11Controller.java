package com.kitri.project.adQa11;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdQa11Controller { 
	@RequestMapping(value = "adQa-Write11.do")
	public String adQaWrite11() {
		return "qa11/adQa-Write11.admin";
	}
	
	@RequestMapping(value = "adQa-Update11.do")
	public String adQaUpdate11() {
		return "qa11/adQa-Update11.admin";
	}
	
	@RequestMapping(value = "adQa-Delete11.do")
	public String adQaDelete11() {
		return "redirect:admin.do";
	}
}
