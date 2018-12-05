package com.kitri.project.inbody;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InbodyController {
	
	@Resource(name="InbodyService")
	private InbodyService service;
	
	public void setService(InbodyService service) {
		this.service = service;
	}
	
	@RequestMapping(value="/info/add", method=RequestMethod.GET)
	public void addForm() {}
	
	@RequestMapping(value="/info/add", method=RequestMethod.POST)
	public String add(Inbody i) {
		service.addInbody(i);
		return "redirect:/info/inbody";
	}
	
	
	@RequestMapping("inbody")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("info/inbody.tiles");
		ArrayList<Inbody> list = service.getAll();
		mav.addObject("list", list);
		return mav;
	}
	
	
	
}
