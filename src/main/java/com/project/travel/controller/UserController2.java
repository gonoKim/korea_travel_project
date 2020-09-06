package com.project.travel.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.travel.service.UserService;
import com.project.travel.service.UserService2;
import com.project.travel.vo.UserVO;

@Controller
@RequestMapping("user2/*")
public class UserController2 {
	private static final Logger logger = LoggerFactory.getLogger(UserController2.class);
	
	@Inject
	UserService2 service;
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	// 회원정보 수정
		@RequestMapping(value="user2/UserUpdate",method = RequestMethod.POST)
		@ResponseBody
		public int UserUpdate(UserVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
			HttpSession session = req.getSession();
			UserVO login = service.login(vo);
			boolean pwdMatch;
			int result = 0; 
			
			if(login != null) {
				pwdMatch = pwdEncoder.matches(vo.getM_Pw(), login.getM_Pw());
			} else {
				pwdMatch = false;
			}
					
			if(login != null && pwdMatch == true) {
				result = service.UserUpdate(vo);
				session.setAttribute("user", login);
			} else {
				session.setAttribute("user", null);
				rttr.addFlashAttribute("msg", false);
			}
			return result;
		}
		
	// 비번 변경
		@RequestMapping(value="user2/modPwd",method = RequestMethod.POST)
		@ResponseBody
		public int modPwd(UserVO vo, @RequestParam("newPwd") String newPwd, @RequestParam("newPwd2") String newPwd2, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
			HttpSession session = req.getSession();
			UserVO login = service.login(vo);
			boolean pwdMatch;
			int result = 0; 
			
			if(login != null) {
				pwdMatch = pwdEncoder.matches(vo.getM_Pw(), login.getM_Pw());
			} else {
				pwdMatch = false;
			}
					
			if(login != null && pwdMatch == true) {
				if(newPwd.equals(newPwd2)) {							// 비밀번호 암호화
					String pwd = pwdEncoder.encode(newPwd);
					vo.setM_Pw(pwd);
					
					result=service.changePwd(vo);
				}
				login = service.login(vo);
				session.setAttribute("user", login);
			}
			return result;
		}
		
		//회원 탈퇴
		@RequestMapping(value="user2/delUser",method = RequestMethod.POST)
		@ResponseBody
		public int delUser(UserVO vo, HttpSession session) throws Exception {
			UserVO login = service.login(vo);
			boolean pwdMatch;
			int result = 0; 
			
			if(login != null) {
				pwdMatch = pwdEncoder.matches(vo.getM_Pw(), login.getM_Pw());
			} else {
				pwdMatch = false;
			}
			
			if(login != null && pwdMatch == true) {
				result=service.delUser(vo);
				session.invalidate();
			}
			
			return result;
		}
}