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
@RequestMapping("jquery/*")
public class JqueryController {
	/* json을 통한 데이터 통신
	 *  jQuery ajax를 이용한 POST
	 *  */
	@Autowired
	QnAService qnaService;
	
	//QnA쓰기 데이터 받 컨트롤러
	@RequestMapping(value="jquery/QnAWrite",method = RequestMethod.POST)
	@ResponseBody
	public int QnAWrite(QnAVO qnavo) {
		int result = 0; 
		result = qnaService.QnAWrite(qnavo); 
		return result;
	}
//	QnA업데이트 데이터 받는컨트롤러
	@RequestMapping(value="jquery/QnAUpdate",method = RequestMethod.POST)
	@ResponseBody
	public int QnAUpdate(QnAVO qnavo) {
		int result = 0; 
		result = qnaService.QnAUpdate(qnavo); 
		return result;
	}
	
	@Autowired
	NoticeService noticeService;
	
	@RequestMapping(value="jquery/NoticeWrite",method = RequestMethod.POST)
	@ResponseBody
	public int NoticeWrite(NoticeVO noticevo) {
		int result = 0; 
		result = noticeService.NoticeWrite(noticevo); 
		return result;
	}
	
	@RequestMapping(value="jquery/NoticeUpdate",method = RequestMethod.POST)
	@ResponseBody
	public int NoticeUpdate(NoticeVO noticevo) {
		int result = 0; 
		result = noticeService.NoticeUpdate(noticevo); 
		return result;
	}
}