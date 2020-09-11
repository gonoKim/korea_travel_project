package com.project.travel.service;

import java.util.List;

import com.project.travel.vo.NoticeVO;

public interface NoticeService {
	// NB 리스트
	List getNoticeList(int noticestartList);
	
	// 총 게시글 개수 확인 
	int getNoticeListCnt();
	
	// Notice 작성 
	int NoticeWrite(NoticeVO noticevo);

	// Notice 내용 뷰
	NoticeVO getNoticeView(int NB_Num);

	// Notice 조회수 업데이트
	void NoticeviewsUpdate(int NB_Num);

	// Notice 수정
	int NoticeUpdate(NoticeVO noticevo);

	// Notice 삭제
	int NoticeDelete(int NB_Num);
}
