package com.kitri.project.member;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@Resource(name="memberService")
	private MemberService service;
	
	public void setService(MemberService service) { this.service = service; }
	
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
	
	@RequestMapping(value="member/add")
	public String add(Member m) {
		service.join(m);
		return "main/main";
	}
}
