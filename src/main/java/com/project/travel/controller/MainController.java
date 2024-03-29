package com.project.travel.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.travel.service.MainService;

@Controller
@RequestMapping("main/*")
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Inject
	MainService service;
	
	// 메인 get
	@RequestMapping(value="/main/main", method = RequestMethod.GET)
	public String Main(Model model) throws Exception {
		logger.info("get main");
		
		model.addAttribute("topBanner", service.topBanner());				// top 배너에 넣을 이미지 찾기
		model.addAttribute("bottomBanner", service.bottomBanner());			// bottom 배너에 넣을 이미지 찾기
		model.addAttribute("nbList", service.nbList());						// 공지사항 목록 조회
		
		return "/main/main";
	}
}