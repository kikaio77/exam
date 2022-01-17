package kr.co.goodee39.service;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.vo.MemberVO;

@Service
public class MemberService {
	
	
	
	 @Autowired
	 SqlSessionTemplate sqlSessionTemplate;
	 
	  
	 public String getMember(MemberVO vo,HttpSession session) {
		 
		 MemberVO vo1  = sqlSessionTemplate.selectOne("member.selectMember",vo);
		 
		 
		 
		 String path="";
		  
		 if(vo1 != null) {
			 
			 session.setAttribute("account", vo1);
			 path="redirect:/";
			 System.out.println("로그인 성공했수다");
		 }
		 else {
			 path="/member/join";
			 System.out.println("로그인 실패했수다");
		 }
		 return path;
		 
		 
		
		 
	 }
	 
	 public void setMember(MemberVO vo)
	 {
		 sqlSessionTemplate.insert("member.insertMember",vo);
		 
	 }
	

}
