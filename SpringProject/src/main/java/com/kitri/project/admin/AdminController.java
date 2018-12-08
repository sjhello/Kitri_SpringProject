package com.kitri.project.admin;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kitri.project.qa.service.QaService;
import com.kitri.project.qa.web.Qa;
import com.kitri.project.qa11.service.Qa11Service;
import com.kitri.project.qa11.web.Qa11;


@Controller
public class AdminController {	
	@Resource(name="qaService")
	private QaService qaService;
	
	@Resource(name="qa11Service")
	private Qa11Service qa11Service;
	
	@RequestMapping(value = "admin.do")
	public String admin(Model model) {
		return "admin/admin.admin";
	}
}
