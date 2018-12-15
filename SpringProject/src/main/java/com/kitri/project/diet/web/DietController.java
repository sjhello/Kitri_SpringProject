package com.kitri.project.diet.web;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kitri.project.comn.Paging;
import com.kitri.project.diet.service.DietService;
import com.kitri.project.exercise.Exercise;

@Controller
public class DietController {
	
	@Resource(name="dietService")
	private DietService dietService;
	
	@RequestMapping(value = "diet.do")
	public String diet(@RequestParam(value="date",required=false)String date, Model model) {
		
		if (date == null) {
			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			Calendar c1 = Calendar.getInstance();
			date = sdf.format(c1.getTime());
		}
		
		ArrayList<Diet> list = dietService.selectDietDateList(date);
		model.addAttribute("list", list);
		String[] array = date.split("/");
		date = array[1] + "/" + array[0] + "/" + array[2];
		model.addAttribute("date", date);
		return "diet/diet.tiles";
	}
	
	@RequestMapping(value = "adDiet.do")
	public String adDiet(Model model,@RequestParam(value="type",required=false,defaultValue="1")int type) {
		ArrayList<Exercise> list = null;
		String f_level;
		
		if (type == 1) {
			f_level = "저체중";
			list = dietService.selectDietListF(f_level);
		} else if (type == 2) {
			f_level = "정상체중";
			list = dietService.selectDietListF(f_level);
		} else if (type == 3) {
			f_level = "과체중";
			list = dietService.selectDietListF(f_level);
		} else {
			System.out.println("잘못된 형식");
		}
		System.out.println(list);
		model.addAttribute("list", list);
		model.addAttribute("type", type);
		return "diet/adDiet.admin";
	}
	
	@RequestMapping(value = "adDietWriteForm.do")
	public String adDietWriteForm() {
		return "diet/adDietWrite.admin";
	}
	
	@RequestMapping(value = "adDietWrite.do")
	public String adDietWrite(Diet diet, @RequestParam(value="type",required=false,defaultValue="1") int type, RedirectAttributes redirectAttributes) {
		dietService.insertDiet(diet);
		redirectAttributes.addAttribute("type", type);
		return "redirect:adDiet.do";
	}
	
	@RequestMapping(value = "adDieUpdateForm.do")
	public String adDieUpdateForm(@RequestParam("num") int num, Model model) {
		int count = 0;
		
		Diet list = dietService.selectDiet(num);
		
		if (list.getF1() == null)
			count++;
		if (list.getF2() == null)
			count++;
		if (list.getF3() == null)
			count++;
		if (list.getF4() == null)
			count++;
		if (list.getF5() == null)
			count++;
		if (list.getF6() == null)
			count++;
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		return "diet/adDietUpdate.admin";
	}
	
	@RequestMapping(value = "adDietUpdate.do")
	public String adDietUpdate(Diet diet, Model model) {
		dietService.updateDiet(diet);
		return "redirect:adDiet.do";
	}
	
	@RequestMapping(value = "adDietDel.do")
	public String adDietDel(@RequestParam("num") int num, Model model) {
		dietService.deleteDiet(num);
		return "redirect:adDiet.do";
	}
	
	@RequestMapping(value = "adDietSelectForm.do")
	public String adDietSelect() {
		return "diet/adDietSelect.admin";
	}
	
	@RequestMapping(value = "adDietSelectList.do")
	public String adDietSelectList(Model model, @RequestParam(value="date") String date, @RequestParam(defaultValue="1") int curPage) {
		int count = dietService.countDietDate(date);
		Paging paging = new Paging(count, curPage);
		System.out.println(count);
		System.out.println(paging);
		int start = paging.getPageBegin();
		int end = paging.getPageEnd();
		
		ArrayList<Diet> list = dietService.listAll(start, end, date);
		System.out.println(list);
		
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("date", date);
		model.addAttribute("paging", paging);
		return "diet/adSelectList.admin";
	}
	
}
