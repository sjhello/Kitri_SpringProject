package com.kitri.project.qa.web;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kitri.project.comn.Paging;
import com.kitri.project.qa.service.QaService;

@Controller
public class QaController {
	@Resource(name = "qaService")
	private QaService qaService;
	
	@RequestMapping(value = "qa.do")
	public String qa(Model model) {
		ArrayList<Qa> list = qaService.selectQaList(); 
		
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
		return "redirect:adqa.do";
	}
	
	@RequestMapping(value = "qaUpdateForm.do")
	public String qaUpdateForm(@RequestParam("q_num")int q_num, Model model) {
		Qa list = qaService.selectQa(q_num);
		model.addAttribute("list", list);
		return "qa/adQa-Update.admin";
	}
	
	@RequestMapping(value = "qaUpdate.do")
	public String qaUpdate(Qa q) {
		System.out.println(q);
		qaService.updateQa(q);
		return "redirect:adqa.do";
	}
	
	@RequestMapping(value = "qaDelete.do")
	public String qaDelete(@RequestParam("q_num")int q_num, Model model) {
		qaService.deleteQa(q_num);
		ArrayList<Qa> list = qaService.selectQaList(); 
		System.out.println(list);
		model.addAttribute("list", list);
		return "redirect:adqa.do";
	}
		
	@RequestMapping(value = "adqa.do")
	public String adqa(Model model, @RequestParam(defaultValue="1") int curPage) {
		int count = qaService.countQaList();
		
		Paging paging = new Paging(count, curPage);
		
		int start = paging.getPageBegin();
		int end = paging.getPageEnd();
		
		ArrayList<Qa> qaList = qaService.listAll(start, end);
		
		model.addAttribute("qaList", qaList);
		model.addAttribute("count", count);
		model.addAttribute("paging", paging);
		return "qa/ad-qa.admin";
	}
}
