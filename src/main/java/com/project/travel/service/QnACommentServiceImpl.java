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
	
	@Override
	public List<QnACommentVO> qnaCommentList(int qnA_Num) {
		return commentDAO.qnaCommentList(qnA_Num);
	}

	@Override
	public int qnaCommentWrite(QnACommentVO qnaCvo) {
		return commentDAO.qnaCommentWrite(qnaCvo);
	}

	@Override
	public int qnaCommentUpdate(QnACommentVO qnaCvo) {
		return commentDAO.qnaCommentUpdate(qnaCvo);
	}

	@Override
	public int qnaCommentDelete(int qnA_C_Num) {
		return commentDAO.qnaCommentDelete(qnA_C_Num);
	}
}
