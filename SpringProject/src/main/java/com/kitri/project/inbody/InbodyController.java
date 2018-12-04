package com.kitri.project.inbody;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


public class InbodyController {
	
	@Resource(name="InbodyService")
	private InbodyService service;
	
	public void setService(InbodyService service) {
		this.service = service;
	}
	
	@RequestMapping(value="/info/inbody", method=RequestMethod.GET)
	public void addForm() {}
	
	@RequestMapping(value="/info/inbody", method=RequestMethod.POST)
	public String add(Inbody i) {
		service.addInbody(i);
		return "redirect:/info/inbody";
	}
	
	
	@RequestMapping("/info/inbody")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("info/inbody");
		ArrayList<Inbody> list = service.getAll();
		mav.addObject("list", list);
		return mav;
	}
	
	
	
}
