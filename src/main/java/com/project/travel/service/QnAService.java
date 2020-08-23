package com.project.travel.service;

import java.util.List;

import com.project.travel.vo.QnAVO;

/*비즈니스 로직*/
public interface QnAService {
	List getQnAList(int qnastartList);
	int QnAWrite(QnAVO qnavo);
	QnAVO getQnAView(int QnA_Num);
	void viewsUpdate(int QnA_Num);
	int QnAUpdate(QnAVO qnavo); 
	int QnADelete(int QnA_Num);
	int getQnAListCnt();
}
