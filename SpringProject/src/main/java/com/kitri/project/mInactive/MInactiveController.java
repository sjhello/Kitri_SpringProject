package com.kitri.project.mInactive;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MInactiveController {
	@RequestMapping(value = "inactiveMember.do")
	public String inactiveMember() {
		return "mInatcive/mInactiveList.admin";
	}
}
