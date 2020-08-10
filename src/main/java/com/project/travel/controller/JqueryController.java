package com.project.travel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.travel.service.QnAService;
import com.project.travel.vo.QnAVO;

@Controller
@RequestMapping("jquery/*")
public class JqueryController {

	@Autowired
	QnAService qnaService;
	
	@RequestMapping(value="jquery/QnAWrite",method = RequestMethod.POST)
	@ResponseBody
	public int QnAWrite(QnAVO qnavo) {
		int result = 0; 
		result = qnaService.QnAWrite(qnavo); 
		return result;
	}
	
}