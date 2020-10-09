package com.project.travel.service;

import java.util.List;

import com.project.travel.vo.FestivalImgVO;
import com.project.travel.vo.NoticeVO;

public interface MainService {
	// top 배너에 넣을 이미지 찾기
	public List<FestivalImgVO> topBanner() throws Exception;
	
	// bottom 배너에 넣을 이미지 찾기
	public List<FestivalImgVO> bottomBanner() throws Exception;
	
	// 공지사항 목록 조회
	public List<NoticeVO> nbList() throws Exception;
}