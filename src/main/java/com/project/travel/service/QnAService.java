package com.project.travel.service;

import java.util.List;

import com.project.travel.vo.QnAVO;

/*비즈니스 로직*/
public interface QnAService {
	// QnA 리스트 
	List getQnAList(int qnastartList);
	
	// 총 게시글 개수 확인 
	int getQnAListCnt();
	
	// QnA 작성
	int QnAWrite(QnAVO qnavo);
	
	// QnA 내용 뷰 
	QnAVO getQnAView(int qnA_Num);
	
	// QnA 조회수 업데이트
	void viewsUpdate(int qnA_Num);
	
	// QnA 수정 
	int QnAUpdate(QnAVO qnavo);
	
	// QnA 삭제 
	int QnADelete(int qnA_Num);		
}
