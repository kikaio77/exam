package kr.co.goodee39.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodee39.service.MemberService;
import kr.co.goodee39.vo.MemberVO;


@Controller
@RequestMapping("/member")
public class MemberController {
	
	
	@Autowired 
	MemberService service;
	
	
	@GetMapping("/login")
    public String isLogin(MemberVO vo,HttpSession session) {	
		 return service.getMember(vo, session);
	}
	
	@GetMapping("/logout")
    public String Logout(MemberVO vo,HttpSession session) {	
		session.invalidate();
		System.out.println("로그아웃했어요.");
		 return "redirect:/";
	}
	
	
	
	
	@GetMapping("/join")
	public String join(MemberVO vo) {
		return "join";
		
	}
	
	@GetMapping("/joinSuccess")
	public String joinSuccess(MemberVO vo) {
		
		service.setMember(vo);
	
		
		
		return "redirect:/";
	}
	
	


}
