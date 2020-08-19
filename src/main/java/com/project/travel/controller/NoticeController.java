package com.project.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.service.NoticeService;
import com.project.travel.vo.NoticeVO;

@Controller
@RequestMapping("notice/*")
public class NoticeController {
	
	@Autowired
	NoticeService noticeService;

	@RequestMapping("notice/NoticeBoard")
	public ModelAndView NoticeBoard() {
		List<NoticeVO> result = noticeService.getNoticeList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		
		return mav;
	}
	
	@RequestMapping(value="notice/NoticeWrite", method=RequestMethod.GET)
	public ModelAndView NoticeWrite() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}
