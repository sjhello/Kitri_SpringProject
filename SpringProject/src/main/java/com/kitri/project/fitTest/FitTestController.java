package com.kitri.project.fitTest;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kitri.project.member.Member;
import com.kitri.project.member.MemberService;

@Controller
public class FitTestController {
	
	@Resource(name="FitTestService")
	private FitTestService fitTestService;
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	@RequestMapping(value="/info/fitTest/add", method=RequestMethod.GET)
	public void addForm() {}
	
	@RequestMapping(value = "fitTest")
	public String inbodyList(HttpSession session, Model model) {
		String id = (String)session.getAttribute("id");
		ArrayList<FitTest> fitTest = fitTestService.getFitTest(id);
		Member member = memberService.getMyInfo(id);
		model.addAttribute("flist", fitTest);
		model.addAttribute("mlist", member);
		return "info/fitTest.tiles";
	}
	
	
}
