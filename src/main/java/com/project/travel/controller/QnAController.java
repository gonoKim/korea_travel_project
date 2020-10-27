package com.project.travel.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.travel.common.Pagination;
import com.project.travel.service.QnAService;
<<<<<<< HEAD
import com.project.travel.service.UserService;
=======
>>>>>>> branch 'Choi' of https://github.com/gonoKim/korea_travel_project.git
import com.project.travel.vo.QnACommentVO;
import com.project.travel.vo.QnAVO;
import com.project.travel.vo.UserVO;

/*클라이언트와 서버를 연결해주는 모듈 */
@Controller
@RequestMapping("qna/*")
public class QnAController {
	private static final Logger logger = LoggerFactory.getLogger(QnAController.class);
	
	@Autowired
	QnAService qnaService;
	
	@Inject
	UserService service;
	
	//	QnA 리스트 맵핑, 컨트롤러
	@RequestMapping("qna/QnABoard")
	public ModelAndView QnAboard(
			@RequestParam(required = false, defaultValue = "1") int qnapage,
			@RequestParam(required = false, defaultValue = "1") int qnarange
	){
		int qnalistCnt = qnaService.getQnAListCnt();
		// 페이지 계산
		Pagination pagination =new Pagination();
		pagination.pageInfo(qnapage, qnarange, qnalistCnt);
		
		//DB 접속, qna스타트 리스트 부부을 가져옴
		List result = qnaService.getQnAList(pagination.getQnastartList());
		ModelAndView mav = new ModelAndView();
		mav.addObject("pagination",pagination);
		mav.addObject("result", result);
		
<<<<<<< HEAD
		return mav;
	}
	
	// QnA 쓰기 컨트롤러
	@RequestMapping(value="qna/QnAWrite",method = RequestMethod.GET)
	public ModelAndView QnAWrite(HttpServletRequest req) throws Exception{
		logger.info("get QnAWrite");
		
		ModelAndView mav = new ModelAndView();
		
		HttpSession session = req.getSession();
		UserVO vo=(UserVO) session.getAttribute("user");
		
		UserVO result = service.login(vo);
		mav.addObject("user", result);
		
		return mav; 
	}
	
	// QnA 내용물 보여주는 컨트롤러 & 조회수 
	@RequestMapping(value="qna/QnAView",method = RequestMethod.GET)
	public ModelAndView QnAView(int qnA_Num, HttpServletRequest req) throws Exception{
		logger.info("get QnAView");
		
		ModelAndView mav = new ModelAndView();
		
		HttpSession session = req.getSession();
		UserVO vo=(UserVO) session.getAttribute("user");
		
		QnAVO result = qnaService.getQnAView(qnA_Num);
		UserVO result2 = service.login(vo);
		qnaService.viewsUpdate(qnA_Num);
		
		mav.addObject("result", result);
		mav.addObject("user", result2);
		mav.addObject("cResult", new QnACommentVO());
		
		return mav;
	}
	
	// QnA 업데이트 내용물 보여주는 컨트롤러 뷰 데이터 끌어다씀
	@RequestMapping(value="qna/QnAUpdate",method = RequestMethod.GET)
	public ModelAndView QnAUpdate(int qnA_Num) {
		logger.info("get QnAUpdate");
		
		QnAVO result = qnaService.getQnAView(qnA_Num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("result",result);
		
		return mav;
	}
	
	// QnA 삭제 
	@RequestMapping(value="qna/QnADelete",method = RequestMethod.GET)
	public String QnADelete(int qnA_Num) {
		logger.info("get QnADelete");
		
		qnaService.QnADelete(qnA_Num);
		return "redirect: QnABoard";
	}
=======
//		QnA 내용물 보여주는 컨트롤러 & 조회수 
		@RequestMapping(value="qna/QnAView",method = RequestMethod.GET)
		public ModelAndView QnAView(int qnaNum) {
			QnAVO result = qnaService.getQnAView(qnaNum);
			qnaService.viewsUpdate(qnaNum);
			ModelAndView mav = new ModelAndView();
			mav.addObject("result",result);
			mav.addObject("cResult", new QnACommentVO());
			return mav;
		}	
//		QnA 업데이트 내용물 보여주는 컨트롤러 뷰 데이터 끌어다씀
		@RequestMapping(value="qna/QnAUpdate",method = RequestMethod.GET)
		public ModelAndView QnAUpdate(int qnaNum) {
			QnAVO result = qnaService.getQnAView(qnaNum);
			ModelAndView mav = new ModelAndView();
			mav.addObject("result",result);
			return mav;
		}
//		QnA 삭제 
		@RequestMapping(value="qna/QnADelete",method = RequestMethod.GET)
		public String QnADelete(int qnaNum) {
			qnaService.QnADelete(qnaNum);
			return "redirect: QnABoard";
		}
>>>>>>> branch 'Choi' of https://github.com/gonoKim/korea_travel_project.git
}