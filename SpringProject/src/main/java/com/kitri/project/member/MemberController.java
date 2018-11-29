package com.kitri.project.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@RequestMapping(value = "memberList.do")
	public String memberList() {
		return "member/memberList.admin";
	}
	
	@RequestMapping(value = "mUpdate.do")
	public String mUpdate() {
		return "member/memberUpdate.admin";
	}
		
	@RequestMapping(value = "mdelete.do")
	public String mdelete() {
		return "redirect:memberList.do";
	}
}
