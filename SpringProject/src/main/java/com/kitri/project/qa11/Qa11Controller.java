package com.kitri.project.qa11;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Qa11Controller {
	@RequestMapping(value = "qa11.do")
	public String qa11() {
		
		return "qa11/qa11.tiles";
	}
	
	@RequestMapping(value = "qaDetail11.do")
	public String qaDetail11() {
		
		return "qa11/detail-qa11.tiles";
	}
	
	@RequestMapping(value = "qaWriteForm11.do")
	public String qaWriteForm11() {
		
		return "qa11/wirte-qa11.tiles";
	}
	
	@RequestMapping(value = "qaWrite11.do")
	public String qaWrite11() {
		
		return "redirect:qa11.do";
	}
	
	@RequestMapping(value = "qaUpdate11.do")
	public String qaUpdate11() {
		
		return "qa11/update-qa11.tiles";
	}
}
