package com.project.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.service.FestivalService;

@Controller
@RequestMapping("setUp/*")
public class FestivalController {
	@Autowired
	FestivalService festivalService;

	@RequestMapping("/setupBoard")
	public ModelAndView QnAboard() {
		//DB 접속, qna스타트 리스트 부부을 가져옴
		List fResult = festivalService.festivalList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("fResult", fResult);
		return mav;
	}
	
	
}
