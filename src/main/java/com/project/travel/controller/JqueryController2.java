package com.project.travel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.travel.service.NoticeService;
import com.project.travel.service.QnAService;
import com.project.travel.vo.NoticeVO;
import com.project.travel.vo.QnAVO;

@Controller
@RequestMapping("jquery2/*")
public class JqueryController2 {
	/* json을 통한 데이터 통신
	 *  jQuery ajax를 이용한 POST
	 *  */
	@Autowired
	NoticeService noticeService;
	
	// Notice 글 작성
	@RequestMapping(value="jquery2/NoticeWrite",method = RequestMethod.POST)
	@ResponseBody
	public int NoticeWrite(NoticeVO noticevo) {
		int result = 0; 
		result = noticeService.NoticeWrite(noticevo); 
		return result;
	}
	
	// Notice 글 수정
	@RequestMapping(value="jquery2/NoticeUpdate",method = RequestMethod.POST)
	@ResponseBody
	public int NoticeUpdate(NoticeVO noticevo) {
		int result = 0; 
		result = noticeService.NoticeUpdate(noticevo); 
		return result;
	}
}