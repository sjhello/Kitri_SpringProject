package com.kitri.project.admin;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.project.member.Member;
import com.kitri.project.member.MemberService;

@Controller
public class AdminController {	
	@RequestMapping(value = "admin.do")
	public String admin() {
		
		return "admin/admin.admin";
	}
}
