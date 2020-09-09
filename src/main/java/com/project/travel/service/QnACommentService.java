package com.project.travel.service;

import java.util.List;

import com.project.travel.vo.QnACommentVO;

public interface QnACommentService {
	List <QnACommentVO> qnaCommentList(int qnA_Num);
	int qnaCommentWrite(QnACommentVO qnaCvo);
	int qnaCommentUpdate(QnACommentVO qnaCvo); 
	int qnaCommentDelete(int qnA_C_Num);
}
