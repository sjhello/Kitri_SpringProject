package com.kitri.project.exercise;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.jasper.tagplugins.jstl.core.Out;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kitri.project.comn.Paging;

@Controller
public class ExerciseController {
	@Resource(name = "adExerciseService")
	ExerciseService adExerciseService;

	public void setAdExerciseService(ExerciseService adExerciseService) {
		this.adExerciseService = adExerciseService;
	}
	
	@RequestMapping(value = "exercise.do")
	public String exercise(@RequestParam(value="date",required=false)String date, Model model) {
		
		if (date == null) {
			SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
			Calendar c1 = Calendar.getInstance();
			date = sdf.format(c1.getTime());
		}
		
		ArrayList<Exercise> list = adExerciseService.selectExerciseDate(date);
		System.out.println(list);
		model.addAttribute("list", list);
		String[] array = date.split("/");
		date = array[1] + "/" + array[0] + "/" + array[2];
		model.addAttribute("date", date);
		return "exercise/exercise.tiles";
	}
	
	@RequestMapping(value = "adExercise.do")
	public String adExercise(Model model,@RequestParam(value="type",required=false,defaultValue="1")int type) {
		ArrayList<Exercise> list = null;
		if (type == 1) {
			list = adExerciseService.selectExerciseListF(type);
		} else if (type == 2) {
			list = adExerciseService.selectExerciseListF(type);
		} else if (type == 3) {
			list = adExerciseService.selectExerciseListF(type);
		} else {
			System.out.println("잘못된 형식");
		}
		System.out.println(list);
		model.addAttribute("list", list);
		model.addAttribute("type", type);
		return "exercise/adExercise.admin";
	}
	
	@RequestMapping(value = "adExerciseWrite.do")
	public String adExerciseWrite() {
		return "exercise/adExerciseWrite.admin";
	}
	
	@RequestMapping(value = "adExerciseUpdate.do")
	public String adExerciseUpdate(@RequestParam("num") int num, Model model) {
		Exercise adExercise = adExerciseService.selectAdExercise(num);
		model.addAttribute("adExercise", adExercise);
		return "exercise/adExerciseUpdate.admin";
	}
	
	@RequestMapping(value = "adExerciseSelect.do")
	public String adExerciseSelect() {
		return "exercise/adExerciseSelect.admin";
	}
	
	@RequestMapping(value = "adExerciseDelete.do")
	public String adExerciseDelete(@RequestParam("num") int num, Model model) {
		adExerciseService.deleteAdExercise(num);
		return "redirect:adExercise.do"; // rediret 페이지 다시 연다
	}
	
	@RequestMapping(value = "adExerciseInsert", method=RequestMethod.POST)
	public String insert(Exercise ad,@RequestParam(value="type",required=false,defaultValue="1") int type, RedirectAttributes redirectAttributes) {
		adExerciseService.addExercise(ad);
		redirectAttributes.addAttribute("type", type);
		return "redirect:adExercise.do";
	}
	
	@RequestMapping(value = "adExerciseEdit", method=RequestMethod.POST)
	public String edit(Exercise ad) {
		System.out.println(ad);
		adExerciseService.editExercise(ad);
		return "redirect:adExercise.do";
	}
	
	@RequestMapping(value = "adExerciseDel", method=RequestMethod.POST)
	public String del(int num) {
		adExerciseService.delExercise(num);
		return "redirect:adExercise.do";
	}
	
	@RequestMapping(value = "adExerciseGet", method=RequestMethod.POST)
	public String get(int num) {
		adExerciseService.getExercise(num);
		return "exercise/adExercise.admin";
	}
	
	@RequestMapping(value = "adExerciseDetail.do", method=RequestMethod.GET)
	public String getAll(Model model, @RequestParam(value="date") String date, @RequestParam(defaultValue="1") int curPage) {
		int count = adExerciseService.countExerciseDate(date);
		Paging paging = new Paging(count, curPage);
		
		int start = paging.getPageBegin();
		int end = paging.getPageEnd();
		
		ArrayList<Exercise> list = adExerciseService.listAll(start, end, date);
		System.out.println(list);
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("date", date);
		model.addAttribute("paging", paging);
		return "exercise/adExerciseDetail.admin";
	}
	
}
