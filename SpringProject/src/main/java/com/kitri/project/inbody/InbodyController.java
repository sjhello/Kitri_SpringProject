package com.kitri.project.inbody;

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
public class InbodyController {
	
	@Resource(name="InbodyService")
	private InbodyService inbodyService;
		
	@Resource(name="memberService")
	private MemberService memberService;	

	
	@RequestMapping(value="/info/add", method=RequestMethod.GET)
	public void addForm() {}
	
	@RequestMapping(value="/info/add", method=RequestMethod.POST)
	public String add(Inbody i) {
		inbodyService.addInbody(i);
		return "redirect:/info/inbody";
	}
	
	
//	@RequestMapping(value = "inbody.1")
//	public ModelAndView list(HttpSession session) {
//		String id = (String)session.getAttribute("id");
//		ModelAndView mav = new ModelAndView("info/inbody.tiles");
//		ArrayList<Inbody> list = inbodyService.getInbody(id);
//		mav.addObject("list", list);
//		return mav;
//	}
	
	@RequestMapping(value = "inbody")
	public String inbodyList(HttpSession session, Model model) {
		String id = (String)session.getAttribute("id");
		ArrayList<Inbody> inbody = inbodyService.getInbody(id);
		Member member = memberService.getMyInfo(id);
		model.addAttribute("ilist", inbody);
		model.addAttribute("mlist", member);
		return "info/inbody.tiles";
	}
	
	
	
}
