package com.project.travel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.travel.dao.NoticeDAO;
import com.project.travel.vo.NoticeVO;
import com.project.travel.vo.QnAVO;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	NoticeDAO noticeDAO;
	
	@Override
	public List<NoticeVO> getNoticeList() {
		return noticeDAO.getNoticeList();
	}

	@Override
	public int NoticeWrite(NoticeVO noticevo) {
		return noticeDAO.NoticeWrite(noticevo);
	}

	@Override
	public NoticeVO getNoticeView(int NB_Num) {
		return noticeDAO.getNoticeView(NB_Num);
	}

	@Override
	public void NoticeviewsUpdate(int NB_Num) {
		noticeDAO.NoticeviewUpdate(NB_Num);
		
	}

	@Override
	public int NoticeUpdate(NoticeVO noticevo) {
		return noticeDAO.NoticeUpdate(noticevo);
	}
	
	

}
