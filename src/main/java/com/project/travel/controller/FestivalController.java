package com.project.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.service.FestivalService;
import com.project.travel.vo.FestivalVO;

@Controller
@RequestMapping("Festival/*")
public class FestivalController {
	
	@Autowired
	FestivalService festivalService;

	@RequestMapping("/FestivalBoard")
	public ModelAndView FestivalBoard() {
		//DB �젒�냽, qna�뒪���듃 由ъ뒪�듃 遺�遺��쓣 媛��졇�샂
		List fResult = festivalService.festivalList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("fResult", fResult);
		return mav;
	}
	@RequestMapping(value="/FestivalWrite",method = RequestMethod.GET)
	public ModelAndView FestivalWrite() {
		ModelAndView mav = new ModelAndView();
		return mav; 
		}
	
	@ResponseBody
	@RequestMapping(value="/FestivalWrite",method =  RequestMethod.POST)
	public int FestivalWrite(FestivalVO festivalvo) {
		int result = 0; 
		result = festivalService.festivalwrite(festivalvo); 
		return result;
	}
	
}
