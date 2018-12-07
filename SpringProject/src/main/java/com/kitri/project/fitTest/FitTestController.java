package com.kitri.project.fitTest;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FitTestController {
	
	@Resource(name="FitTestService")
	private FitTestService service;
	
	public void setService(FitTestService service) {
		this.service = service;
	}
	
	@RequestMapping(value="/info/fitTest/add", method=RequestMethod.GET)
	public void addForm() {}
	
	@RequestMapping(value="/info/fitTest/add", method=RequestMethod.POST)
	public String add(FitTest f) {
		service.addFitTest(f);
		return "redirect:/info/fitTest";
	}
	
	
	@RequestMapping("fitTest")
	public ModelAndView list(HttpSession session) {
		String id = (String)session.getAttribute("id");
		ModelAndView mav = new ModelAndView("info/fitTest.tiles");
		ArrayList<FitTest> list = service.getFitTest(id);
		mav.addObject("list", list);
		return mav;
	}
	
}
