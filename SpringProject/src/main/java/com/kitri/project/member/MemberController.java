package com.kitri.project.member;

import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.input.SAXBuilder;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.project.common.MemberAddReg;
import com.kitri.project.mail.MailHandler;
import com.kitri.project.mail.MemberEmailAuth;
import com.kitri.project.mail.MemberEmailAuthService;
import com.kitri.project.mail.TempKey;

import org.springframework.ui.Model;


@Controller
public class MemberController {
	@Resource(name="memberService")
	private MemberService memberService;
	
	@Resource(name="memberEmailAuthService")
	private MemberEmailAuthService memberEmailAuthService;
	
	@Resource(name="mailSender")
	private JavaMailSender mailSender;
	
	public void setService(MemberService memberService) { this.memberService = memberService; }
	
	@RequestMapping(value = "mUpdate.do")
	public String mUpdate() {
		return "member/memberUpdate.admin";
	}
		
	@RequestMapping(value = "mdelete.do")
	public String mdelete() {
		return "redirect:memberList.do";
	}
	
	@RequestMapping(value="memberAdd")
	public String add(Member m, HttpServletRequest request) throws Exception{		
		String add1 = request.getParameter("signAddress1");
		String add2 = request.getParameter("signAddress2");
		String address = add1 + "/ " + add2;
		m.setAddress(address);
		
		memberService.join(m);
		
		// 인증키 생성
		String key = new TempKey().getKey(50, false);
		MemberEmailAuth mea = new MemberEmailAuth();
		mea.setId(m.getId());
		mea.setEmail(m.getEmail());
		mea.setUser_authcode(key);
		
		memberEmailAuthService.createKey(mea);
		
		return "main/main.mTiles";
	}
	
	@RequestMapping(value="memberLogin")
	public String login(Member m, HttpServletRequest req) {
		boolean flag = memberService.login(m);
		boolean emailConfirm = memberService.emailAuthConfirm(m.getId());
		
		if(flag && emailConfirm) {
			System.out.println("asd");
			HttpSession session = req.getSession();
			session.setAttribute("id", m.getId());
			return "main/main.mTiles";
		} else {
			System.out.println("zxczxc");
			return "login/login.tiles";
		}
	}
	
	@RequestMapping(value="memberEdit", method=RequestMethod.POST)
	public String edit(Member m, HttpServletRequest req) {
		System.out.println(m);
		String add1 = req.getParameter("signAddress1");
		String add2 = req.getParameter("signAddress2");
		String address = add1 + "/ " + add2;
		m.setAddress(address);
		
		memberService.edit(m);
		
		return "main/main.mTiles";
	}
	
	@RequestMapping(value="memberLogout")
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		session.removeAttribute("id");
		session.invalidate();
		return "main/main.mTiles";
	}
	
	@RequestMapping(value="memberIdCheck")
	public String idCheck(@RequestParam(value="id")String id, Model x) {
		Member m = memberService.getMyInfo(id);
		
		boolean flag = false;	// 중복된 아이디
		if(m==null) {
			flag = true;	// 사용 가능한 아이디
		}
		x.addAttribute("flag",flag);
		return "ajax/memberIdCheck";	// ajax page
	}
	
	@RequestMapping(value="myInfo.do")
	public ModelAndView myInfo(@RequestParam(value="id")String id, HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		String sessionId = (String) session.getAttribute("id");
		
		ModelAndView mav = new ModelAndView("login/myInfo.tiles");
		
		Member m = memberService.getMyInfo(id);
		try {
			String [] addr = m.getAddress().split("/ ");
			String addr1 = addr[0];
			String addr2 = addr[1];
			
			mav.addObject("addr1",addr1);
			mav.addObject("addr2",addr2);
		} catch(Exception e) {
			e.printStackTrace();
		}
		mav.addObject("m",m);
		
		return mav;
	}
		
	@RequestMapping(value="memberEmailCheck")
	public String emailCheck(@RequestParam(value="email")String email, Model x) {
		Member m = memberService.getEmail(email);
		
		boolean flag = false;	// 중복된 이메일 -> 가입 못함
		if(m==null) {
			flag = true; // 중복되지 않는 이메일 -> 가입 가능함
		}
		x.addAttribute("flag",flag);
		return "ajax/memberEmailCheck";
	}
	
	@RequestMapping(value="emailConfirm")
	public String emailConfirm(@RequestParam(value="email")String email, @RequestParam(value="key")String key, Model x) {
		MemberEmailAuth mea = new MemberEmailAuth();
		mea.setEmail(email);
		mea.setUser_authcode(key);
		memberEmailAuthService.update(mea);
		
		x.addAttribute("mea",mea);
		return "member/emailConfirm";
	}
	
	@RequestMapping(value="postSearch")
	public String postSearch() {
		return "member/postSearch";
	}
	
	@RequestMapping(value="postSearchAjax", method=RequestMethod.GET)
	public String postSearchAjax(@RequestParam(value="searchValue")String searchValue, Model x) {
		SAXBuilder builder = new SAXBuilder();
		
		try {
			String key = "sBg1y3oICG7ymBQOhDj7%2F8JpiHeXO6PcA9d%2Fq3r4l7wTxlWMlJBdTdxzFvzSzp00wdXcdkFUScL3JbMGvfPrjA%3D%3D";
			String xmlUrl = "http://openapi.epost.go.kr/postal/retrieveNewAdressAreaCdSearchAllService/retrieveNewAdressAreaCdSearchAllService/getNewAddressListAreaCdSearchAll?ServiceKey="
					+key+"&countPerPage=10&currentPage=1&srchwrd="+searchValue;
			URL url = new URL(xmlUrl);
			
			Document doc = builder.build(url);	// xml을 document객체로 만듬
			
			Element root = doc.getRootElement();	// document 객체에서 최상위 element를 뽑아냄
			List list = root.getChildren("newAddressListAreaCdSearchAll");	// root엘리먼트의 자식을 가져옴
			
			ArrayList<PostNumSearch> resultList = new ArrayList<PostNumSearch>();
			
			for(int i=0; i<list.size(); i++) {
				Element node = (Element)list.get(i);
				
				PostNumSearch result = new PostNumSearch();
				result.setZipNo(node.getChildText("zipNo"));
				result.setLnmAdres(node.getChildText("lnmAdres"));
				result.setRnAdres(node.getChildText("rnAdres"));
				
				resultList.add(result);
			}
			x.addAttribute("resultList",resultList);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "ajax/postSearchAjax";
	}
}










