package com.kitri.project.diet;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class DietController {
	@Resource(name="DietService")
	private DietService service;
	public void setService(DietService service) { this.service = service; }
	@RequestMapping(value = "diet.do")
	public String diet() {
		
		return "diet/diet.tiles";
	}
	
	@RequestMapping(value = "diet/showMenu", method = RequestMethod.POST)
	public @ResponseBody HashMap<String,ArrayList<String>> showMenu(@RequestBody ArrayList<String> food, Model model) {
		
		HashMap<String,ArrayList<String>> menu = new HashMap<String, ArrayList<String>>();
		menu.put("test", food);
		
		/*if(mealtime=="morning")
			menu.put(mealtime, food);
		else if(mealtime=="lunch")
			menu.put(mealtime, food);
		else if(mealtime=="dinner")
			menu.put(mealtime, food);*/
		
		System.out.println("\nmenu:"+food.toString());
		
		//model.addAttribute("food", food);
		
		return menu;
	}
	
	/*@RequestMapping(value = "diet/showMenu", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, ArrayList<String>> showMenu(@RequestParam(value="f_date")String f_date, @RequestParam(value="mealtime")String mealtime, @RequestParam(value="f_level")String f_level, Model model) {
		HashMap<String, ArrayList<String>> menu = new HashMap<String, ArrayList<String>>();		
		ArrayList<String> food = service.selectMenu(f_date, mealtime, f_level);
		
		
		if(mealtime=="morning")
			menu.put(mealtime, food);
		else if(mealtime=="lunch")
			menu.put(mealtime, food);
		else if(mealtime=="dinner")
			menu.put(mealtime, food);
		
		System.out.println("\nmenu:"+menu);
		
		model.addAttribute("menu", menu.get("morning"));
		
		return menu;
	}*/
}
