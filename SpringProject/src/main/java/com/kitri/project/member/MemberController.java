package com.kitri.project.member;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	@RequestMapping(value="memberAdd")
	public String add(Member m) {
		service.join(m);
		return "main/main.mTiles";
	}
	
	@RequestMapping(value="memberLogin")
	public String login(Member m, HttpServletRequest req) {
		boolean flag = service.login(m);
		if(flag) {
			HttpSession session = req.getSession();
			session.setAttribute("id", m.getId());
		}
		System.out.println(flag);
		return "main/main.mTiles";
	}
	
	@RequestMapping(value="memberLogout")
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		session.removeAttribute("id");
		session.invalidate();
		return "main/main.mTiles";
	}
}
