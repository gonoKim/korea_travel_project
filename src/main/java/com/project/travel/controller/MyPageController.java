package com.project.travel.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.service.UserService;
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
		ModelAndView mav = new ModelAndView();
		
		HttpSession session = req.getSession();
		UserVO vo=(UserVO) session.getAttribute("user");
		
		UserVO result = service.login(vo);
		mav.addObject("user", result);
		return mav;
	}
}
