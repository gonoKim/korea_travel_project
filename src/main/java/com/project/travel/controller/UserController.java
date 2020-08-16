package com.project.travel.controller;

import java.lang.reflect.Member;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.travel.service.UserService;
import com.project.travel.vo.UserVO;

@Controller
@RequestMapping("user/*")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	UserService service;
	
	// 회원가입 get
	@RequestMapping(value="Sign_Up/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	
	// 회원가입 post
	@RequestMapping(value="Sign_Up/register", method = RequestMethod.POST)
	public String postRegister(UserVO vo) throws Exception {
		logger.info("post register");
		
		service.register(vo);
		
		return null;
	}
}