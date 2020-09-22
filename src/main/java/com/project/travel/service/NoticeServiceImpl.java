package com.project.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.dao.NoticeDAO;
import com.project.travel.vo.MainVO;
import com.project.travel.vo.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	NoticeDAO noticeDAO;
	
	// NB 리스트
	@Override
	public List<NoticeVO> getNoticeList(int noticestartList) {
		return noticeDAO.getNoticeList(noticestartList);
	}
	
	// 총 게시글 개수 확인 
	@Override
	public int getNoticeListCnt() {
		return noticeDAO.getNoticeListCnt();
	}
	
	// Notice 작성 
	@Override
	public int NoticeWrite(NoticeVO noticevo) {
		return noticeDAO.NoticeWrite(noticevo);
	}
	
	// Notice 내용 뷰
	@Override
	public NoticeVO getNoticeView(int NB_Num) {
		return noticeDAO.getNoticeView(NB_Num);
	}
	
	// Notice 조회수 업데이트
	@Override
	public void NoticeviewsUpdate(int NB_Num) {
		noticeDAO.NoticeviewUpdate(NB_Num);
	}
	
	// Notice 수정
	@Override
	public int NoticeUpdate(NoticeVO noticevo) {
		return noticeDAO.NoticeUpdate(noticevo);
	}
	
	// Notice 삭제
	@Override
	public int NoticeDelete(int NB_Num) {
		return noticeDAO.NoticeDelete(NB_Num);
	}
}