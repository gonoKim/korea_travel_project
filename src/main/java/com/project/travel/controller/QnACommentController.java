package com.project.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.service.QnACommentService;
import com.project.travel.vo.QnACommentVO;

@Controller
@RequestMapping("qnacomment/*")
public class QnACommentController {
		/*QnA댓글 컨트롤러*/
	@Autowired
	QnACommentService qnaCService;
	
	 // 댓글 리스트
		@RequestMapping(value="/clist", method = RequestMethod.GET)
		public ModelAndView qnaCList(){ 
		List<QnACommentVO> cResult = qnaCService.qnaCommentList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("cResult", cResult);
		return mav;
		}
		//댓글 삭제
		@RequestMapping(value="/QnACDelete",method = RequestMethod.GET)
		public void qnaCDelete(int qnaCNum) {
			qnaCService.qnaCommentDelete(qnaCNum);
		}
	}
