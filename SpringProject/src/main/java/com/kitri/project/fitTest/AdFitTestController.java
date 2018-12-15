package com.kitri.project.fitTest;

import javax.annotation.Resource;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kitri.project.member.MemberService;

@Controller
public class AdFitTestController {

	@Resource(name="FitTestService")
	private FitTestService fitTestService;
	
	@Resource(name="memberService")
	private MemberService memberService;
	
	@RequestMapping(value = "adFitTest.do")
	public String adFixTest() {
		return "adFitTest/adFitTest.admin";
	}
	
	@RequestMapping(value = "adFitTestInsert.do", method=RequestMethod.POST)
	public String adFixTestInsert(FitTest f) {
		fitTestService.addFitTest(f);
		return "adFitTest.do";
	}
	
	@RequestMapping(value = "adFitTestUpdate.do")
	public String adFixTestUpdate() {
		return "adFitTest/adFitTestUpdate.admin";
	}
}
