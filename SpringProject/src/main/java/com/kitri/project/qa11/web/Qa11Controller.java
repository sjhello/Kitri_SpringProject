package com.kitri.project.qa11.web;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kitri.project.qa11.service.Qa11Service;

@Controller
public class Qa11Controller {
	@Resource(name = "qa11Service")
	private Qa11Service qa11Service;
	
	@RequestMapping(value = "qa11.do")
	public String qa11(Model model, HttpSession session) {
		String id = (String)session.getAttribute("id");
		
		if (id != null) {
			ArrayList<Qa11> qa11 = qa11Service.selectQa11Id(id);
			
			if (qa11 != null) {
				ArrayList<Qa11> list =  qa11Service.uaSelectQa(id);
				model.addAttribute("list", list);
				model.addAttribute("list1", list);
				return "qa11/qa11.tiles";
			}
		}
		return "qa11/qa11.tiles";
	}
	
	@RequestMapping(value = "qaDetail11.do")
	public String qaDetail11(@RequestParam("code")int code, Model model) {
		Qa11 list = qa11Service.selectQa11(code);
		model.addAttribute("list", list);
		return "qa11/detail-qa11.tiles";
	}
	
	@RequestMapping(value = "qaWriteForm11.do")
	public String qaWriteForm11() {
		
		return "qa11/write-qa11.tiles";
	}
	
	@RequestMapping(value = "qaWrite11.do")
	public String qaWrite11(Qa11 qa11, HttpSession session) {
		String id = (String)session.getAttribute("id");
		qa11.setId(id);
		qa11Service.insertQa11(qa11);
		return "redirect:qa11.do";
	}
	
	@RequestMapping(value = "adQa-Write11Form.do")
	public String Write11Form(@RequestParam("code")int code, Model model) {
		Qa11 list = qa11Service.selectQa11(code);
		model.addAttribute("list", list);
		return "qa11/adQa-Write11.admin";
	}
	
	@RequestMapping(value = "adQa-Write11.do")
	public String adQaWrite11(Qa11 qa11,HttpSession session) {
		int code = qa11.getCode();
		qa11.setId("admin");
		qa11Service.updateQa11CheckTrue(code);
		qa11Service.insertAdQa11(qa11);
		return "redirect:adqa11.do";
	}
	
	@RequestMapping(value = "adQa-Detail11.do")
	public String adQaDetail11(@RequestParam("originNo")int originNo, Model model) {
		Qa11 qa11 = qa11Service.detailQa11(originNo);
		Qa11 adQa11 = qa11Service.detailAdQa11(originNo);
		model.addAttribute("qa11", qa11);
		model.addAttribute("adQa11", adQa11);
		return "qa11/adQa-Detail.admin";
	}
	
	@RequestMapping(value = "adQa-Update11Form.do")
	public String adQaUpdate11Form(@RequestParam("originNo")int originNo, Model model) {
		Qa11 qa11 = qa11Service.detailQa11(originNo);
		Qa11 adQa11 = qa11Service.detailAdQa11(originNo);
		model.addAttribute("qa11", qa11);
		model.addAttribute("adQa11", adQa11);
		return "qa11/adQa-Update11.admin";
	}
	
	@RequestMapping(value = "adQa-Update11.do")
	public String adQaUpdate11(Qa11 qa11) {
		qa11Service.updateQa11(qa11);
		return "redirect:adqa11.do";
	}
	
	@RequestMapping(value = "adQa-Delete11.do")
	public String adQaDelete11(@RequestParam("originNo") int originNo) {
		System.out.println(originNo);
		qa11Service.uaDeleteQa11(originNo);
		return "redirect:adqa11.do";
	}
	
	@RequestMapping(value = "adDelete11.do")
	public String adDelete11(@RequestParam("uCode") int uCode, @RequestParam("qCode") int qCode) {
		qa11Service.updateupdateQa11CheckFalse(uCode);
		qa11Service.deleteQa11(qCode);
		
		return "redirect:adqa11.do";
	}
	
	@RequestMapping(value = "adqa11.do")
	public String adQa11(Model model) {
		ArrayList<Qa11> list =  qa11Service.selectQa11ListAdNot();
		model.addAttribute("list", list);
		return "qa11/ad-qa11.admin";
	}
	
	@RequestMapping(value = "qa11Ajax.do")
	public String qa11Ajax(@RequestParam("check")int check ,Model model) {
		ArrayList<Qa11> list = null;
		
		if (check  == 0) {
			list = qa11Service.selectQa11ListAdNot();
		} else {
			
			if (check == 1) {
				list = qa11Service.selectQa11Ad(0);
			} else if (check == 2) {
				list = qa11Service.selectQa11Ad(1);
			}
		}
			
		model.addAttribute("list", list);
		return "ajax/qa11Ajax";
	}
	
}
