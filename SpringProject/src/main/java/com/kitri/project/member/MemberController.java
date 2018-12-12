package com.kitri.project.member;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kitri.project.mail.MailHandler;
import com.kitri.project.mail.MemberEmailAuth;
import com.kitri.project.mail.MemberEmailAuthService;
import com.kitri.project.mail.TempKey;

import org.springframework.ui.Model;

@Controller
public class MemberController {
	@Resource(name="memberService")
	private MemberService memberService;
	
	@Resource(name="memberEmailAuthService")
	private MemberEmailAuthService memberEmailAuthService;
	
	@Resource(name="mailSender")
	private JavaMailSender mailSender;
	
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
	public String add(Member m, HttpServletRequest request) throws Exception{
		String add1 = request.getParameter("signAddress1");
		String add2 = request.getParameter("signAddress1");
		String address = add1 + "/ " + add2;
		m.setAddress(address);
		
		memberService.join(m);
		
		// 인증키 생성
		String key = new TempKey().getKey(50, false);
		MemberEmailAuth mea = new MemberEmailAuth();
		mea.setId(m.getId());
		mea.setEmail(m.getEmail());
		mea.setUser_authcode(key);
		
		memberEmailAuthService.createKey(mea);
		
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
	
	@RequestMapping(value="myInfo.do")
	public String myInfo() {
		return "login/myInfo.tiles";
	}
		
	@RequestMapping(value="memberEmailCheck")
	public String emailCheck(@RequestParam(value="email")String email, Model x) {
		Member m = memberService.getEmail(email);
		
		boolean flag = false;	// 중복된 이메일 -> 가입 못함
		if(m==null) {
			flag = true; // 중복되지 않는 이메일 -> 가입 가능함
		}
		x.addAttribute("flag",flag);
		return "ajax/memberEmailCheck";
	}
	
	@RequestMapping(value="emailConfirm")
	public String emailConfirm(@RequestParam(value="email")String email, @RequestParam(value="key")String key, Model x) {
		MemberEmailAuth mea = new MemberEmailAuth();
		mea.setEmail(email);
		mea.setUser_authcode(key);
		memberEmailAuthService.update(mea);
		
		x.addAttribute("mea",mea);
		return "member/emailConfirm";
	}
}










