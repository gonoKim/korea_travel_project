package com.project.travel.service;

import java.util.List;

import com.project.travel.vo.QnAVO;

public interface QnAService {
	List getQnAList();
	int QnAWrite(QnAVO qnavo);
	QnAVO getQnAView(int QnA_Num);
	void viewsUpdate(int QnA_Num);
}
