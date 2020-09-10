package com.project.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.dao.QnADAO;
import com.project.travel.vo.QnAVO;

@Service
public class QnAServiceImpl implements QnAService {
	
	@Autowired
	QnADAO qnaDAO;
	
	// QnA 리스트 
	@Override
	public List<QnAVO> getQnAList(int qnastartList) {
		return qnaDAO.getQnAList(qnastartList);
	}
	
	// 총 게시글 개수 확인 
	@Override
	public int getQnAListCnt() {
		return qnaDAO.getQnAListCnt();
	}
	
	// QnA 작성
	@Override
	public int QnAWrite(QnAVO qnavo) {
		return qnaDAO.QnAWrite(qnavo);
	}
	
	// QnA 내용 뷰 
	@Override
	public QnAVO getQnAView(int qnA_Num) {
		return qnaDAO.getQnAView(qnA_Num);
	}
	
	// QnA 조회수 업데이트
	@Override
	public void viewsUpdate(int qnA_Num) {
		qnaDAO.viewUpdate(qnA_Num);
	}
	
	// QnA 수정 
	@Override
	public int QnAUpdate(QnAVO qnavo) {
		return qnaDAO.QnAUpdate(qnavo);
	}
	
	// QnA 삭제 
	@Override
	public int QnADelete(int qnA_Num) {
		return qnaDAO.QnADelete(qnA_Num);
	}
}
