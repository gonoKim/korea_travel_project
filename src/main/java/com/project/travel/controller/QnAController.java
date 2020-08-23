package com.project.travel.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.common.Pagination;
import com.project.travel.service.QnAService;
import com.project.travel.vo.QnAVO;

/*클라이언트와 서버를 연결해주는 모듈 */
@Controller
@RequestMapping("qna/*")
public class QnAController {
	/* QnA 컨트롤러 */
	@Autowired
	QnAService qnaService;
//		QnA 리스트 맵핑, 컨트롤러
		@RequestMapping("qna/QnABoard")
		public ModelAndView QnAboard(
				@RequestParam(required = false, defaultValue = "1") int qnapage
			,   @RequestParam(required = false, defaultValue = "1") int qnarange
				) {

			int qnalistCnt = qnaService.getQnAListCnt();
			// 페이지 계산
			Pagination pagination =new Pagination();
			pagination.pageInfo(qnapage, qnarange, qnalistCnt);
			pagination.getQnastartList();
			//DB 접속
			List result = qnaService.getQnAList(qnarange);
			ModelAndView mav = new ModelAndView();
			mav.addObject("pagination",pagination);
			mav.addObject("result", result);
			return mav;
		}
		
//		QnA 쓰키 컨트롤러
		@RequestMapping(value="qna/QnAWrite",method = RequestMethod.GET)
		public ModelAndView QnAWrite() {
			ModelAndView mav = new ModelAndView();
			return mav; 
			}
		
//		QnA 내용물 보여주는 컨트롤러 & 조회수 
		@RequestMapping(value="qna/QnAView",method = RequestMethod.GET)
		public ModelAndView QnAView(int QnA_Num) {
			qnaService.viewsUpdate(QnA_Num);
			QnAVO result = qnaService.getQnAView(QnA_Num);
			ModelAndView mav = new ModelAndView();
			mav.addObject("result",result);
			return mav;
		}	
//		QnA 내용물 보여주는 컨트롤러 뷰 데이터 끌어다씀
		@RequestMapping(value="qna/QnAUpdate",method = RequestMethod.GET)
		public ModelAndView QnAUpdate(int QnA_Num) {
			QnAVO result = qnaService.getQnAView(QnA_Num);
			ModelAndView mav = new ModelAndView();
			mav.addObject("result",result);
			return mav;
		}
//		QnA 삭제 
		@RequestMapping(value="qna/QnADelete",method = RequestMethod.GET)
		public String QnADelete(int QnA_Num) {
			qnaService.QnADelete(QnA_Num);
			return "redirect: QnABoard";
		}
}