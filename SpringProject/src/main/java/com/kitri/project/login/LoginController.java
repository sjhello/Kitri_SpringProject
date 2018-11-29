package com.kitri.project.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping(value = "login.do")
	public String login() {
		return "login/login.tiles";
	}
	
	@RequestMapping(value = "signUp.do")
	public String signUp() {
		return "login/signUp.tiles";
	}
	
	@RequestMapping(value = "logout.do")
	public String logout() {
		return "redirect:main.do";
	}
}
