package com.kitri.project.mBook;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.project.member.Member;
import com.kitri.project.member.MemberService;

@Controller
public class MBookController {
	@Resource(name="memberService")
	private MemberService memberService;
	public void setService(MemberService memberService) { this.memberService = memberService; }
	
	@RequestMapping(value = "mInsert.do")
	public String mInsert() {
		return "mBook/memberInsert.admin";
	}
	
	@RequestMapping(value="bookMember.do")
	public ModelAndView bookMemberList() {	// 가입승인 대기자 목록
		ArrayList<Member> list = memberService.getAll();
		ModelAndView mav = new ModelAndView("mBook/bookMember.admin");
		mav.addObject("list", list);
		return mav;
	}
}
