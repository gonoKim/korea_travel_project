package com.project.travel.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.jni.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.travel.service.UserService;
import com.project.travel.vo.NoticeVO;
import com.project.travel.vo.UserVO;

@Controller
@RequestMapping("user/*")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	UserService service;
	
	// 회원가입 get
	@RequestMapping(value="/Sign_Up/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value="/idChk", method = RequestMethod.POST)
	public int idChk(UserVO vo) throws Exception {
		int result = service.idChk(vo);
		return result;
	}
	
	// 회원가입 post
	@RequestMapping(value="/Sign_Up/register", method = RequestMethod.POST)
	public String postRegister(UserVO vo) throws Exception {
		logger.info("post register");
		int result = service.idChk(vo);
		try {
			if(result == 1) {
				return "redirect:/user/Sign_Up/register";
			}else if(result == 0) {
				service.register(vo);
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/user/Sign_In/login";
	}
	
	// 로그인 get
	@RequestMapping(value="/Sign_In/login", method = RequestMethod.GET)
	public void getLogin() throws Exception {
		logger.info("get login");
	}
	
	// 로그인 post
	@RequestMapping(value="/Sign_In/login", method = RequestMethod.POST)
	public String login(UserVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		logger.info("post login");
		
		HttpSession session = req.getSession();
		UserVO login = service.login(vo);
		
		if(login == null) {
			session.setAttribute("user", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/user/Sign_In/login";	
		}else {
			session.setAttribute("user", login);
			return "redirect:/main/main";
		}
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		session.invalidate();
		return "redirect:/main/main";
	}
	
	
	@RequestMapping(value="user/UserUpdate",method = RequestMethod.POST)
	@ResponseBody
	public int User(UserVO vo) throws Exception {
		int result = 0; 
		result = service.UserUpdate(vo);
		return result;
	}
	
}