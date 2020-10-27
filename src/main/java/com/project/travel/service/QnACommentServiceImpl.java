package com.project.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.dao.QnACommentDAO;
import com.project.travel.vo.QnACommentVO;

@Service
public class QnACommentServiceImpl implements QnACommentService {

	@Autowired
	QnACommentDAO commentDAO;
	
	 // 댓글 목록
	@Override
	public List<QnACommentVO> qnaCommentList(int qnA_Num) {
		return commentDAO.qnaCommentList(qnA_Num);
	}
	
	// 댓글 작성
	@Override
	public int qnaCommentWrite(QnACommentVO qnaCvo) {
		return commentDAO.qnaCommentWrite(qnaCvo);
	}
	
	// 댓글 수정
	@Override
	public int qnaCommentUpdate(QnACommentVO qnaCvo) {
		return commentDAO.qnaCommentUpdate(qnaCvo);
	}
	
	// 댓글 삭제
	@Override
	public int qnaCommentDelete(int qnA_C_Num) {
		return commentDAO.qnaCommentDelete(qnA_C_Num);
	}
}
