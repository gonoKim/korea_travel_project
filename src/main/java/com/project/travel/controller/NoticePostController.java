package com.project.travel.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.travel.service.NbCommentService;
import com.project.travel.service.NoticeService;
import com.project.travel.vo.NbCommentVO;
import com.project.travel.vo.NoticeVO;

@Controller
@RequestMapping("jquery/*")
public class NoticePostController {
	private static final Logger logger = LoggerFactory.getLogger(NoticePostController.class);
	
	@Autowired
	NoticeService noticeService;
	
	@Autowired
	NbCommentService nBCService;
		
	// Notice 쓰기 데이터 받 컨트롤러
	@RequestMapping(value="jquery/NoticeWrite",method =  RequestMethod.POST)
	@ResponseBody
	public int NoticeWrite(NoticeVO noticevo) {
		logger.info("get NoticeWrite");
		
		int result = 0; 
		result = noticeService.NoticeWrite(noticevo); 
		
		return result;
	}
	
	// Notice 업데이트 데이터 받는컨트롤러
	@RequestMapping(value="jquery/NoticeUpdate",method = RequestMethod.POST)
	@ResponseBody
	public int NoticeUpdate(NoticeVO noticevo) {
		logger.info("get NoticeUpdate");
		
		int result = 0; 
		result = noticeService.NoticeUpdate(noticevo); 
		
		return result;
	}
	
	// Notice 댓글 받는 컨트롤러
	@RequestMapping(value="jquery/NbCWrite",method = RequestMethod.POST)
	@ResponseBody
	public int NbCWrite(NbCommentVO nbCvo) {
		logger.info("get NbCWrite");
		
		int result = 0; 
		result = nBCService.nBCommentWrite(nbCvo); 
		
		return result;
	}

	// Notice 수정 받는 컨트롤러
	@RequestMapping(value="jquery/NbCUpdate",method = RequestMethod.POST)
	@ResponseBody
	public int NbCUpdate(NbCommentVO nbCvo) {
		logger.info("get NbCUpdate");
		
		int result = 0; 
		result = nBCService.nBCommentUpdate(nbCvo); 
		
		return result;
	}
}