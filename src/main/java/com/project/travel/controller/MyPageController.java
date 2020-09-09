package com.project.travel.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.travel.service.UserService;
import com.project.travel.utility.Utilities;
import com.project.travel.vo.UserVO;

@Controller
@RequestMapping("mypage/*")
public class MyPageController {
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	@Inject
	UserService service;
	
	// 마이페이지 get
	@RequestMapping(value = "mypage/myPage", method = RequestMethod.GET)
	public ModelAndView MyPageView(HttpServletRequest req) throws Exception {
		logger.info("get MyPageView");
		
		ModelAndView mav = new ModelAndView();
		
		HttpSession session = req.getSession();
		UserVO vo=(UserVO) session.getAttribute("user");
		
		UserVO result = service.login(vo);
		mav.addObject("user", result);
		return mav;
	}
	
	// 전화번호 중복 체크
	@ResponseBody
	@RequestMapping(value="/phoneChk", method = RequestMethod.POST)
	public int phoneChk(UserVO vo) throws Exception {
		logger.info("get MyPageView");
		
		int result = service.phoneChk(vo);
		return result;
	}
	
	// 전화번호 중복 체크 (마이페이지)
	@ResponseBody
	@RequestMapping(value="/myPagePhoneChk", method = RequestMethod.POST)
	public int myPagePhoneChk(UserVO vo) throws Exception {
		logger.info("get MyPageView");
		
		int result = service.myPagePhoneChk(vo);
		return result;
	}
	
	// 회원정보 수정 post
	@RequestMapping(value="/userUpdate",method = RequestMethod.POST)
	public String userUpdate(UserVO vo, HttpServletRequest req, RedirectAttributes rttr, @RequestParam("M_Pw") String pw) throws Exception {
		logger.info("post userUpdate");
		
		HttpSession session = req.getSession();
		Utilities util = Utilities.getInstance();
		UserVO login = service.login(vo);
		
		int result = service.phoneChk(vo);
		boolean pwdMatch;
		
		if(login != null) {
			pwdMatch = util.checkSha256BCrypt(pw, login.getM_Pw());
		} else {
			pwdMatch = false;
		}
				
		if(login != null && pwdMatch == true) {
			if(result == 1) {} 
			else {
				service.userUpdate(vo);
				session.setAttribute("user", login);
				rttr.addFlashAttribute("msg", true);
			}
		} else {
			rttr.addFlashAttribute("msg", false);
		}
		return "redirect:/mypage/myPage";	
	}
	
	// 비밀번호 변경 post (마이페이지)
	@ResponseBody
	@RequestMapping(value="/modPwd",method = RequestMethod.POST)
	public int modPwd(UserVO vo, @RequestParam("newPwd") String newPwd, @RequestParam("newRePwd") String newRePwd,  @RequestParam("M_Pw") String pw, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post modPwd");
		
		HttpSession session = req.getSession();
		Utilities util = Utilities.getInstance();
		UserVO login = service.login(vo);

		boolean pwdMatch;
		int result = 0; 
		
		if(login != null) {
			pwdMatch = util.checkSha256BCrypt(pw, login.getM_Pw());
		} else {
			pwdMatch = false;
		}
				
		if(login != null && pwdMatch == true) {
			if(newPwd.equals(newRePwd)) {							// 비밀번호 암호화
				String pwd = util.makeSha256BCrypt(newPwd);
				vo.setM_Pw(pwd);
				
				result = service.changePwd(vo);
			}
			login = service.login(vo);
			session.setAttribute("user", login);
		}
		return result;
	}
	
	// 회원 탈퇴 post
	@ResponseBody
	@RequestMapping(value="/delUser",method = RequestMethod.POST)
	public int delUser(UserVO vo, HttpSession session, @RequestParam("M_Pw") String pw) throws Exception {
		logger.info("post delUser");
		
		Utilities util = Utilities.getInstance();
		UserVO login = service.login(vo);
		
		boolean pwdMatch;
		int result = 0; 
		
		if(login != null) {
			pwdMatch = util.checkSha256BCrypt(pw, login.getM_Pw());
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
