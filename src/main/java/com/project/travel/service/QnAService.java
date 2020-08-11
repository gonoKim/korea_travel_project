package com.project.travel.service;

import java.util.List;

import com.project.travel.vo.QnAVO;

public interface QnAService {
	List getQnAList();
	int QnAWrite(QnAVO qnavo);
	QnAVO getQnAView(int qnA_Num);
	void viewsUpdate(int qnA_Num);
}
