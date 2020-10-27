package com.project.travel.service;

import java.util.List;

import com.project.travel.vo.QnACommentVO;

public interface QnACommentService {
	// 댓글 목록
	List <QnACommentVO> qnaCommentList(int qnA_Num);
	
	// 댓글 작성
	int qnaCommentWrite(QnACommentVO qnaCvo);
	
	// 댓글 수정
	int qnaCommentUpdate(QnACommentVO qnaCvo);
	
	// 댓글 삭제
	int qnaCommentDelete(int qnA_C_Num);
}
