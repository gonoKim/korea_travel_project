package com.project.travel.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.project.travel.service.QnACommentService;
import com.project.travel.vo.QnACommentVO;

@RestController
@RequestMapping("qnacomment/*")
public class QnACommentController {
	private static final Logger logger = LoggerFactory.getLogger(QnACommentController.class);

	@Autowired
	QnACommentService qnaCService;
	
<<<<<<< HEAD
	// 댓글 리스트
	@RequestMapping(value="/clist", method = RequestMethod.GET)
	public List<QnACommentVO> qnaCList(int qnA_Num){ 
		logger.info("get qnaCList");
		
		return  qnaCService.qnaCommentList(qnA_Num);
=======
	 // 댓글 리스트
//		@RequestMapping(value="/clist", method = RequestMethod.GET)
//		public String qnaCList(int qnaNum){ 
//		List<QnACommentVO> cResult = qnaCService.qnaCommentList(qnaNum);
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("cResult", cResult);
//		return  "redirect: ../qna/QnAView";
//		}
	
		@RequestMapping(value="/clist", method = RequestMethod.GET)
		public List<QnACommentVO> qnaCList(int qnaNum){ 
		return  qnaCService.qnaCommentList(qnaNum);
		}
		//댓글 삭제
		@RequestMapping(value="/QnACDelete",method = RequestMethod.GET)
		public void qnaCDelete(int qnaCNum) {
			qnaCService.qnaCommentDelete(qnaCNum);
		}
>>>>>>> branch 'Choi' of https://github.com/gonoKim/korea_travel_project.git
	}
	
	//댓글 삭제
	@RequestMapping(value="/QnACDelete", method = RequestMethod.GET)
	public void qnaCDelete(int qnA_C_Num) {
		logger.info("get qnaCDelete");
		
		qnaCService.qnaCommentDelete(qnA_C_Num);
	}
}
