package com.kitri.project.notice.web;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kitri.project.comn.Paging;
import com.kitri.project.notice.service.NoticeService;

@Controller
public class NoticeController {
	
	@Resource(name = "noticeService")
	private NoticeService noticeService;
	
	@RequestMapping(value = "notice.do")
	public String notice(Model model, @RequestParam(defaultValue="1") int curPage) {
		int count = noticeService.countNotice();
		
		Paging paging = new Paging(count, curPage);
		
		int start = paging.getPageBegin();
		int end = paging.getPageEnd();
		
		ArrayList<Notice> n = noticeService.selectAll(start, end);
		
		model.addAttribute("list", n);
		model.addAttribute("count", count);
		model.addAttribute("paging", paging);
		return "notice/notice.tiles";
	}
	
	@RequestMapping(value = "noticeDetail.do")
	public String noticeDetail(@RequestParam("num")int num, Model model) {
		Notice n = noticeService.selectNotice(num);
		noticeService.addHits(n);
		Notice n1 = noticeService.selectNotice(num);
		model.addAttribute("list", n1);
		return "notice/notice-detail.tiles";
	}
	
	@RequestMapping(value = "notice-writeForm.do")
	public String noticeWrite() {
		return "notice/notice-write.tiles";
	}
	
	@RequestMapping(value = "notice-write.do")
	public String noticeWritePost(Notice n) {
		noticeService.insertNotice(n);
		return "redirect:notice.do";
	}
	
	@RequestMapping(value = "notice-updateForm.do")
	public String noticeUpdateForm(@RequestParam("num")int num, Model model) {
		Notice n = noticeService.selectNotice(num);
		model.addAttribute("list", n);
		return "notice/notice-update.tiles";
	}
	
	@RequestMapping(value = "notice-update.do")
	public String noticeUpdate(Notice n) {
		noticeService.updateNotice(n);
		return "redirect:notice.do";
	}
	
	@RequestMapping(value ="notice-delete.do")
	public String noticeDelete(@RequestParam("num")int num, Model model) {
		noticeService.deleteNotice(num);
		return "redirect:notice.do";
	}
}
