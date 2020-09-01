package com.project.travel.service;

import java.util.List;

import com.project.travel.vo.QnAVO;

/*비즈니스 로직*/
public interface QnAService {
	List getQnAList(int qnastartList); 	//qna보더 리스트
	int QnAWrite(QnAVO qnavo);			//qna보더 쓰기	
	QnAVO getQnAView(int qnaNum);		//qna보더 내용 뷰
	void viewsUpdate(int qnaNum);		//qna보더 조회수 업데이트
	int QnAUpdate(QnAVO qnavo); 		//qna보더 업데이트
	int QnADelete(int qnaNum);			//qna보더 삭제
	int getQnAListCnt();				//qna보더 갯수
}
