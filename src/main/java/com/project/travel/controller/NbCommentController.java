package com.project.travel.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.project.travel.service.NbCommentService;
import com.project.travel.vo.NbCommentVO;

@RestController
@RequestMapping("nbcomment/*")
public class NbCommentController {
	private static final Logger logger = LoggerFactory.getLogger(NbCommentController.class);

	@Autowired
	NbCommentService nBCService;
	
	// 댓글 리스트
	@RequestMapping(value="/clist", method = RequestMethod.GET)
	public List<NbCommentVO> nBCList(int nb_Num){
		logger.info("get nBCList");
		
		return nBCService.nBCommentList(nb_Num);
	}
	
	// 댓글 삭제
	@RequestMapping(value="/NbCDelete", method = RequestMethod.GET)
	public void nBCDelete(int nb_C_Num) {
		logger.info("get nBCDelete");
		
		nBCService.nBCommentDelete(nb_C_Num);
	}
}
