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
	
	public List<QnAVO> getQnAList() {
		return qnaDAO.getQnAList();
	}
	@Override
	public int QnAWrite(QnAVO qnavo) {
	return qnaDAO.QnAWrite(qnavo);
	}
	@Override
	public QnAVO getQnAView(int QnA_Num) {
	return qnaDAO.getQnAView(QnA_Num);
	}
	@Override
	public void viewsUpdate(int QnA_Num) {
		qnaDAO.viewUpdate(QnA_Num);
	}

	@Override
	public int QnAUpdate(QnAVO qnavo) {
		return qnaDAO.QnAUpdate(qnavo);
	}
	@Override
	public int  QnADelete(int QnA_Num) {
		return qnaDAO.QnADelete(QnA_Num);
	}
}
