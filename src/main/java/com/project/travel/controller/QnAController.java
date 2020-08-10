package com.project.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.service.QnAService;

@Controller
@RequestMapping("qna/*")
public class QnAController {
	
	@Autowired
	QnAService qnaService;
	
		@RequestMapping("qna/QnABoard")
		public ModelAndView QnAboard() {
			List result = qnaService.getQnAList();
			ModelAndView mav = new ModelAndView();
			mav.addObject("result", result);
			return mav;
		}
		@RequestMapping(value="qna/QnAWrite",method = RequestMethod.GET)
		public ModelAndView QnAWrite() {
			ModelAndView mav = new ModelAndView();
			return mav; }
}
