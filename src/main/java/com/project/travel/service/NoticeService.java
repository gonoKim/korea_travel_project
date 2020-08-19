package com.project.travel.service;

import java.util.List;
import com.project.travel.vo.NoticeVO;

public interface NoticeService {
	List<NoticeVO> getNoticeList();
	int NoticeWrite(NoticeVO noticevo);
}
