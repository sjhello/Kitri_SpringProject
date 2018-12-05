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
	@Resource(name="qaService")
	private QaService qaService;
	
	@RequestMapping(value = "admin.do")
	public String admin(Model model) {
		ArrayList<Qa> qaList = qaService.selectQaList();
		System.out.println(qaList);
		model.addAttribute("qaList", qaList);
		return "admin/admin.admin";
	}
}
