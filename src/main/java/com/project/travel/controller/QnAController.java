package com.project.travel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.service.QnAService;
import com.project.travel.vo.QnAVO;

@Controller
@RequestMapping("qna/*")
public class QnAController {
	/* QnA 컨트롤러 */
	@Autowired
	QnAService qnaService;
//		QnA 리스트 맵핑, 컨트롤러
		@RequestMapping("qna/QnABoard")
		public ModelAndView QnAboard() {
			List result = qnaService.getQnAList();
			ModelAndView mav = new ModelAndView();
			mav.addObject("result", result);
			return mav;
		}
		
//		QnA 쓰키 컨트롤러
		@RequestMapping(value="qna/QnAWrite",method = RequestMethod.GET)
		public ModelAndView QnAWrite() {
			ModelAndView mav = new ModelAndView();
			return mav; 
			}
//		QnA 내용물 보여주는 컨트롤러
		@RequestMapping(value="qna/QnAView",method = RequestMethod.GET)
		public ModelAndView QnAView(int QnA_Num) {
			qnaService.viewsUpdate(QnA_Num);
			QnAVO result = qnaService.getQnAView(QnA_Num);
			ModelAndView mav = new ModelAndView();
			mav.addObject("result",result);
			return mav;
		}
}
