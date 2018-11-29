package com.kitri.project.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping(value = "admin.do")
	public String admin() {
		
		return "admin/admin.admin";
	}
}
