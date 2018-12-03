package com.kitri.project.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	@RequestMapping(value = "notice.do")
	public String notice() {
		return "notice/notice.tiles";
	}
	
	@RequestMapping(value = "notice-write.do")
	public String noticeWrite() {
		return "notice/notice-write.tiles";
	}
	
	@RequestMapping(value = "notice-update.do")
	public String noticeUpdate() {
		return "notice/notice-update.tiles";
	}
}
