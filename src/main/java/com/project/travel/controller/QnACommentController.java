package com.project.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.project.travel.service.QnACommentService;
import com.project.travel.vo.QnACommentVO;

@RestController
@RequestMapping("qnacomment/*")
public class QnACommentController {
		/*QnA댓글 컨트롤러*/
	@Autowired
	QnACommentService qnaCService;
	
	 // 댓글 리스트
//		@RequestMapping(value="/clist", method = RequestMethod.GET)
//		public String qnaCList(int qnaNum){ 
//		List<QnACommentVO> cResult = qnaCService.qnaCommentList(qnaNum);
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("cResult", cResult);
//		return  "redirect: ../qna/QnAView";
//		}
//		댓글 리스트
		@RequestMapping(value="/clist", method = RequestMethod.GET)
		public List<QnACommentVO> qnaCList(int qnA_Num){ 
		return  qnaCService.qnaCommentList(qnA_Num);
		}
		//댓글 삭제
		@RequestMapping(value="/QnACDelete",method = RequestMethod.GET)
		public void qnaCDelete(int qnA_C_Num) {
			qnaCService.qnaCommentDelete(qnA_C_Num);
		}
	}
