package com.project.travel.service;

import java.util.List;

import com.project.travel.vo.NbCommentVO;

public interface NbCommentService {
	// 댓글 목록
	List <NbCommentVO> nBCommentList(int nb_Num);
	
	// 댓글 작성
	int nBCommentWrite(NbCommentVO nbCvo);
	
	// 댓글 수정
	int nBCommentUpdate(NbCommentVO nbCvo);
	
	// 댓글 삭제
	int nBCommentDelete(int nb_C_Num);
}
