package com.kitri.project.admin;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kitri.project.qa.service.QaService;
import com.kitri.project.qa.web.Qa;


@Controller
public class AdminController {	
	
	@RequestMapping(value = "admin.do")
	public String admin(Model model) {
		return "admin/admin.admin";
	}
}
