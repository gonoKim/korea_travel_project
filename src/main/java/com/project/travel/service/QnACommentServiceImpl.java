package com.project.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.dao.QnACommentDAO;
import com.project.travel.vo.QnACommentVO;
@Service
public class QnACommentServiceImpl implements QnACommentService {

	@Autowired
	QnACommentDAO CommentDAO;
	
	@Override
	public List<QnACommentVO> qnaCommentList() {
		return CommentDAO.qnaCommentList();
	}

	@Override
	public int qnaCommentWrite(QnACommentVO qnaCvo) {
		return CommentDAO.qnaCommentWrite(qnaCvo);
	}

	@Override
	public int qnaCommentUpdate(QnACommentVO qnaCvo) {
		return CommentDAO.qnaCommentUpdate(qnaCvo);
	}

	@Override
	public int qnaCommentDelete(int QnA_C_Num) {
		return CommentDAO.qnaCommentDelete(QnA_C_Num);
	}
}
