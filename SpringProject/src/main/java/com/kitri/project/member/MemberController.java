package com.kitri.project.member;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

@Controller
public class MemberController {
	@Resource(name="memberService")
	private MemberService memberService;
	
	public void setService(MemberService memberService) { this.memberService = memberService; }
	
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
		memberService.join(m);
		return "main/main.mTiles";
	}
	
	@RequestMapping(value="memberLogin")
	public String login(Member m, HttpServletRequest req) {
		boolean flag = memberService.login(m);
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
	
	@RequestMapping(value="memberIdCheck")
	public String idCheck(@RequestParam(value="id")String id, Model x) {
		Member m = memberService.getMyInfo(id);
		
		boolean flag = false;	// 중복된 아이디
		if(m==null) {
			flag = true;	// 사용 가능한 아이디
		}
		x.addAttribute("flag",flag);
		return "ajax/memberIdCheck";	// ajax page
	}
}










