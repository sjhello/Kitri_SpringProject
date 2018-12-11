package com.kitri.project.exercise;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ExerciseController {
	@Resource(name = "adExerciseService")
	ExerciseService adExerciseService;

	public void setAdExerciseService(ExerciseService adExerciseService) {
		this.adExerciseService = adExerciseService;
	}
	
	@RequestMapping(value = "exercise.do")
	public String exercise(@RequestParam(value="date",required=false)String date, Model model) {
		System.out.println(date);
		
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
	public String getAll(Model model) { // Model 컨트롤러에서 뷰로 값을 내릴때 사용한다.
		ArrayList<Exercise> list = adExerciseService.getAllExercise();
		model.addAttribute("list", list);// ()안에 앞에 있는거는 뷰에서 쓸 변수이름, 뒤에 있는거는 내가 쓸 객체
		return "exercise/adExerciseDetail.admin";
	}
	
}
