package com.kitri.project.mBook;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MBookController {
	@RequestMapping(value = "bookMember.do")
	public String bookMember() {
		return "mBook/bookMember.admin";
	}
	
	@RequestMapping(value = "mInsert.do")
	public String mInsert() {
		return "mBook/memberInsert.admin";
	}
}
