package com.project.travel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.travel.service.QnACommentService;
import com.project.travel.service.QnAService;
import com.project.travel.vo.QnACommentVO;
import com.project.travel.vo.QnAVO;

@Controller
@RequestMapping("jquery/*")
public class QnAPostController {
	/* json을 통한 데이터 통신 jQuery ajax를 이용한 POST */
	@Autowired
	QnAService qnaService;
	
	@Autowired
	QnACommentService qnaCService;
	
	// QnA 쓰기 데이터 받 컨트롤러
	@RequestMapping(value="jquery/QnAWrite",method =  RequestMethod.POST)
	@ResponseBody
	public int QnAWrite(QnAVO qnavo) {
		int result = 0; 
		result = qnaService.QnAWrite(qnavo); 
		return result;
	}
	
	// QnA 업데이트 데이터 받는컨트롤러
	@RequestMapping(value="jquery/QnAUpdate",method = RequestMethod.POST)
	@ResponseBody
	public int QnAUpdate(QnAVO qnavo) {
		int result = 0; 
		result = qnaService.QnAUpdate(qnavo); 
		return result;
	}

	// QnA 댓글 받는 컨트롤러
	@RequestMapping(value="jquery/QnACWrite",method = RequestMethod.POST)
	@ResponseBody
	public int QnACWrite(QnACommentVO qnaCvo) {
		int result = 0; 
		result = qnaCService.qnaCommentWrite(qnaCvo); 
		return result;
	}

	// QnA 수정 받는 컨트롤러
	@RequestMapping(value="jquery/QnACUpdate",method = RequestMethod.POST)
	@ResponseBody
	public int QnACUpdate(QnACommentVO qnaCvo) {
		int result = 0; 
		result = qnaCService.qnaCommentUpdate(qnaCvo); 
		return result;
	}
}