package com.project.travel.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.service.UserService;
import com.project.travel.vo.NoticeVO;
import com.project.travel.vo.UserVO;

@Controller
@RequestMapping("mypage/*")
public class MyPageController {
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	/* MyPage 컨트롤러 */
	
		@Inject
		UserService service;
	
		/*
		 * @RequestMapping(value="mypage/MyPage",method = RequestMethod.GET) public
		 * ModelAndView MyPage() { ModelAndView mav = new ModelAndView(); return mav; }
		 */
		 
		/*
		 * @RequestMapping(value="mypage/MyPage", method = RequestMethod.GET) public
		 * String registerUpdateView() throws Exception{
		 * 
		 * return "mypage/MyPage"; }
		 */
		  
		  @RequestMapping(value="mypage/MyPage", method = RequestMethod.GET)
		  public ModelAndView MyPageView(String M_Id) {
			  UserVO result = service.getMyPageView(M_Id);
			  ModelAndView mav = new ModelAndView();
			  mav.addObject("user", result);
			  return mav;
		  }
		  
		  
}
