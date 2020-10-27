package com.project.travel.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.common.PaginationNotice;
import com.project.travel.service.NoticeService;
import com.project.travel.service.UserService;
import com.project.travel.vo.NbCommentVO;
import com.project.travel.vo.NoticeVO;
import com.project.travel.vo.UserVO;

@Controller
@RequestMapping("notice/*")
public class NoticeController {
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	@Autowired
	NoticeService noticeService;
	
	@Inject
	UserService service;
	
	@RequestMapping("notice/NoticeBoard")
	public ModelAndView NoticeBoard(
			@RequestParam(required = false, defaultValue = "1") int noticepage,
			@RequestParam(required = false, defaultValue = "1") int noticerange
	) {
		int noticelistCnt = noticeService.getNoticeListCnt();
		// 페이지 계산
		PaginationNotice pagination =new PaginationNotice();
		pagination.pageInfo(noticepage, noticerange, noticelistCnt);
		
		//DB 접속
		List result = noticeService.getNoticeList(pagination.getNoticestartList());
		ModelAndView mav = new ModelAndView();
		mav.addObject("pagination",pagination);
		mav.addObject("result", result);
		
		return mav;
	}

	// Notice 작성
	@RequestMapping(value = "notice/NoticeWrite", method = RequestMethod.GET)
	public ModelAndView NoticeWrite(HttpServletRequest req) throws Exception{
		logger.info("get NoticeWrite");
		
		ModelAndView mav = new ModelAndView();
		HttpSession session = req.getSession();
		UserVO vo=(UserVO) session.getAttribute("user");
		
		UserVO result = service.login(vo);
		mav.addObject("user", result);
		
		return mav;
	}

	// Notice 뷰(조회수증가&뷰)
	@RequestMapping(value = "notice/NoticeView", method = RequestMethod.GET)
	public ModelAndView NoticeView(int NB_Num, HttpServletRequest req) throws Exception{
		logger.info("get NoticeView");
		
		ModelAndView mav = new ModelAndView();
		
		HttpSession session = req.getSession();
		UserVO vo=(UserVO) session.getAttribute("user");
		
		NoticeVO result = noticeService.getNoticeView(NB_Num);
		UserVO result2 = service.login(vo);
		noticeService.NoticeviewsUpdate(NB_Num);
		
		mav.addObject("result", result);
		mav.addObject("user", result2);
		mav.addObject("cResult", new NbCommentVO());
		
		return mav;
	}
	
	// Notice 글 수정
	@RequestMapping(value = "notice/NoticeUpdate", method = RequestMethod.GET)
	public ModelAndView NoticeUpdate(int NB_Num) {
		logger.info("get NoticeUpdate");
		
		NoticeVO result = noticeService.getNoticeView(NB_Num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		
		return mav;
	}

	// Notice 글 삭제
	@RequestMapping(value = "notice/NoticeDelete", method = RequestMethod.GET)
	public String NoticeDelete(int NB_Num) {
		logger.info("get NoticeDelete");
		
		noticeService.NoticeDelete(NB_Num);
		return "redirect: NoticeBoard";
	}
}
