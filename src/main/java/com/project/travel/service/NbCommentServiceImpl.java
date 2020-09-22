package com.project.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.dao.NbCommentDAO;
import com.project.travel.vo.NbCommentVO;

@Service
public class NbCommentServiceImpl implements NbCommentService {

	@Autowired
	NbCommentDAO commentDAO;
	
	 // 댓글 목록
	@Override
	public List<NbCommentVO> nBCommentList(int nb_Num) {
		return commentDAO.nBCommentList(nb_Num);
	}
	
	// 댓글 작성
	@Override
	public int nBCommentWrite(NbCommentVO nbCvo) {
		return commentDAO.nBCommentWrite(nbCvo);
	}
	
	// 댓글 수정
	@Override
	public int nBCommentUpdate(NbCommentVO nbCvo) {
		return commentDAO.nBCommentUpdate(nbCvo);
	}
	
	// 댓글 삭제
	@Override
	public int nBCommentDelete(int nb_C_Num) {
		return commentDAO.nBCommentDelete(nb_C_Num);
	}
}
