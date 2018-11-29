package com.kitri.project.adQa;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdQaController { 
	@RequestMapping(value = "adQa-Write.do")
	public String adQaWrite() {
		return "qa/adQa-Write.admin";
	}
	
	@RequestMapping(value = "adQa-Update.do")
	public String adQaUpdate() {
		return "qa/adQa-Update.admin";
	}
	
	@RequestMapping(value = "adQa-Delete.do")
	public String adQaDelete() {
		return "redirect:admin.do";
	}
}