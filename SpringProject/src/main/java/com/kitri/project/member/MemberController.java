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
	
	@RequestMapping(value = "mUpdate.do")
	public String mUpdate() {
		return "member/memberUpdate.admin";
	}
		
	@RequestMapping(value = "mdelete.do")
	public String mdelete() {
		return "redirect:memberList.do";
	}
	
	@RequestMapping(value="memberAdd")
	public String add(Member m, HttpServletRequest request) {
		String add1 = request.getParameter("signAddress1");
		String add2 = request.getParameter("signAddress1");
		String address = add1 + "/ " + add2;
		m.setAddress(address);
		
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
	
	@RequestMapping(value="memberEmailCheck")
	public String emailCheck(@RequestParam(value="email")String email, Model x) {
		Member m = memberService.getEmail(email);
		
		System.out.println(email);
		System.out.println(m);
		
		boolean flag = false;	// 중복된 이메일 -> 가입 못함
		if(m==null) {
			flag = true; // 중복되지 않는 이메일 -> 가입 가능함
		}
		x.addAttribute("flag",flag);
		return "ajax/memberEmailCheck";
	}
}










