package com.kitri.project.adInbody;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdInbodyController {
	@RequestMapping(value = "adInbody.do")
	public String adInbody() {
		return "adInbody/adInbody.admin";
	}
	
	@RequestMapping(value = "adInbodyInsert.do")
	public String adInbodyInsert() {
		return "adInbody/adInbodyInsert.admin";
	}
	
	@RequestMapping(value = "adInbodyUpdate.do")
	public String adInbodyUpdate() {
		return "adInbody/adInbodyUpdate.admin";
	}
}
