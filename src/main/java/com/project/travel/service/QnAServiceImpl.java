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
	
	public List<QnAVO> getQnAList(int qnastartList) {
		return qnaDAO.getQnAList(qnastartList);
	}
	
	@Override
	public int QnAWrite(QnAVO qnavo) {
	return qnaDAO.QnAWrite(qnavo);
	}
	
	@Override
	public QnAVO getQnAView(int qnaNum) {
	return qnaDAO.getQnAView(qnaNum);
	}
	
	@Override
	public void viewsUpdate(int qnaNum) {
		qnaDAO.viewUpdate(qnaNum);
	}

	@Override
	public int QnAUpdate(QnAVO qnavo) {
		return qnaDAO.QnAUpdate(qnavo);
	}
	
	@Override
	public int QnADelete(int qnaNum) {
		return qnaDAO.QnADelete(qnaNum);
	}
	
	@Override
	public int getQnAListCnt() {
		return qnaDAO.getQnAListCnt();
	}
}
