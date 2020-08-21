package com.project.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.cj.protocol.x.Notice;
import com.project.travel.service.NoticeService;
import com.project.travel.vo.NoticeVO;
import com.project.travel.vo.QnAVO;

@Controller
@RequestMapping("notice/*")
public class NoticeController {

	@Autowired
	NoticeService noticeService;

	// Notice 리스트
	@RequestMapping("notice/NoticeBoard")
	public ModelAndView NoticeBoard() {
		List<NoticeVO> result = noticeService.getNoticeList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		return mav;
	}

	// Notice 작성
	@RequestMapping(value = "notice/NoticeWrite", method = RequestMethod.GET)
	public ModelAndView NoticeWrite() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}

	// Notice 뷰(조회수증가&뷰)
	@RequestMapping(value = "notice/NoticeView", method = RequestMethod.GET)
	public ModelAndView NoticeView(int NB_Num) {
		noticeService.NoticeviewsUpdate(NB_Num);
		NoticeVO result = noticeService.getNoticeView(NB_Num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		return mav;
	}
	
	// Notice 글 수정
	@RequestMapping(value = "notice/NoticeUpdate", method = RequestMethod.GET)
	public ModelAndView NoticeUpdate(int NB_Num) {
		NoticeVO result = noticeService.getNoticeView(NB_Num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		return mav;
	}

	// Notice 글 삭제
	@RequestMapping(value = "notice/NoticeDelete", method = RequestMethod.GET)
	public String NoticeDelete(int NB_Num) {
		noticeService.NoticeDelete(NB_Num);
		return "redirect: NoticeBoard";
	}
}
