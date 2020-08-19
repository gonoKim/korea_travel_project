package com.project.travel.service;

import java.util.List;
import com.project.travel.vo.NoticeVO;
import com.project.travel.vo.QnAVO;

public interface NoticeService {
	List<NoticeVO> getNoticeList();
	int NoticeWrite(NoticeVO noticevo);
	
	NoticeVO getNoticeView(int NB_Num);
	void NoticeviewsUpdate(int NB_Num);
}
