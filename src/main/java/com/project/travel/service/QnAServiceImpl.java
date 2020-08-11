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
	public QnAVO getQnAView(int qnA_Num) {
	return qnaDAO.getQnAView(qnA_Num);
	}
	@Override
	public void viewsUpdate(int qnA_Num) {
		qnaDAO.viewUpdate(qnA_Num);
	}
}
