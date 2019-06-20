package com.kitri.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.service.MemberService;


@Controller
@RequestMapping("/user")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
//	@Qualifier("impl1")
	private MemberService memberService;
	
	
	
	@RequestMapping(value = "/register.kitri", method = RequestMethod.GET)
//	가져갈 값없이 단순페이지이동이므로 String으로
	public String register() {
		return "user/member/member";
	}

	@RequestMapping(value = "/register.kitri", method = RequestMethod.POST)
//	가져갈 값없이 단순페이지이동이므로 String으로
	public String register(MemberDetailDto memberDetailDto, Model model) {
		int cnt = memberService.registerMember(memberDetailDto);
		if(cnt != 0 ) {
			model.addAttribute("userInfo", memberDetailDto);
			return "user/member/registerok";
		}
		return "user/member/memberfail";
	}

	@RequestMapping(value = "/idcheck.kitri", method = RequestMethod.GET)
	public @ResponseBody String idcheck(@RequestParam(name = "checkid") String id) {
		logger.info("검색아이디 :" + id); 
		String json = memberService.idCheck(id);
		return json;		//user밑의 login밑의 login.jsp 이므로 user/login/입력
	}

	@RequestMapping("/zipsearch.kitri")
	@ResponseBody
	public String zipsearch(@RequestParam("doro") String doro) {
		logger.info("도로명 :" + doro); 
		String json = memberService.zipSearch(doro);
		return json;		//user밑의 login밑의 login.jsp 이므로 user/login/입력
	}

	@RequestMapping("/mvlogin.kitri")
	public String login() {
		return "user/login/login";		//user밑의 login밑의 login.jsp 이므로 user/login/입력
	}
	
}
