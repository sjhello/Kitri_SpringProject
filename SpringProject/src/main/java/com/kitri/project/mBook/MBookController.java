package com.kitri.project.mBook;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;


import com.kitri.project.member.Member;
import com.kitri.project.member.MemberService;

@Controller
public class MBookController {
	@Resource(name="memberService")
	private MemberService memberService;
	public void setService(MemberService memberService) { this.memberService = memberService; }
	
	
	/*예약자 정보 보기*/
	@RequestMapping(value = "mInsert.do")
	public ModelAndView mInsert(@RequestParam("id")String id) {
		ModelAndView mav = new ModelAndView("mBook/memberInsert.admin");
		Member m = memberService.getMyInfo(id);
		mav.addObject("m",m);
		return mav;
	}
	
	/*예약자 리스트 보기*/
	@RequestMapping(value="bookMember.do")
	public ModelAndView bookMemberList() {	// 가입승인 대기자 목록
		ArrayList<Member> list = memberService.getReservation();
		ModelAndView mav = new ModelAndView("mBook/bookMember.admin");
		mav.addObject("list", list);
		return mav;
	}
	
	/*예약자 가입 승인*/
	@RequestMapping(value="bookMember.do", method=RequestMethod.POST)
	public String memberConfirm(Member m) {		
		memberService.adminConfirm(m.getId());
		return "redirect:bookMember.do";
	}
	
	/*관리자가 회원정보 수정*/
	@RequestMapping(value="adminMemberUpdate", method=RequestMethod.POST)
	public String adminMemberUpdate(Member m) {
		memberService.edit(m);
		return "redirect:bookMember.do";
	}
	
	/*회원 전체보기*/
	@RequestMapping(value="memberList.do")
	public ModelAndView memberList() {
		ModelAndView mav = new ModelAndView("member/memberList.admin");
		ArrayList<Member> list = memberService.getAll();
		mav.addObject("list",list);
		return mav;
	}
	
	/*admin_confirm 컬럼이 'o' select 회원 전체목록에서 회원 상세보기 했을때 승인 버튼 보일지 안보일지 결정*/
	@RequestMapping(value="memberReservationCheck", method=RequestMethod.POST)
	public String memberReservationCheck(@RequestParam(value="id")String id, Model x) {
		Member m = memberService.getReservationComplete(id);
		System.out.println(m);
		boolean flag = false;	// 검색결과 있음
		if(m==null) {
			flag = true;	// 검색결과 없음
		}
		x.addAttribute("flag", flag);
		return "ajax/reservationCheck";
	}
}

























