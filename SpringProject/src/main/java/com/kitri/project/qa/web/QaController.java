package com.kitri.project.qa.web;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kitri.project.qa.service.QaService;

@Controller
public class QaController {
	@Resource(name = "qaService")
	private QaService qaService;
	
	@RequestMapping(value = "qa.do")
	public String qa(Model model) {
		ArrayList<Qa> list = qaService.selectQaList(); 
		System.out.println(list);
		model.addAttribute("list", list);
		return "qa/qa.tiles";
	}
	
	@RequestMapping(value = "adQaWriteForm.do")
	public String aqQaWriteForm() {
		
		return "qa/adQa-Write.admin";
	}
	
	@RequestMapping(value = "adQaWrite.do")
	public String aQqaWrite(Qa q) {
		qaService.insertQa(q);
		return "redirect:admin.do";
	}
	
	@RequestMapping(value = "qaUpdateForm.do")
	public String qaUpdateForm() {
		
		return "qa/adQa-Update.tiles";
	}
	
	@RequestMapping(value = "qaUpdate.do")
	public String qaUpdate() {
		
		return "redirect:admin.do";
	}
	
	@RequestMapping(value = "qaDelete.do")
	public String qaDelete() {
		
		return "redirect:admin.do";
	}
}
