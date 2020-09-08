package com.project.travel.service;

import java.util.List;
import com.project.travel.vo.NoticeVO;

public interface NoticeService {
	List getNoticeList(int noticestartList);

	int NoticeWrite(NoticeVO noticevo);

	NoticeVO getNoticeView(int NB_Num);

	void NoticeviewsUpdate(int NB_Num);

	int NoticeUpdate(NoticeVO noticevo);

	int NoticeDelete(int NB_Num);

	int getNoticeListCnt();
}
